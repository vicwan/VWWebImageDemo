//
//  UIImageView+WebCache.h
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (WebCache)

- (void)vw_setImageWithURL:(NSURL *)url;

- (void)vw_setImageWithURL:(NSURL *)url
	   placeHolderImage:(UIImage *)placeHolder;

@end
