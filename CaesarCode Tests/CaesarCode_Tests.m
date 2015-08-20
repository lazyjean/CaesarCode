//
//  CaesarCode_Tests.m
//  CaesarCode Tests
//
//  Created by Liu Zhen on 8/19/15.
//  Copyright (c) 2015 Evol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CaesarCode.h"

@interface CaesarCode_Tests : XCTestCase

@end

@implementation CaesarCode_Tests

- (void)testEncryptABC0 {
    CaesarCode *coder = [CaesarCode sharedCaesarCode];
    [coder setupWithOffset:0];
    XCTAssert([[coder encrypt:@"ABC"] isEqualToString:@"ABC"]);
}

- (void)testDecryptABC0 {
    CaesarCode *coder = [CaesarCode sharedCaesarCode];
    [coder setupWithOffset:0];
    XCTAssert([[coder decrypt:@"ABC"] isEqualToString:@"ABC"]);
}

- (void)testEncryptBCD1 {
    CaesarCode *coder = [CaesarCode sharedCaesarCode];
    [coder setupWithOffset:1];
    XCTAssert([[coder encrypt:@"BCD"] isEqualToString:@"CDE"]);
}

- (void)testDecryptBCD1 {
    CaesarCode *coder = [CaesarCode sharedCaesarCode];
    [coder setupWithOffset:1];
    XCTAssert([[coder decrypt:@"CDE"] isEqualToString:@"BCD"]);
}

- (void)testEncryptAndDecrypt0 {
    CaesarCode *coder = [CaesarCode sharedCaesarCode];
    [coder setupWithOffset:0];
    NSString *content = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    XCTAssert([[coder decrypt:[coder encrypt:content]] isEqualToString:content]);
}

- (void)testEncryptAndDecrypt1 {
    CaesarCode *coder = [CaesarCode sharedCaesarCode];
    [coder setupWithOffset:1];
    NSString *content = @"__!@#$ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    XCTAssert([[coder decrypt:[coder encrypt:content]] isEqualToString:content]);
}

@end
