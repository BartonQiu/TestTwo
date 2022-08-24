//
//  ViewController.m
//  FirstProject
//
//  Created by QC on 9/22/16.
//  Copyright © 2016 QC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *percentLabel;
@property (strong, nonatomic) UIImageView *arrowImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.percentLabel setFrame:CGRectMake(20, 100, CGRectGetWidth(self.view.bounds), 35)];
    [self.view addSubview:self.percentLabel];
    
    self.arrowImageView.center = self.view.center;
    [self.view addSubview:self.arrowImageView];
    NSArray *appIconsList = [[NSBundle mainBundle] infoDictionary][@"CFBundleIconFiles"];
    self.arrowImageView.image = [UIImage imageNamed:appIconsList.firstObject];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UILabel *)percentLabel {
    if (!_percentLabel) {
        _percentLabel = [UILabel new];
        _percentLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        _percentLabel.adjustsFontSizeToFitWidth = YES;
        _percentLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
        _percentLabel.minimumScaleFactor = 0.7;
        _percentLabel.text = @"涨跌分布";
        _percentLabel.textColor = [UIColor magentaColor];
    }
    return _percentLabel;
}

- (UIImageView *)arrowImageView {
    if (!_arrowImageView) {
        _arrowImageView = [UIImageView new];
        _arrowImageView.frame = CGRectMake(50, 50, 50, 50);
        _arrowImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _arrowImageView;
}

@end
