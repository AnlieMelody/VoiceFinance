//
//  VoiceFinanceFirstViewController.m
//  VoiceFinance
//
//  Created by kingmed on 14-1-10.
//  Copyright (c) 2014年 VoiceFinance. All rights reserved.
//

#import "VoiceFinanceFirstViewController.h"
#import "VoiceInputView.h"
@interface VoiceFinanceFirstViewController ()

@end

@implementation VoiceFinanceFirstViewController{
    VoiceInputView *voiceInputView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //创建navbar
    UINavigationBar *nav = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 64)];
    //创建navbaritem
    UINavigationItem *NavTitle = [[UINavigationItem alloc] initWithTitle:@"记录账单"];
    [nav pushNavigationItem:NavTitle animated:YES];
    [self.view addSubview:nav];
    //创建barbutton 创建系统样式的
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(voiceBtn:)];
    //设置barbutton
    NavTitle.rightBarButtonItem = item;
    [nav setItems:[NSArray arrayWithObject:NavTitle]];
    
    if (IS_IOS_7) {
        [nav setBarTintColor:[UIColor colorWithRed:213.0f/255.0f green:130.0f/255.0f blue:101.0f/255.0f alpha:1.0f]];
    }else{
        [nav setTintColor:[UIColor colorWithRed:213.0f/255.0f green:130.0f/255.0f blue:101.0f/255.0f alpha:1.0f]];
    }

//    UIColor *bgColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"bg"]];
//
//    [self.view setBackgroundColor:bgColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)voiceBtn:(id)sender {
    if (voiceInputView !=nil)
    {
        [voiceInputView show];
        return;
    }
    voiceInputView = [[VoiceInputView alloc] init];
    voiceInputView.delegate = self;
    [self.view addSubview:voiceInputView];
    [voiceInputView show];

}

- (void) voiceInputBeginRequest{
    
}

- (void)voiceInputDidFinished:(NSString *)str{
 
   NSLog(@"=========%@", str);
    self.descriptionText.text = str;

}

- (void) voiceInputDidFailure:(NSString *)str{
    
}
@end
