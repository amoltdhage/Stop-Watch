//
//  ViewController.m
//  ADStopWatch
//
//  Created by Student P_03 on 02/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)increase
  {
     NSString *valueInString = self.label_timer.text;
     double valueInDouble = valueInString.doubleValue;
     valueInDouble = valueInDouble + 0.1;
     self.label_timer.text = [NSString stringWithFormat:@"%0.1f",valueInDouble];
  }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button_play:(id)sender {
    
    UIButton *button = sender;
    NSLog(@"ENTRY : %ld",(long)button.tag);
    
    if (button.tag == 0)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:1
                 target:self selector:@selector(increase)
                  userInfo:nil repeats:YES];
        
        [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            self.constraint_label_top.constant = 0;}
            completion:^(BOOL finished)
        {
        }];
        
        button.tag = 1;
        }
    
    else
        {
         NSLog(@"Else Part Executed");
        }
    
         NSLog(@"EXIT : %ld",(long)button.tag);
     }


- (IBAction)button_pause:(id)sender
{
    
    self.button_play.tag=0;
    [timer invalidate];
}


- (IBAction)button_reset:(id)sender {
    
    self.button_play.tag=0;
    NSLog(@"%ld",(long)self.button_play.tag);
    
    [timer invalidate];
    
    timer=nil;
    
    self.label_timer.text=@"0.0";
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.constraint_label_top.constant =-300;
        
    } completion:^(BOOL finished) {
    }];
    
}
@end
