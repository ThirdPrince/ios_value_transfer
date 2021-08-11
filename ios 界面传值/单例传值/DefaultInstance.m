//
//  DefaultInstance.m
//  ios 界面传值
//
//  Created by dang on 2021/8/10.
//

#import "DefaultInstance.h"

@implementation DefaultInstance
//通过类方法创建单例对象
+ (instancetype)sharedInstance{
    
    static DefaultInstance * sharedVC = nil;
    if(sharedVC == nil){
        sharedVC = [[DefaultInstance alloc]init];
    }
    return sharedVC;
}
@end
