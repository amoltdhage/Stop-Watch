//
//  ViewController.h
//  ADStopWatch
//
//  Created by Student P_03 on 02/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *label_timer;

@property (weak, nonatomic) IBOutlet UIButton *button_play;

@property (weak, nonatomic) IBOutlet UIButton *button_pause;

@property (weak, nonatomic) IBOutlet UIButton *button_reset;


- (IBAction)button_play:(id)sender;

- (IBAction)button_pause:(id)sender;
- (IBAction)button_reset:(id)sender;

@property (weak,nonatomic)IBOutlet NSLayoutConstraint *constraint_label_top;



@end

