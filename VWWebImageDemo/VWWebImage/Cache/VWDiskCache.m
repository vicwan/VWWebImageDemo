//
//  VWDiskCache.m
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import "VWDiskCache.h"

#define CACHE_FOLDER @"VWWebImageCache"

@interface VWDiskCache()

@property (nonatomic, copy) NSString *cachesDir;

@end

@implementation VWDiskCache









#pragma mark - Lazy load
- (NSString *)cachesDir {
	if (!_cachesDir) {
		NSString *cache = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
		_cachesDir = [cache stringByAppendingPathComponent:CACHE_FOLDER];
	}
	return _cachesDir;
}

@end
