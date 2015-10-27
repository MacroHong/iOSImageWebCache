//
//  ViewController.m
//  MHImageWebCache
//
//  Created by Macro on 10/14/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+MHImageWebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(repeatAction) userInfo:nil repeats:YES];

    
    
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(20, 40, [[UIScreen mainScreen] bounds].size.width - 40, [[UIScreen mainScreen] bounds].size.height - 80)];
    
    [iv setWebImageWithUrlStr:@"http://www.k-thequeen.com/upload/image/day_20150715/20150715055840701.jpg" placeholderImageName:@"mm.jpg"];
    
//    iv.image = [UIImage imageNamed:@"mm.jpg"];
//    NSURL *url = [NSURL URLWithString:@"http://localhost/yindaoye01.png"];
//    NSData *d = [NSData dataWithContentsOfURL:url];
//    UIImage *i = [UIImage imageWithData:d];
//    iv.image = i;
    
    [self.view addSubview:iv];
    
    
    
    
    
}

- (void)repeatAction {
    static int c = 0;
    NSLog(@"%d", c++);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
