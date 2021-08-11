//
//  ExampleListViewController.m
//  ios 界面传值
//
//  Created by dang on 2021/8/10.
//

#import "ExampleListViewController.h"
#import "ViewController.h"
#import "DefaultInstanceViewController.h"
#import "NSDefaultViewController.h"
#import "DelegateViewController.h"
#import "BlockViewController.h"
#import "NotificationViewController.h"
static NSString * DemoCellId = @"DemoCellId";
@interface ExampleListViewController ()

@end

@implementation ExampleListViewController

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        self.title = @"传值demo";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:DemoCellId];
   
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  6;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:DemoCellId forIndexPath:indexPath];
    cell.textLabel.numberOfLines = 2;
    cell.textLabel.font = [UIFont systemFontOfSize:16.0];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if (indexPath.row == 0) {
        cell.textLabel.text = @"属性传值";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"单例传值";
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"NSDefaultUser";
    } else if (indexPath.row == 3) {
        cell.textLabel.text = @"代理传值";
    } else if (indexPath.row == 4) {
        cell.textLabel.text = @"block 传值";
    }else if(indexPath.row ==5){
        cell.textLabel.text = @"通知 传值";
    }
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row== 0){
        ViewController* vc = [[ViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if(indexPath.row ==1){
        DefaultInstanceViewController* defaultVc = [[DefaultInstanceViewController alloc]init];
        [self.navigationController pushViewController:defaultVc animated:YES];
    }else if(indexPath.row ==2){
        NSDefaultViewController* defaultVc = [[NSDefaultViewController alloc]init];
        [self.navigationController pushViewController:defaultVc animated:YES];
    }else if(indexPath.row == 3){
        DelegateViewController* delegateVc = [[DelegateViewController alloc]init];
        [self.navigationController pushViewController:delegateVc animated:YES];
    }else if(indexPath.row== 4){
        BlockViewController*blockVc = [[BlockViewController alloc]init];
        [self.navigationController pushViewController:blockVc animated:YES];
    }else{
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(notHandle:) name:@"notify" object:nil];
        NotificationViewController* notifyVc = [[NotificationViewController alloc]init];
        [self.navigationController pushViewController:notifyVc animated:YES];
        
    }
}

- (void)notHandle:(NSNotification*) not{
    self.title = not.userInfo[@"notHandle"];
}



@end
