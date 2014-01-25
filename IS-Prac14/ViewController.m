//
//  ViewController.m
//  IS-Prac14
//
//  Created by Chida Mitsuhiro on 14/01/25.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *sq;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *singleTapSq;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *doubleTapSq;

- (IBAction)tapSq:(UITapGestureRecognizer *)sender;
- (IBAction)dTapSq:(UITapGestureRecognizer *)sender;
- (IBAction)routationSq:(UIRotationGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_singleTapSq requireGestureRecognizerToFail:_doubleTapSq];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapSq:(UITapGestureRecognizer *)sender
{
    sender.view.center = CGPointMake(sender.view.center.x + 10, sender.view.center.y);
}

- (IBAction)dTapSq:(UITapGestureRecognizer *)sender
{
    if (CGAffineTransformIsIdentity(sender.view.transform)) {
        sender.view.transform = CGAffineTransformMakeScale(3.0, 3.0);
    } else {
        sender.view.transform = CGAffineTransformIdentity;
        sender.view.center = self.view.center;
    }
}

- (IBAction)routationSq:(UIRotationGestureRecognizer *)sender
{
    _sq.transform = CGAffineTransformMakeRotation(sender.rotation);
}

@end
