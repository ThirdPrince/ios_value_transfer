//
//  BlockViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import "BlockViewController.h"
#import "BlockNextViewController.h"
@interface BlockViewController ()
@property(nonatomic,strong)UILabel* uiLabel;
@property(nonatomic,strong)UIButton* uiBtn;

@end

@implementation BlockViewController

-(UILabel*)uiLabel{
    if(!_uiLabel){
        _uiLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _uiLabel.text = @"block 传值";
    }
    return _uiLabel;
}

-(UIButton*)uiBtn{
    if(!_uiBtn){
        _uiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
        [_uiBtn setTitle:@"下一个页面" forState:UIControlStateNormal];
        _uiBtn.backgroundColor = [UIColor redColor];
        [_uiBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _uiBtn;
}
-(void)btnClick{
    BlockNextViewController* blockNextVc = [[BlockNextViewController alloc]init];
    blockNextVc.block = ^(NSString* str){
        self->_uiLabel.text = str;
    };
    [self.navigationController pushViewController:blockNextVc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiLabel];
    [self.view addSubview:self.uiBtn];

}

@end
