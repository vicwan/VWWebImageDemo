//
//  UIImage+Compress.m
//  VWWebImageDemo
//
//  Created by 万伟琦 on 2018/2/7.
//  Copyright © 2018年 万伟琦. All rights reserved.
//

#import "UIImage+Compress.h"

@implementation UIImage (Compress)

// 二分法压缩. 由于每次压缩质量都不知道压缩后的大小, 故需要渐进尝试
- (NSData *)compressImageQualityWithMaxLength:(NSInteger)maxLength {
	CGFloat compression = 1;
	NSData *data = UIImageJPEGRepresentation(self, compression);
	if (data.length < maxLength) {
		return data;
	}
	CGFloat max = 1;
	CGFloat min = 0;
	for (int i = 0; i < 6; i++) {
		compression = (min + max) / 2;
		data = UIImageJPEGRepresentation(self, compression);
		if (data.length < maxLength * 0.9) {
			min = compression;
		}else if (data.length > maxLength * 0.9) {
			max = compression;
		}else {
			break;
		}
	}
	return data;
}

@end
