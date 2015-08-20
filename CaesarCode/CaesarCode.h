//
//  CaesarCode.h
//  CaesarCode
//
//  Created by Liu Zhen on 8/19/15.
//  Copyright (c) 2015 Evol Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaesarCode : NSObject

+ (instancetype)sharedCaesarCode;

/**
 *  初台化工具
 *
 *  @param offset 传入偏移量
 */
- (void)setupWithOffset:(NSInteger)offset;

/**
 *  加密码内容
 *
 *  @param content 被加密码的内容
 *  @return 加密后的内容
 */
- (NSString *)encrypt:(NSString *)content;

/**
 *  解密内容
 *
 *  @param content 被解密的内容
 *  @return 解密后的内容
 */
- (NSString *)decrypt:(NSString *)content;

@end
