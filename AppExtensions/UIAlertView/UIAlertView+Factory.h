//
//  Created by stran on 7/14/12.
//
//


#import <Foundation/Foundation.h>

@interface UIAlertView (Factory)

+ (UIAlertView *)showWithTitle:(NSString *)title message:(NSString *)message;
+ (UIAlertView *)showWithError:(NSError *)error;


@end