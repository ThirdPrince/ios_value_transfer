//
//  NsdefaultNextViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import "NsdefaultNextViewController.h"

@interface NsdefaultNextViewController ()
@property(nonatomic,strong)UITextField* uiTextField;
@property(nonatomic,strong)UIButton* uiButton;
@end

@implementation NsdefaultNextViewController

- (UITextField*)uiTextField{
    if(!_uiTextField){
        _uiTextField = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _uiTextField.borderStyle = UITextBorderStyleLine;
        _uiTextField.text = [[NSUserDefaults standardUserDefaults]stringForKey:@"intent"];
    }
    return _uiTextField;
}

- (UIButton*)uiButton{
    if(!_uiButton){
        _uiButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 40)];
        [_uiButton setTitle:@"返回" forState:UIControlStateNormal];
        _uiButton.backgroundColor = [UIColor redColor];
        [_uiButton addTarget:self action:@selector(onBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    return _uiButton;
}
- (void)onBtnClick{
    
    [[NSUserDefaults standardUserDefaults]setObject:_uiTextField.text forKey:@"intent"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    [self.navigationController popViewControllerAnimated:YES];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiTextField];
    [self.view addSubview:self.uiButton];
}



@end
