//
//  BlockNextViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import "BlockNextViewController.h"

@interface BlockNextViewController ()
@property(nonatomic,strong)UITextField* uiTextField;
@property(nonatomic,strong)UIButton* uiBtn;
@end

@implementation BlockNextViewController

-(UITextField*)uiTextField{
    if(!_uiTextField){
        _uiTextField = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _uiTextField.borderStyle = UITextBorderStyleLine;
    }
    return  _uiTextField;
}

-(UIButton*)uiBtn{
    if(!_uiBtn){
        _uiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
        _uiBtn.backgroundColor = [UIColor redColor];
        [_uiBtn setTitle:@"block 反向传值" forState:UIControlStateNormal];
        [_uiBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _uiBtn;
}

-(void)btnClick{
    self.block(self.uiTextField.text);
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiTextField];
    [self.view addSubview:self.uiBtn];
}




@end
