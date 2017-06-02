//
//  ViewController.m
//  iOSSensorDemo
//
//  Created by uwei on 02/06/2017.
//  Copyright © 2017 Tencent. All rights reserved.
//

#import "ViewController.h"
#import "DistanceViewController.h"
#import "AccelerometerViewController.h"
#import "GyroViewController.h"
#import "MagnetometerViewController.h"
#import "PedometerViewController.h"
#import "AltimeterViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *sensorNameTable;
@property (strong, nonatomic) NSArray *names;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.sensorNameTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellid"];
    self.names = @[@"距离传感器", @"加速计",@"磁力计",@"陀螺仪",@"计步器", @"测高仪", @"GPS"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid" forIndexPath:indexPath];
    cell.textLabel.text = self.names[indexPath.row];
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            
            DistanceViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"DistanceViewController"];
            [self.navigationController pushViewController:dvc animated:YES];
            break;
        }
            
            case 1:
        {
            AccelerometerViewController *avc = [self.storyboard instantiateViewControllerWithIdentifier:@"AccelerometerViewController"];
            [self.navigationController pushViewController:avc animated:YES];
            break;
        }
        case 2:
        {
            MagnetometerViewController *mvc = [self.storyboard instantiateViewControllerWithIdentifier:@"MagnetometerViewController"];
            [self.navigationController pushViewController:mvc animated:YES];
            break;
        }
        case 3:
        {
            GyroViewController *gvc = [self.storyboard instantiateViewControllerWithIdentifier:@"GyroViewController"];
            [self.navigationController pushViewController:gvc animated:YES];
            break;
        }
            
        case 4:
        {
            PedometerViewController *pvc = [self.storyboard instantiateViewControllerWithIdentifier:@"PedometerViewController"];
            [self.navigationController pushViewController:pvc animated:YES];
            break;
        }
        case 5:
        {
            AltimeterViewController *pvc = [self.storyboard instantiateViewControllerWithIdentifier:@"AltimeterViewController"];
            [self.navigationController pushViewController:pvc animated:YES];
            break;
        }
        default:
            break;
    }
}


@end
