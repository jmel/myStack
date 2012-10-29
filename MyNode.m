//
//  MyNode.m
//  StackTest
//
//  Created by Jason  Melbourne on 10/28/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import "MyNode.h"


@implementation MyNode
@synthesize previous;
@synthesize data;

-(void) dealloc
{
	[data release];
	[previous release];
	[super dealloc];
}//end dealloc

-(MyNode *) initWithData:(NSObject *) myData
{
	data=myData;
	return self;
}


@end
