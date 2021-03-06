//
//  VWImageCacheManager.h
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

@interface VWImageCacheManager : NSObject

- (UIImage *)getImageByURL:(NSURL *)url;
- (UIImage *)getImageByURLString:(NSString *)urlString;

@end
