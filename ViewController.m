//
//  ViewController.m
//  iVersionDemo
//
//  Created by LiHaozhen on 15/5/4.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "ViewController.h"
#import "iVersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[iVersion sharedInstance] checkForNewVersion];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)wxSwitchValueChanged:(UISwitch *)sender {
    
    if (sender.isOn) {
        
        [iVersion sharedInstance].applicationBundleID = @"com.tencent.xin";
    }else{
        
        [iVersion sharedInstance].applicationBundleID = nil;
    }
}
@end
