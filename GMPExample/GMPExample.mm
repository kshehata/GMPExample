//
//  GMPExample.m
//  GMPExample
//
//  Created by Kareem Shehata on 30/3/22.
//

#import "GMPExample.h"

#import <string>
#import "gmpxx.h"

using std::string;

//string NS2Cpp(const NSString *str) {
//    return [str cStringUsingEncoding:[NSString defaultCStringEncoding]];
//}

NSString *Cpp2NS(const string& str) {
    return [NSString stringWithCString:str.c_str()
                              encoding:[NSString defaultCStringEncoding]];
}

@implementation GMPExample
-(NSString*)multiply:(NSNumber*)a with:(NSNumber*)b {
    mpz_class x([a longValue]);
    mpz_class y([b longValue]);
    mpz_class r = x*y;
    return Cpp2NS(r.get_str());
}
@end
