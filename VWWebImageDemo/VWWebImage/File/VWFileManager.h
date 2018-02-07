//
//  VWFileManager.h
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/7.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

@interface VWFileManager : NSObject

- (BOOL)writeToFile:(NSString *)filePath withData:(NSData *)data;

/**
 Remove file in sandbox with specific path.
 */
- (BOOL)removeFileAtPath:(NSString *)filePath error:(NSError **)error;

/**
 Save the image to sandbox with specific path.
 */
- (BOOL)writeToFile:(NSString *)filePath withImage:(UIImage *)image;

/**
 Obtain image in sandbox with specific path.
 */
- (UIImage *)getImageAtFilePath:(NSString *)filePath;

@end
