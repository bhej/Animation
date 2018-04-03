//
//  ViewController.m
//  IOSDay13_AnimationApp
//
//  Created by Student P_10 on 22/03/18.
//  Copyright © 2018 Student P_10. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animateBall:(UIButton *)sender
{
    switch (sender.tag)
    {
        case 101:
            [self animateLeftUp];
            break;
        case 102:
            [self animateUp];
            break;
            
        case 103:
            [self animateRightUp];
            break;
            
        case 104:
            [self animateLeft];
            break;
        case 105:
            [self animateCenter];
            break;
        case 106:
            [self animateRight];
            break;
        case 107:
            [self animateLeftDown];
            break;
        case 108:
            [self animateDown];
            break;
        case 109:
            [self animateRightDown];
            break;
        default:
            break;
    }
}

-(void)animateCenter
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
     ^{
        /* self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x+307, self.imgBall.frame.origin.y+145, self.imgBall.frame.size.width, self.imgBall.frame.size.height);*/
         self.imgBall.center=self.view.center;
     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Center animation Completed");
     }];
}

-(void)animateUp
{
    
    if(self.imgBall.frame.origin.x >0 && self.imgBall.frame.origin.y-100>0)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
         ^{
             self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x, self.imgBall.frame.origin.y-100, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
         }
                         completion:^(BOOL finished)
         {
             NSLog(@"Up animation Completed");
         }];
        
    }
    else
    {
        NSLog(@"Minus Value Came!!!");
    }
    
}

-(void)animateDown
{
    
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
         ^{
             self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x, self.imgBall.frame.origin.y+100, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
         }
                         completion:^(BOOL finished)
         {
             NSLog(@"Up animation Completed");
         }];
    
    
    
    
}

-(void)animateLeft
{
    if(self.imgBall.frame.origin.x >0 && self.imgBall.frame.origin.y>0)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
         ^{
             self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x-100, self.imgBall.frame.origin.y, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
         }
                         completion:^(BOOL finished)
         {
             NSLog(@"Left animation Completed");
         }];
    }
    else
    {
        NSLog(@"Minus Value Came!!!");
    }

    
}

-(void)animateRight
{
    if(self.imgBall.frame.origin.x+100<375 && self.imgBall.frame.origin.y<439)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
         ^{
             self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x+100, self.imgBall.frame.origin.y, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
         }
                         completion:^(BOOL finished)
         {
             NSLog(@"Right animation Completed");
         }];
    }
    else
    {
        NSLog(@"Minus Value Came!!!");
    }
    
}

-(void)animateLeftUp
{
    if(self.imgBall.frame.origin.x-100 >0 && self.imgBall.frame.origin.y-100>0)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
         ^{
             self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x-50, self.imgBall.frame.origin.y-50, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
         }
                         completion:^(BOOL finished)
         {
             NSLog(@"LeftUp animation Completed");
         }];
    }
    else
    {
        NSLog(@"Minus Value Came!!!");
    }
    
}
-(void)animateRightUp
{
    if(self.imgBall.frame.origin.x+100 >375 && self.imgBall.frame.origin.y-100>0)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
         ^{
             self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x+50, self.imgBall.frame.origin.y-50, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
         }
                         completion:^(BOOL finished)
         {
             NSLog(@"RightUp animation Completed");
         }];
    }
    else
    {
        NSLog(@"Minus Value Came!!!");
    }
    
}
-(void)animateLeftDown
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
     ^{
         self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x-50, self.imgBall.frame.origin.y+50, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Up animation Completed");
     }];
}
-(void)animateRightDown
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:
     ^{
         self.imgBall.frame=CGRectMake(self.imgBall.frame.origin.x+50, self.imgBall.frame.origin.y+50, self.imgBall.frame.size.width, self.imgBall.frame.size.height);
     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Up animation Completed");
     }];
}
@end
