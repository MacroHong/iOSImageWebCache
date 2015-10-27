//
//  UIImageView+MHImageWebCache.m
//  MHImageWebCache
//
//  Created by Macro on 10/14/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import "UIImageView+MHImageWebCache.h"

@implementation UIImageView (MHImageWebCache)


/*!
 *  @author Macro QQ:778165728, 15-10-14
 *
 *  @brief  加载网络图片
 *
 *  @param urlStr    网络图片地址
 *  @param imageName 未加载时的占位图片
 */

- (void)setWebImageWithUrlStr:(NSString *)urlStr placeholderImageName:(NSString *)imageName {
    self.image = [UIImage imageNamed:imageName];
    
    // 通过GCD的方式创建一个新的线程来异步加载图片
    dispatch_queue_t queue = dispatch_queue_create("cacheimage", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        [self downLoadImageWithUrlStr:urlStr];  //回调
    });
    
}

// 下载网络数据 填到主线程UI
- (void)downLoadImageWithUrlStr:(NSString *)urlStr {
    NSURL *imageURL = [NSURL URLWithString:urlStr];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    
    // 通知主线程更新UI
    dispatch_async(dispatch_get_main_queue(), ^{
        self.image = [UIImage imageWithData:imageData];
    });
}


@end
