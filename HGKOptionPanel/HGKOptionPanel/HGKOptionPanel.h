/*
 * Copyright        : Copyright (c) 2011 Hegaka
 * Author           : Jon Arrien
 * Twitter          : @jonarrien
 * All right reserved
 */

#import <UIKit/UIKit.h>

#define kDefaultMargin 10


@interface HGKOptionPanel : UIView {

    UIButton *btnShowHide;
    Boolean isExpanded;

}

@property (nonatomic, retain) IBOutlet UIButton *btnShowHide;
@property Boolean isExpanded;
-(IBAction) controlPanelShowHide:(id)sender;


@end
