//
//  VoiceFinanceFirstViewController.h
//  VoiceFinance
//
//  Created by kingmed on 14-1-10.
//  Copyright (c) 2014年 VoiceFinance. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VoiceInputView.h"
@interface VoiceFinanceFirstViewController : UIViewController<VoiceInputDelegate>{
    
}
@property (weak, nonatomic) IBOutlet UITextField *descriptionText;

- (IBAction)voiceBtn:(id)sender;
@end
