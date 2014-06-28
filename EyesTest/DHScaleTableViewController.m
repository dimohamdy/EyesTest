//
//  DHScaleTableViewController.m
//  EyesTest
//
//  Created by binaryboy on 6/27/14.
//  Copyright (c) 2014 AhmedHamdy. All rights reserved.
//

#import "DHScaleTableViewController.h"

@interface DHScaleTableViewController ()

@end

@implementation DHScaleTableViewController
@synthesize webview;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"Scale" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [webview loadHTMLString:htmlString baseURL:nil];
}


@end
