//
//  DetailViewController.m
//  testGif
//
//  Created by 李海龙 on 15/12/8.
//  Copyright (c) 2015年 happigo. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController (){
    
    __weak IBOutlet UIImageView *imgView;
}

@end

@implementation DetailViewController

#pragma mark - Managing the detail item


- (void)viewDidLoad {
    [super viewDidLoad];
    //imgView.image = [UIImage imageNamed:@"test.gif"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
