//
//  ViewController.h
//  CvO HH
//
//  Created by MacPro on 12.05.14.
//  Copyright (c) 2014 FabioBaser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIImageView *side;
    IBOutlet UIImageView *side1;
    IBOutlet UIImageView *side2;
    IBOutlet UIImageView *side3;
    IBOutlet UIImageView *side4;
    IBOutlet UIImageView *side5;
    IBOutlet UIButton *out;
    
    IBOutlet UIButton *button_vplan;
    IBOutlet UIButton *button_termine;
    IBOutlet UIButton *button_essen;
    IBOutlet UIButton *button_dasteam;
    IBOutlet UIButton *button_site;
    
    IBOutlet UIButton *button_in;
    IBOutlet UIButton *button_out;
    
    IBOutlet UIWebView *vplan;
    IBOutlet UIWebView *termine;
    IBOutlet UIWebView *dasteam;
    IBOutlet UIWebView *site;
    IBOutlet UIWebView *essen;


    
}

-(IBAction)in:(id)sender;
-(IBAction)out:(id)sender;

-(IBAction)vplan:(id)sender;
-(IBAction)termine:(id)sender;
-(IBAction)dasteam:(id)sender;
-(IBAction)site:(id)sender;
-(IBAction)essen:(id)sender;

@end
