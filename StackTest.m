#import <Foundation/Foundation.h>
#import "MyStack.h"
#import "MyNode.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	NSArray * data=[NSArray arrayWithObjects:[NSNumber numberWithInt:56], @"Yes", [NSNumber numberWithInt:27],@"Done",nil];
	NSLog(@"%@", data);  
	
	MyStack * stack=[[MyStack alloc] init];

	for (NSObject * obj in data){
		[stack addData:obj];
	}
	
	[stack printStack];
	
	NSObject * topNode=[stack popFromStack];
	NSLog(@"\n\nPopped data: %@\n\n",topNode);
	
	[stack printStack];
    [pool drain];
    return 0;
}
