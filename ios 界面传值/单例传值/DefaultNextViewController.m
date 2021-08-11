//
//  DefaultNextViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/10.
//

#import "DefaultNextViewController.h"
#import "DefaultInstance.h"
@interface DefaultNextViewController ()
@property(nonatomic,strong)UITextField* uiTextField;
@property(nonatomic,strong)UIButton* uiButton;

@end


@implementation DefaultNextViewController

-(UITextField*)uiTextField{
    if(!_uiTextField){
        _uiTextField = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _uiTextField.borderStyle = UITextBorderStyleLine;
        _uiTextField.text = [DefaultInstance sharedInstance].str;
        
    }
    return _uiTextField;
}


-(UIButton*)uiButton{
    if(!_uiButton){
        _uiButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
        [_uiButton setTitle:@"跳转到页面1" forState:UIControlStateNormal];
        _uiButton.backgroundColor = [UIColor redColor];
        [_uiButton addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    }
    return _uiButton;
}
-(void)btnClick{
    [DefaultInstance sharedInstance].str = _uiTextField.text;
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiTextField];
    [self.view addSubview:self.uiButton];
}



@end
