//
//  ViewController.m
//  ios 界面传值 属性传值
//
//  Created by dang on 2021/8/9.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton *btn;

@end

@implementation ViewController

-(UILabel *)label{
    if(_label == nil){
        _label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _label.backgroundColor = [UIColor blackColor];
        _label.textColor = [UIColor whiteColor];
        _label.text = @"属性传值";
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:20];
        
    }
    return _label;
}

-(UIButton *)btn{
    if(_btn == nil){
        _btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 40)];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"跳转至页面2" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnClick) forControlEvents: UIControlEventTouchUpInside];
               
    }
    
    return  _btn;
}

- (void)btnClick{
    NextViewController* nextVc = [[NextViewController alloc]init];
    nextVc.str = @"这是属性传值";
//    [self.navigationController pushViewController:nextVc animated:YES];
    [ self presentViewController:nextVc animated:YES completion:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.label];
    [self.view addSubview:self.btn];
    self.title = @"属性传值";
}


@end
