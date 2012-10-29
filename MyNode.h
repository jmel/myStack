//
//  MyNode.h
//  StackTest
//
//  Created by Jason  Melbourne on 10/28/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyNode : NSObject {
	NSObject * data;
	MyNode * previous;
}
@property (retain) NSObject * data;
@property (retain) MyNode * previous;

-(void) dealloc;
-(MyNode *) initWithData:(NSObject *) myData;

@end
