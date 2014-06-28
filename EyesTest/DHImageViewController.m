//
//  DHImageViewController.m
//  EyesTest
//
//  Created by binaryboy on 6/27/14.
//  Copyright (c) 2014 AhmedHamdy. All rights reserved.
//

#import "DHImageViewController.h"

@interface DHImageViewController ()

@end

@implementation DHImageViewController{
    NSArray*images;
}
@synthesize imageView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Path to the plist (in the application bundle)
    NSString *path = [[NSBundle mainBundle] pathForResource:
                      @"Tab" ofType:@"plist"];
    
    // Build the array from the plist
    NSDictionary *tabDic = [[NSDictionary alloc] initWithContentsOfFile:path];
    images= [tabDic  objectForKey:@"Images"];

    
    
    // Build the array from the plist
    NSUInteger r = arc4random_uniform(6);
    NSString*imageName= [images objectAtIndex:r];
    imageView.image=[UIImage imageNamed:imageName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
