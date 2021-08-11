//
//  DelegateNextViewController.h
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import <UIKit/UIKit.h>

//委托方创建一个协议
@protocol pathValue <NSObject>
//定义一个方法
- (void)passValue:(NSString*)str;

@end
@interface DelegateNextViewController : UIViewController
@property(nonatomic,strong)NSString* sr;

//定义一个持有协议的id 指针
@property(weak)id<pathValue>delegate;
@end


