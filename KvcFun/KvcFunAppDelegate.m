//
//  KvcFunAppDelegate.m
//  KvcFun
//
//  Created by Tony Chen on 14-3-5.
//  Copyright (c) 2014年 Test. All rights reserved.
//

#import "KvcFunAppDelegate.h"

@implementation KvcFunAppDelegate
@synthesize fido=fido;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)incrementFio:(id)sender {
   
//    [self willChangeValueForKey:@"fido"];
//    fido++;
//    [self didChangeValueForKey:@"fido"];
    
//    [self setFido:[self fido]+1];
    self.fido=self.fido+1;


}

//- (int)fido {
//            NSLog(@"get=%d",fido);
//    return fido;
//}
//
//- (void)setFido:(int)newValue {
//    fido = newValue;
//        NSLog(@"set=%d",newValue);
//}
-(id)init
{
    

    self=[super init];
    if(self)
    {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n=[self valueForKey:@"fido"];
        NSLog(@"fido=%@",n);
      
        [self addObserver:self forKeyPath:@"fido" options:NSKeyValueChangeOldKey context:nil];
        
        
        [_textField bind:@"value" toObject:self withKeyPath:@"fido" options:nil];
        
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
//    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    NSLog(@"dd......");
}


@end
