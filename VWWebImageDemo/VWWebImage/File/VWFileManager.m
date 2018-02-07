//
//  VWFileManager.m
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/7.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import "VWFileManager.h"
#import <UIKit/UIKit.h>

@interface VWFileManager()

@property (nonatomic, strong) NSFileManager *fileManager;

@end


@implementation VWFileManager

- (BOOL)writeToFile:(NSString *)filePath withData:(NSData *)data {
	return [data writeToFile:filePath atomically:YES];
}

- (BOOL)removeFileAtPath:(NSString *)filePath error:(NSError *__autoreleasing *)error {
	return [self.fileManager removeItemAtPath:filePath error:error];
}

- (BOOL)writeToFile:(NSString *)filePath withImage:(UIImage *)image {
	return [UIImageJPEGRepresentation(image, 1.0) writeToFile:filePath atomically:YES];
}

- (UIImage *)getImageAtFilePath:(NSString *)filePath {
	return [UIImage imageWithContentsOfFile:filePath];
}

#pragma mark - Lazy load
- (NSFileManager *)fileManager {
	if (!_fileManager) {
		_fileManager = [NSFileManager defaultManager];
	}
	return _fileManager;
}

@end

