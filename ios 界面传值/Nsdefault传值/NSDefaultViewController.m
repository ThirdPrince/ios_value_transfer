//
//  NSDefaultViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/11.
//

#import "NSDefaultViewController.h"
#import "NsdefaultNextViewController.h"
@interface NSDefaultViewController ()
@property(nonatomic,strong)UILabel* uiLabel;
@property(nonatomic,strong)UIButton* uiButton;

@end

@implementation NSDefaultViewController



-(UILabel*)uiLabel{
    if(!_uiLabel){
        _uiLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _uiLabel.text = @"NSdefaultUser传值";
    }
    return _uiLabel;
}

-(UIButton*)uiButton{
    if(!_uiButton){
        _uiButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
        _uiButton.backgroundColor = [UIColor redColor];
        [_uiButton setTitle:@"跳转到页面2" forState:UIControlStateNormal];
        [_uiButton addTarget:self action:@selector(onBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _uiButton;
}
- (void)onBtnClick{
    
    NsdefaultNextViewController* defaultNext = [[NsdefaultNextViewController alloc]init];
    [[NSUserDefaults standardUserDefaults]setObject:_uiLabel.text forKey:@"intent"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    [self.navigationController pushViewController:defaultNext animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.uiLabel];
    [self.view addSubview:self.uiButton];
}

- (void)viewWillAppear:(BOOL)animated{
    NSString* intent = [[NSUserDefaults standardUserDefaults]stringForKey:@"intent"];
    if(intent != nil){
        _uiLabel.text = intent;
    }
}

@end
