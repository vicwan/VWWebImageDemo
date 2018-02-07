//
//  UIImageView+WebCache.m
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import "UIImageView+WebCache.h"

@implementation UIImageView (WebCache)

- (void)vw_setImageWithURL:(NSURL *)url {
	[self vw_setImageWithURL:url placeHolderImage:nil];
}

- (void)vw_setImageWithURL:(NSURL *)url placeHolderImage:(UIImage *)placeHolder {
	
}

@end
