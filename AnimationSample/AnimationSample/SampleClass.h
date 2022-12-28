//
//  SampleClass.h
//  AnimationSample
//
//  Created by rps on 26/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^CompletionBlock)();

@interface SampleClass : NSObject
- (void)performActionWithCompletion:(CompletionBlock)completionBlock;
@end

NS_ASSUME_NONNULL_END
