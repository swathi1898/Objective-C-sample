//
//  SampleClass.m
//  AnimationSample
//
//  Created by rps on 26/12/22.
//

#import "SampleClass.h"

@implementation SampleClass
- (void)performActionWithCompletion:(CompletionBlock)completionBlock {

   NSLog(@"Action Performed");
   completionBlock();
}
@end
