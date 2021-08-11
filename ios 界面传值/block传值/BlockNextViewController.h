//
//  BlockNextViewController.h
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import <UIKit/UIKit.h>


@interface BlockNextViewController : UIViewController
@property(copy)void (^block)(NSString*);
@end


