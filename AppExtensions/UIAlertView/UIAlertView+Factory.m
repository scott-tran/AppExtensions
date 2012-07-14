//
//  Created by stran on 7/14/12.
//
//


#import "UIAlertView+Factory.h"


@implementation UIAlertView (Factory)

+ (UIAlertView *)showWithTitle:(NSString *)title message:(NSString *)message {
    UIAlertView *alert = [[UIAlertView alloc]
            initWithTitle:title
            message:message
            delegate:nil cancelButtonTitle:@"Dismiss"
   otherButtonTitles:nil];

    [alert show];
    return [alert autorelease];
}

+ (UIAlertView *)showWithError:(NSError *)error {
    UIAlertView *alert = [[UIAlertView alloc]
            initWithTitle:[error localizedDescription]
            message:[error localizedRecoverySuggestion]
            delegate:nil cancelButtonTitle:@"Dismiss"
   otherButtonTitles:nil];

    [alert show];
    return [alert autorelease];
}

@end