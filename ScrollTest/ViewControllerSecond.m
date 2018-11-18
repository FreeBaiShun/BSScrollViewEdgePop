//
//  ViewControllerSecond.m
//  ScrollTest
//
//  Created by BaiShun on 2018/11/18.
//  Copyright © 2018 BaiShun. All rights reserved.
//

#import "ViewControllerSecond.h"
#import "BSScrollViewEdgePop/UIScrollView+BSScrollViewEdgePop.h"

@interface ViewControllerSecond ()
@property (strong, nonatomic) UIScrollView *scrollView;
@end

@implementation ViewControllerSecond

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSArray *arrImgName = @[@"timg-1.jpeg",@"timg-2.jpeg",@"timg-3.jpeg"];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.scrollView.backgroundColor = [UIColor whiteColor];
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * arrImgName.count, 0);
    self.scrollView.pagingEnabled = YES;
    [self.scrollView setEdgePop:self];
    [self.view addSubview:self.scrollView];
    
    [arrImgName enumerateObjectsUsingBlock:^(NSString  *imgName, NSUInteger idx, BOOL * _Nonnull stop) {
        UIImage *image = [UIImage imageNamed:imgName];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(idx * self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        imageView.image = image;
        [self.scrollView addSubview:imageView];
    }];
}

@end
