//
//  VWImageCacheManager.m
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import "VWImageCacheManager.h"
#import "VWMemoryCache.h"
#import "VWDiskCache.h"
#import "NSString+Util.h"

@interface VWImageCacheManager()

@property (nonatomic, strong) VWMemoryCache *memoCache;
@property (nonatomic, strong) VWDiskCache *diskCache;

@end


@implementation VWImageCacheManager

- (UIImage *)getImageByURL:(NSURL *)url {
	return [self getImageByURLString:url.absoluteString];
}

- (UIImage *)getImageByURLString:(NSString *)urlString {
	// md5
	NSString *key = [urlString md5];
	// obtain cache in memory
	id cache = [self.memoCache getCacheByKey:key];
	if (!cache) {
		// obtain cache in disk
		cache = [self.diskCache getCacheByKey:key];
		if (cache) {
			// add cache in memory
			[self.memoCache addCache:cache key:key];
		}else {
			// TODO download
		}
	}
	
	return nil;
}


#pragma mark -
- (VWMemoryCache *)memoCache {
	if (!_memoCache) {
		_memoCache = [VWMemoryCache sharedInstance];
	}
	return _memoCache;
}

- (VWDiskCache *)diskCache {
	if (!_diskCache) {
		_diskCache = [VWDiskCache sharedInstance];
	}
	return _diskCache;
}


@end
