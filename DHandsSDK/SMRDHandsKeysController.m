//
//  SMRDHandsKeysController.m
//  DHands
//
//  Created by 丁治文 on 2019/1/14.
//  Copyright © 2019 sumrise. All rights reserved.
//

#import "SMRDHandsKeysController.h"

@interface SMRDHandsKeysController ()<
UITableViewDelegate,
UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation SMRDHandsKeysController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifierForCell0"];
            
            return cell;
        }
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
            
        default:
            break;
    }
    
    
    return [[UITableViewCell alloc] init];
}

#pragma mark - Getters

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,
                                                                   0,
                                                                   CGRectGetWidth([UIScreen mainScreen].bounds),
                                                                   CGRectGetHeight([UIScreen mainScreen].bounds))
                                                  style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}


@end
