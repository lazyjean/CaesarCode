//
//  CaesarCode.m
//  CaesarCode
//
//  Created by Liu Zhen on 8/19/15.
//  Copyright (c) 2015 Evol Studio. All rights reserved.
//

#import "CaesarCode.h"

@interface CaesarCode ()
@property (nonatomic) NSInteger offset;
@end

@implementation CaesarCode

+ (instancetype)sharedCaesarCode {
    static dispatch_once_t onceToken;
    static id shared = nil;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc] init];
    });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setupWithOffset:(NSInteger)offset {
    self.offset = offset % 26;
    if (self.offset < 0) {
        self.offset += 26;
    }
}

- (NSString *)encrypt:(NSString *)content {
    NSInteger count = [content length];
    const char *string = [content UTF8String];

    //初始化结果容器
    char encrypted[count + 1];
    memset(encrypted, 0, sizeof(encrypted));
    
    for (int i = 0; i < count; i++) {
        encrypted[i] = [self map:string[i] offset:self.offset];
    }
    NSString *result = [NSString stringWithUTF8String:encrypted];
    return result;
}

- (NSString *)decrypt:(NSString *)content {
    NSInteger count = [content length];
    const char *string = [content UTF8String];
    
    //初始化结果容器
    char decrypted[count + 1];
    memset(decrypted, 0, sizeof(decrypted));
    
    for (int i = 0; i < count; i++) {
        decrypted[i] = [self map:string[i] offset:-self.offset];
    }
    NSString *result = [NSString stringWithUTF8String:decrypted];
    return result;
}

- (char)map:(char)str offset:(NSInteger)offset {
    char result = str;
    
    if (str >= 'A' && str <= 'Z') {
        result = str + offset;
        if (result > 'Z' || result < 'A') {
            result = (result - 'A' + 26) % 26 + 'A';
        }
    }
    else if (str >= 'a' && str <= 'z') {
        result = str + offset;
        if (result > 'z' || result < 'a') {
            result = (result - 'a' + 26) % 26 + 'a';
        }
    }

    return result;
}

@end
