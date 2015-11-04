//
//  ViewController.m
//  T8TableViewFormDemo
//
//  Created by 琦张 on 15/11/4.
//  Copyright © 2015年 T8. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) T8MenuTitleItem *titleItem;
@property (strong, nonatomic) T8MenuSwitchItem *switchItem;
@property (strong, nonatomic) T8MenuDescriptionItem *descItem;
@property (strong, nonatomic) T8MenuSection *section1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleItem = [[T8MenuTitleItem alloc] initWithTitle:@"标题" indicator:YES subTitle:@"副标题"];
    self.switchItem = [[T8MenuSwitchItem alloc] initWithTitle:@"开关" isOn:YES];
    self.descItem = [[T8MenuDescriptionItem alloc] initWithDescription:@"这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述，这里是描述。"];
    
    self.section1 = [[T8MenuSection alloc] init];
    self.section1.sectionEdgeInsets = UIEdgeInsetsMake(20, 0, 20, 0);

    [self.section1 addMenuItem:self.titleItem];
    [self.section1 addMenuItem:self.switchItem];
    [self.section1 addMenuItem:self.descItem];
    
    [self.menuSections addObject:self.section1];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
