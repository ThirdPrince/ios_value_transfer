//
//  DefaultInstanceViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/10.
//

#import "DefaultInstanceViewController.h"
#import "DefaultNextViewController.h"
#import "DefaultInstance.h"

@interface DefaultInstanceViewController ()
@property(nonatomic,strong)UILabel* uiLabel;
@property(nonatomic,strong)UIButton* uiButton;
@end

@implementation DefaultInstanceViewController


-(UILabel*)uiLabel{
    if(!_uiLabel){
        _uiLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200,40)];
        _uiLabel.backgroundColor = [UIColor blackColor];
        _uiLabel.textColor = [UIColor whiteColor];
        _uiLabel.text = @"单例传值";
        _uiLabel.textAlignment = NSTextAlignmentCenter;
        _uiLabel.font = [UIFont systemFontOfSize:20];
    }
    return _uiLabel;
}
- (UIButton*)uiButton{
    if(!_uiButton){
        _uiButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
        _uiButton.backgroundColor = [UIColor redColor];
        [_uiButton setTitle:@"跳转到页面2" forState:UIControlStateNormal];
        [_uiButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_uiButton addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
       
    }
    return _uiButton;
}
- (void)btnClick{
    DefaultNextViewController* nextVc = [[DefaultNextViewController alloc]init];
    [DefaultInstance sharedInstance].str = @"这是单例传值";
    [ self.navigationController pushViewController:nextVc animated:YES];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiLabel];
    [self.view addSubview:self.uiButton];
}
- (void)viewWillAppear:(BOOL)animated{
    NSString* defaultValue = [DefaultInstance sharedInstance].str;
    if(defaultValue != nil){
        _uiLabel.text = [DefaultInstance sharedInstance].str;
    }
}
@end
