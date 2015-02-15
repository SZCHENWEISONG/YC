//
//  KvcFunAppDelegate.h
//  KvcFun
//
//  Created by Tony Chen on 14-3-5.
//  Copyright (c) 2014年 Test. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KvcFunAppDelegate : NSObject <NSApplicationDelegate>
{
    int fido;
}
@property (assign) IBOutlet NSWindow *window;
- (IBAction)incrementFio:(id )sender;
@property (weak) IBOutlet NSTextField *textField;

//- (int)fido;
//
//- (void)setFido:(int)newValue;
@property(readwrite, assign) int fido;
@end
