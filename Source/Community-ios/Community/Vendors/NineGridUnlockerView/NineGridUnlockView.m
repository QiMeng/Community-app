//
//  NineGridUnlockView.m
//  TestDrawLine
//
//  Created by wang  chao on 12-5-11.
//  Copyright (c) 2012年 bupt. All rights reserved.
//

#import "NineGridUnlockView.h"

@interface NineGridUnlockView (Private)

- (CGPoint)_centerOfButton:(NSInteger)index;
- (NSInteger)_nearButton:(CGPoint)point;
- (void)_drawLines:(BOOL)withlast;
- (NSInteger)_centerIndexBetween:(NSInteger)p1 and:(NSInteger)p2;
- (BOOL)_addPath:(NSInteger)index;
- (BOOL)_checked:(NSInteger)index;
- (void)_handlePoint:(CGPoint)point;
- (void)_initView;

@end



@implementation NineGridUnlockView

@synthesize imageView = _imageView;
@synthesize checkImage = _checkImage;
@synthesize uncheckImage = _uncheckImage;
@synthesize buttons = _buttons;
@synthesize paths = _paths;
@synthesize strokeColor = _strokeColor;
@synthesize delegate = _delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _initView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self _initView];
    }
    return self;
}

- (NSInteger)_centerIndexBetween:(NSInteger)p1 and:(NSInteger)p2{
    NSInteger p1x = p1%3;
    NSInteger p1y = p1/3;
    NSInteger p2x = p2%3;
    NSInteger p2y = p2/3;
    NSInteger retx = -1;
    NSInteger rety = -1;
    if ((p1x + p2x)%2 == 0) {
        retx = (p1x + p2x)/2;
    }
    if ((p1y + p2y)%2 == 0) {
        rety = (p1y + p2y)/2;
    }
    if (retx !=-1 && rety != -1) {
        return rety*3 + retx;
    }
    return -1;
}

- (BOOL)_addPath:(NSInteger)index{
    UIImageView* bt = [_buttons objectAtIndex:index];
    if (![self _checked:index]) {
        [self.paths addObject:[NSNumber numberWithInt:index]];
        bt.image = _checkImage;
        return YES;
    }
    return NO;
}

- (CGPoint)_centerOfButton:(NSInteger)index{
    CGFloat gridWidth = self.frame.size.width/3;
    NSInteger x = index%3;
    NSInteger y = index/3;
    CGPoint p = CGPointMake(gridWidth/2 + x*gridWidth, gridWidth/2 + y*gridWidth);
    return p;
}

- (NSInteger)_nearButton:(CGPoint)point{
    NSInteger xpos = (NSInteger)point.x;
    NSInteger ypos = (NSInteger)point.y;
    NSInteger gridWidth = (NSInteger)self.frame.size.width/3;
    NSInteger x = xpos/gridWidth;
    NSInteger y = ypos/gridWidth;
    if (x > 2 || y > 2 || x< 0 || y<0) {
        return -1;
    }
    NSInteger index = y*3 + x;
    CGPoint center = [self _centerOfButton:index];
    CGFloat lx = point.x - center.x;
    CGFloat ly = point.y - center.y;
    CGFloat inWidth = _uncheckImage.size.width/2;
    CGFloat inHeigh = _uncheckImage.size.height/2;
    if (lx >inWidth || lx < -inWidth) {
        return -1;
    }
    
    if (ly > inHeigh || ly < -inHeigh) {
        return -1;
    }
    return index;
}

- (void)_drawLines:(BOOL)withlast{
    UIGraphicsBeginImageContext(self.imageView.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, 5.0);
    CGContextSetAllowsAntialiasing(context, YES);
    CGContextSetStrokeColorWithColor(context, _strokeColor.CGColor);
    //CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextBeginPath(context);
    for (NSInteger i=0; i<[_paths count]; i++) {
        NSInteger index = [[_paths objectAtIndex:i] intValue];
        CGPoint p = [self _centerOfButton:index];
        if (i!=0) {
            CGContextAddLineToPoint(context, p.x, p.y);
        }
        CGContextMoveToPoint(context, p.x, p.y);
    }
    if (withlast) {
        CGContextAddLineToPoint(context, _currentPoint.x, _currentPoint.y);
    }
    CGContextStrokePath(context);
    self.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

- (BOOL)_checked:(NSInteger)index{
    UIImageView* bt = [_buttons objectAtIndex:index];
    if (bt.image == _checkImage) {
        return YES;
    }
    return NO;
}

- (void)_initView{
    if (!_checkImage) {
        self.checkImage = [UIImage imageNamed:@"safe_img_circle_hl"];
    }
    
    if (!_uncheckImage) {
        self.uncheckImage = [UIImage imageNamed:@"safe_img_circle_nor"];
    }
    if (!_strokeColor) {
        self.strokeColor = [UIColor redColor];
    }
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    self.buttons = [NSMutableArray arrayWithCapacity:9];
    for(NSInteger i=0;i<9;i++){
        UIImageView* btImageView = [[[UIImageView alloc] initWithImage:_uncheckImage] autorelease];
        btImageView.center = [self _centerOfButton:i];
        [self addSubview:btImageView];
        [_buttons addObject:btImageView];
    }
    
    [self addSubview:_imageView];
    [self resetView];
}

- (void)resetView{
    self.paths = [NSMutableArray arrayWithCapacity:9];
    for (UIImageView* button in _buttons) {
        button.image = _uncheckImage;
    }
    [self _drawLines:NO];
}

- (void)_handlePoint:(CGPoint)point{
    _currentPoint = point;
    NSInteger index = [self _nearButton:point];
    if (index != -1 && ![self _checked:index]) {
        NSInteger cindex = -1;
        if ([_paths count] > 0) {
            cindex = [self _centerIndexBetween:[[_paths lastObject] intValue] and:index];            
        }
        if (cindex != -1) {
            [self _addPath:cindex];
        }
        [self _addPath:index];
    }
    
    if ([_paths count] > 0) {
        [self _drawLines:YES];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self resetView];
    UITouch* touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    [self _handlePoint:p];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    [self _handlePoint:p];

}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    if ([self.paths count] > 0) {
        [self _drawLines:NO];
    }
    NSMutableArray* delegateArray = [NSMutableArray arrayWithCapacity:9];
    for (NSNumber* index in _paths) {
        [delegateArray addObject:index];
    }
    [_delegate unlockerView:self didFinished:delegateArray];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc{
    [_strokeColor release];
    [_imageView release];
    [_checkImage release];
    [_uncheckImage release];
    [_buttons release];
    [_paths release];
    [super dealloc];
}

@end
