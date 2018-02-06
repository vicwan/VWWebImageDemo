
//
//  VWImageProcessManager.m
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import "VWImageProcessManager.h"
#import "VWImageCompressor.h"

@interface VWImageProcessManager()

@property (nonatomic, strong) VWImageCompressor *compressor;

@end

@implementation VWImageProcessManager

- (UIImage *)compressImageWithRatio:(CGFloat)ratio {
	return [self.compressor compressImageWithRatio:ratio];
}


#pragma mark - Lazy Load

@end
