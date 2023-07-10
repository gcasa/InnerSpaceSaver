//
//  InnerSpaceSaverView.m
//  InnerSpaceSaver
//
//  Created by Gregory John Casamento on 7/9/23.
//

#import "InnerSpaceSaverView.h"
#import "PolyhedraView.h"

@implementation InnerSpaceSaverView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        NSRect r = NSMakeRect(0.0, 0.0, frame.size.width, frame.size.height);
        [self setAnimationTimeInterval:1/30.0];
        _saverView = [[PolyhedraView alloc] initWithFrame: r];
        [self addSubview: _saverView];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    [_saverView oneStep];
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
