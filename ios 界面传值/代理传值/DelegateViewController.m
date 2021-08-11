//
//  DelegateViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import "DelegateViewController.h"
#import "DelegateNextViewController.h"
@interface DelegateViewController ()<pathValue>
@property(nonatomic,strong)UILabel* uiLabel;
@property(nonatomic,strong)UIButton* uiButtton;

@end

@implementation DelegateViewController

-(UILabel*)uiLabel{
    if(!_uiLabel){
        _uiLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _uiLabel.text = @"代理传值";
    }
    return  _uiLabel;
}
-(UIButton*)uiButtton{
    if(!_uiButtton){
        _uiButtton = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
        _uiButtton.backgroundColor = [UIColor redColor];
        [_uiButtton setTitle:@"下一个页面" forState:UIControlStateNormal];
        _uiButtton.backgroundColor = [UIColor redColor];
        [_uiButtton addTarget:self action:@selector(onBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    return _uiButtton;
}

-(void)onBtnClick{
    DelegateNextViewController* delegateNextVc = [[DelegateNextViewController alloc]init];
    delegateNextVc.delegate = self;
    [self.navigationController pushViewController:delegateNextVc animated:YES];
}
-(void)passValue:(NSString *)str{
    _uiLabel.text = str;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiLabel];
    [self.view addSubview:self.uiButtton];
    
}



@end
