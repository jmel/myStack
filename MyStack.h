//
//  MyStack.h
//  StackTest
//
//  Created by Jason  Melbourne on 10/28/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MyNode;

@interface MyStack : NSObject {
	MyNode * top;
}
@property (retain) MyNode * top;


-(void) dealloc;
-(void) addData:(NSObject *) obj;
-(void) printStack;
-(NSObject *) popFromStack;


@end //MyStack
