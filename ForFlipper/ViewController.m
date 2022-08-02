//
//  ViewController.m
//  ForFlipper
//
//  Created by 蓝天祐 on 2022/7/29.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *changeColorBtn;
@property (nonatomic, strong) NSString *colorInfo;

- (IBAction)changeColorBtnTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changeColorBtnTapped:(id)sender {
    UIColor *fromColor = self.changeColorBtn.tintColor;
    if (self.changeColorBtn.tintColor == [UIColor redColor]) {
        self.changeColorBtn.tintColor = [UIColor blueColor];
        self.colorInfo = @"I am a blue button";
    } else {
        self.changeColorBtn.tintColor = [UIColor redColor];
        self.colorInfo = @"I am a red button";
    }
    UIColor *toColor = self.changeColorBtn.tintColor;
    NSLog(@"button color change from %@ to be %@", fromColor.accessibilityName, toColor.accessibilityName);
}

@end
