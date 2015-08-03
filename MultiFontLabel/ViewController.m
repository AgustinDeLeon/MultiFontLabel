//
//  ViewController.m
//  MultiFontLabel
//
//  Created by Agustin De Leon on 1/8/15.
//  Copyright (c) 2015 Agustin De Leon. All rights reserved.
//

#import "ViewController.h"
#import "LI_MultipleFontLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSArray *fonts = @[[UIFont fontWithName:@"Avenir-HeavyOblique" size:20],
                       [UIFont fontWithName:@"Futura-MediumItalic" size:15],
                       [UIFont fontWithName:@"Avenir-HeavyOblique" size:30]];
    
    NSArray *colors = @[[UIColor redColor], [UIColor blueColor],[UIColor redColor]];

    NSArray *texts = @[@"mira ",@"como", @" andas?"];
    
    LI_MultipleFontLabel *label = [[LI_MultipleFontLabel alloc] initWithFonts:fonts withTexts:texts withColors:colors];
    label.frame = CGRectMake(10, 20, 300, 50);
    [self.view addSubview:label];
    
    LI_MultipleFontLabel *label2 = [[LI_MultipleFontLabel alloc] initWithFonts:fonts withTexts:texts];
    label2.frame = CGRectMake(10, 70, 300, 100);
    [self.view addSubview:label2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
