//
//  Created by stran on 2/24/12.
//
//


#import "NSNumberFormatter+Style.h"


@implementation NSNumberFormatter (Style)

+ (NSString *)simple:(NSNumber *)number {
    static NSNumberFormatter *simple;

    if (!simple) {
        simple = [[NSNumberFormatter alloc] init];
        simple.numberStyle = NSNumberFormatterNoStyle;
    }

    return [simple stringFromNumber:number];
}

+ (NSString *)currency:(NSNumber *)number {
    static NSNumberFormatter *currency;

    if (!currency) {
        currency = [[NSNumberFormatter alloc] init];
        currency.numberStyle = NSNumberFormatterCurrencyStyle;
    }

    return [currency stringFromNumber:number];
}

+ (NSString *)simpleCurrency:(NSNumber *)number {
    static NSNumberFormatter *simpleCurrency;

    if (!simpleCurrency) {
        simpleCurrency = [[NSNumberFormatter alloc] init];
        simpleCurrency.numberStyle = NSNumberFormatterCurrencyStyle;
        simpleCurrency.currencySymbol = @"";

    }

    return [simpleCurrency stringFromNumber:number];
}

@end