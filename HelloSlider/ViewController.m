//
//  ViewController.m
//  HelloSlider
//
//  Created by Tim on 2016/4/25.
//  Copyright © 2016年 Tim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()




@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;




@property (weak, nonatomic) IBOutlet UISlider *sliderRed;
@property (weak, nonatomic) IBOutlet UISlider *sliderGreen;
@property (weak, nonatomic) IBOutlet UISlider *sliderBlue;
@end




@implementation ViewController

- (IBAction)sliderColorPicked:(UISlider *)sender {
    float redValue = self.sliderRed.value;
    float greenValue = self.sliderGreen.value;
    float blueValue = self.sliderBlue.value;
    
    
    

    
    UIColor * color = [UIColor colorWithRed:redValue/255.0 green:greenValue/255.0 blue:blueValue/255.0 alpha:1];
    

    self.redLabel.text = [NSString stringWithFormat:@"red:%.f",redValue];
    self.greenLabel.text = [NSString stringWithFormat:@"green:%.f",greenValue];
    self.blueLabel.text = [NSString stringWithFormat:@"blue:%.f",blueValue];
    
    // 數字轉成文字
    //    NSString * str = [NSString stringWithFormat:@"值是:%f",6.0009];
    
    
    self.view.backgroundColor = color;
}

@end
