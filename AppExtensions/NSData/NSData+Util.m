//
// Created by stran.
//



#import "NSData+Util.h"

@implementation NSData (Util)

- (NSString *)base64Encode {
    static char table [] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    NSInteger length = [self length];
    NSMutableData *data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t *input = (uint8_t *) [self bytes];
    uint8_t *output = (uint8_t *) data.mutableBytes;

    for (NSInteger i = 0; i < length; i += 3) {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); ++j) {
            value <<= 8;

            if (j < length) {
                value |= (0xff & input[j]);
            }
        }

        NSInteger index = (i / 3) * 4;
        output[index + 0] = table[(value >> 18) & 0x3f];
        output[index + 1] = table[(value >> 12) & 0x3f];
        output[index + 2] = (i + 1) < length ? table[(value >> 6) & 0x3f] : '=';
        output[index + 3] = (i + 2) < length ? table[(value >> 0) & 0x3f] : '=';
    }

    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

@end