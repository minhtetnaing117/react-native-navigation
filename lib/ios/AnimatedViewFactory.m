#import "AnimatedViewFactory.h"
#import "AnimatedImageView.h"
#import "AnimatedSnapshotView.h"
#import "AnimatedTextView.h"

@implementation AnimatedViewFactory

+ (RNNAnimatedView *)createFromElement:(RNNElementView *)element toElement:(RNNElementView *)toElement frame:(CGRect)frame endFrame:(CGRect)endFrame alpha:(CGFloat)alpha endAlpha:(CGFloat)endAlpha isSharedElement:(BOOL)isSharedElement {
    switch (element.viewType) {
        case ViewTypeImage:
            return [[AnimatedImageView alloc] initElement:element toElement:toElement frame:frame endFrame:endFrame alpha:alpha endAlpha:endAlpha isSharedElement:isSharedElement];
        case ViewTypeText:
            return [[AnimatedTextView alloc] initElement:element toElement:toElement frame:frame endFrame:endFrame alpha:alpha endAlpha:endAlpha isSharedElement:isSharedElement];
        default:
            return [[AnimatedSnapshotView alloc] initElement:element toElement:toElement frame:frame endFrame:endFrame alpha:alpha endAlpha:endAlpha isSharedElement:isSharedElement];
    }
    
    return [[AnimatedSnapshotView alloc] initElement:element toElement:toElement frame:frame endFrame:endFrame alpha:alpha endAlpha:endAlpha isSharedElement:isSharedElement];
}

@end