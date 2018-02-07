//
//  UIImage+Compress.h
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/7.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Compress)

- (NSData *)compressImageQualityWithMaxLength:(NSInteger)maxLength;

@end
