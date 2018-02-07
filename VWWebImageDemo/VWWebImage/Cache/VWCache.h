//
//  VWCache.h
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/6.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWCache : NSCache

- (void)addCache:(id)obj key:(NSString *)key;
- (id)getCacheByKey:(NSString *)key;
- (void)removeCacheByKey:(NSString *)key;
- (void)clearCache;

@end
