//
//  DefaultInstance.h
//  ios 界面传值
// 单例传值
//
//  Created by dang on 2021/8/10.
//

#import <Foundation/Foundation.h>



@interface DefaultInstance : NSObject
@property(nonatomic,strong)NSString* str;
+ (instancetype)sharedInstance;
@end


