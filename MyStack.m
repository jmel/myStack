//
//  MyStack.m
//  StackTest
//
//  Created by Jason  Melbourne on 10/28/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import "MyStack.h"
#import "MyNode.h"

@implementation MyStack
@synthesize top;

-(void) dealloc
{
	[top release];
	[super dealloc];
}//end dealloc


-(id) init
{
	top=nil;
	return self;
}//end init

-(void) addData:(NSObject*) obj
{
	MyNode * node =[MyNode alloc];
	[node initWithData:obj];
	node.previous=self.top;
	self.top=node;
	[node release];
	return;
}//end addData


-(void) printStack
{
	MyNode * tempPointer=self.top;
		
	while (tempPointer.previous != nil) {
		NSLog(@"Item %@",tempPointer.data);
		tempPointer=tempPointer.previous;
	}
	NSLog(@"Item %@",tempPointer.data);
	return;
}// end printStack

-(NSObject *) popFromStack
{
	NSObject * tempObj=self.top.data;
	self.top = self.top.previous;
	return tempObj;
}//end popFromStack


	

@end
