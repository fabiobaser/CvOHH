//
//  ViewController.m
//  CvO HH
//
//  Created by MacPro on 12.05.14.
//  Copyright (c) 2014 FabioBaser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    
    NSURL *urlvertretung = [NSURL URLWithString:@"http://www.cvo-hamburg.de/vertretungsplan"];
    NSURLRequest *requestURLvertretung = [NSURLRequest requestWithURL:urlvertretung];
    [vplan loadRequest:requestURLvertretung];
    vplan.scalesPageToFit = YES;
    
    NSURL *urltermine = [NSURL URLWithString:@"http://www.cvo-hamburg.de/uploads/media/Termine_2013_14_2_Hj_Homepage_Newsletter_Version_2.pdf"];
    NSURLRequest *requestURLtermine = [NSURLRequest requestWithURL:urltermine];
    [termine loadRequest:requestURLtermine];
    termine.scalesPageToFit = NO;
    
    NSURL *urlessen = [NSURL URLWithString:@"http://www.cvomensa.blogspot.de"];
    NSURLRequest *requestURLessen = [NSURLRequest requestWithURL:urlessen];
    [essen loadRequest:requestURLessen];
    essen.scalesPageToFit = YES;
    
    NSURL *urlteam = [NSURL URLWithString:@"http://www.dasteamcvo.blogspot.de"];
    NSURLRequest *requestURLteam = [NSURLRequest requestWithURL:urlteam];
    [dasteam loadRequest:requestURLteam];
    [super viewDidLoad];
    dasteam.scalesPageToFit = YES;
    
    NSURL *urlsite = [NSURL URLWithString:@"http://www.cvo-hamburg.de"];
    NSURLRequest *requestURLsite = [NSURLRequest requestWithURL:urlsite];
    [site loadRequest:requestURLsite];
    site.scalesPageToFit = YES;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)vplan:(id)sender {
    
    //Object active and opaque
    vplan.alpha = 1;
    
    //Objects transparent
    termine.alpha = 0;
    dasteam.alpha = 0;
    site.alpha = 0;
    essen.alpha = 0;
    
    //Side parameters
    side.alpha = 0;
    side1.alpha = 1;
    side2.alpha = 0;
    side3.alpha = 0;
    side4.alpha = 0;
    side5.alpha = 0;
    
}

-(IBAction)termine:(id)sender {
    //Object active and opaque
    termine.alpha = 1;
    
    //Objects transparent
    vplan.alpha = 0;
    dasteam.alpha = 0;
    site.alpha = 0;
    essen.alpha = 0;
    
    //Side parameters
    side.alpha = 0;
    side1.alpha = 0;
    side2.alpha = 1;
    side3.alpha = 0;
    side4.alpha = 0;
    side5.alpha = 0;
}

-(IBAction)essen:(id)sender {
    //Object active and opaque
    essen.alpha = 1;
    
    //Objects transparent
    termine.alpha = 0;
    vplan.alpha = 0;
    dasteam.alpha = 0;
    site.alpha = 0;
    
    //Side parameters
    side.alpha = 0;
    side1.alpha = 0;
    side2.alpha = 0;
    side3.alpha = 1;
    side4.alpha = 0;
    side5.alpha = 0;

}

-(IBAction)dasteam:(id)sender {
    //Object active and opaque
    dasteam.alpha = 1;
    
    //Objects transparent
    termine.alpha = 0;
    vplan.alpha = 0;
    essen.alpha = 0;
    site.alpha = 0;
    
    //Side parameters
    side.alpha = 0;
    side1.alpha = 0;
    side2.alpha = 0;
    side3.alpha = 0;
    side4.alpha = 1;
    side5.alpha = 0;

}

-(IBAction)site:(id)sender {
    //Object active and opaque
    site.alpha = 1;
    
    //Objects transparent
    termine.alpha = 0;
    vplan.alpha = 0;
    essen.alpha = 0;
    dasteam.alpha = 0;
    
    //Side parameters
    side.alpha = 0;
    side1.alpha = 0;
    side2.alpha = 0;
    side3.alpha = 0;
    side4.alpha = 0;
    side5.alpha = 1;
    
}


/*
 -(void)swipeleft:(UISwipeGestureRecognizer*)sender {
 [UIView animateWithDuration:0.5 animations:^{
 [swipeView setFrame:CGRectMake(100, 0, 320, 640)];
 [self.view endEditing:YES];
 
 
 }];
 }
 
 -(void)swipeRight:(UISwipeGestureRecognizer*)sender {
 [UIView animateWithDuration:0.5 animations:^{
 [swipeView  setFrame:CGRectMake(320, 0, 320, 640)];
 
 
 }];
 }
 */
-(IBAction)in:(id)sender {
    button_dasteam.enabled = NO;
    button_essen.enabled = NO;
    button_dasteam.enabled = NO;
    button_site.enabled = NO;
    button_termine.enabled = NO;
    button_vplan.enabled = NO;
    
    button_dasteam.alpha = 0;
    button_essen.alpha = 0;
    button_dasteam.alpha = 0;
    button_site.alpha = 0;
    button_termine.alpha = 0;
    button_vplan.alpha = 0;
    
    side.alpha = 0;
    side1.alpha = 0;
    side2.alpha = 0;
    side3.alpha = 0;
    side4.alpha = 0;
    side5.alpha = 0;
    out.alpha = 1;
    out.enabled = YES;
    
    
    
    [vplan  setFrame:CGRectMake(0, 0, 320, 568)];
        

}


-(IBAction)out:(id)sender {
    button_dasteam.enabled = YES;
    button_essen.enabled = YES;
    button_dasteam.enabled = YES;
    button_site.enabled = YES;
    button_termine.enabled = YES;
    button_vplan.enabled = YES;
    
    button_dasteam.alpha = 1;
    button_essen.alpha = 1;
    button_dasteam.alpha = 1;
    button_site.alpha = 1;
    button_termine.alpha = 1;
    button_vplan.alpha = 1;
    
    side.alpha = 1;
    side1.alpha = 1;
    side2.alpha = 1;
    side3.alpha = 1;
    side4.alpha = 1;
    side5.alpha = 1;
    out.alpha = 0;
    out.enabled = NO;
    
    
    
    [vplan  setFrame:CGRectMake(79, 0, 239, 568)];
    
    
}



@end
