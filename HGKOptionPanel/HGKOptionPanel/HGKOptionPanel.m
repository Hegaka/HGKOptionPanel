/*
 * Copyright        : Copyright (c) 2011 Hegaka
 * Author           : Jon Arrien
 * Twitter          : @jonarrien
 * All right reserved
 */

#import "HGKOptionPanel.h"

#import <QuartzCore/QuartzCore.h>

@implementation HGKOptionPanel

@synthesize btnShowHide,isExpanded;



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    isExpanded = YES;
}



-(IBAction) controlPanelShowHide:(id)sender
{

    CGRect frame = self.frame;

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.7];
    if (!self.isExpanded)
    {
        self.isExpanded = YES;

        frame.origin.y -=65;
        self.frame = frame;

        [self.btnShowHide setImage:[UIImage imageNamed:@"iconCollapse.png"] forState:UIControlStateNormal];
    } else {
        self.isExpanded = NO;

        frame.origin.y +=65;
        self.frame = frame;

        [self.btnShowHide setImage:[UIImage imageNamed:@"iconExpand.png"] forState:UIControlStateNormal];
    }
    [UIView commitAnimations];
    if (self.isExpanded)
        [self.btnShowHide setImage:[UIImage imageNamed:@"iconCollapse.png"] forState:UIControlStateNormal];
    else
        [self.btnShowHide setImage:[UIImage imageNamed:@"iconExpand.png"] forState:UIControlStateNormal];

}

- (void) dealloc{
    [super dealloc];
    [btnShowHide release], btnShowHide = nil;
    [isExpanded release], isExpanded = nil;
}

@end
