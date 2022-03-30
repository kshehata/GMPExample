//
//  GMPExampleTests.m
//  GMPExampleTests
//
//  Created by Kareem Shehata on 30/3/22.
//

#import <XCTest/XCTest.h>

#import "GMPExample.h"

@interface GMPExampleTests : XCTestCase {
    GMPExample* gmp;
}

@end

@implementation GMPExampleTests

- (void)setUp {
    gmp = [[GMPExample alloc] init];
}

- (void)tearDown {
}

- (void)testMultiply {
    XCTAssertEqualObjects([gmp multiply:@6 with:@7], @"42");
    XCTAssertEqualObjects([gmp multiplyStrings:@"6" with:@"7"], @"42");
}


@end
