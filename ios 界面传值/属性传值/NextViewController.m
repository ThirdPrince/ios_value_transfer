//
//  NextViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/9.
//

#import "NextViewController.h"

@interface NextViewController ()
@property(nonatomic,strong)UITextField* textField;
@property(nonatomic,strong)UIButton* btn ;

@end

@implementation NextViewController


- (UITextField*)textField{
    if(!_textField){
        _textField = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _textField.borderStyle = UITextBorderStyleLine;
        _textField.text = _str;
    }
    return _textField;
}

-(UIButton*)btn{
    if(!_btn){
        _btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 40)];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"跳转回页面！" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _btn.titleLabel.font = [UIFont systemFontOfSize:20];
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _btn;
}
-(void)btnClick{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textField];
    [self.view addSubview:self.btn];
}



@end
