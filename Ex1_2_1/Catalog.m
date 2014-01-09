//
//  Catalog.m
//  Ex1_2_1
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Catalog.h"
#import "Product.h"

@implementation Catalog {
	NSArray *data;
}

static Catalog *_instance = nil;
+(id)defaultCatalog {
	if(nil == _instance) {
		_instance = [[Catalog alloc] init];
	}
	return _instance;
}

- (id)init {
	self = [super init];
	
	if(self) {
		data = @[[Product product:@"Ball1" price:@"100" image:@"ball1.png"],
				 [Product product:@"Ball2" price:@"200" image:@"ball2.png"],
				 [Product product:@"Ball3" price:@"300" image:@"ball3.png"],
				 [Product product:@"IU" price:@"1000" image:@"002.jpg"]
				 
				 ];
	}
	
	return self;
}

- (id)productAt:(int)index {
	return [data objectAtIndex:index];
}

- (int)numberOfProducts {
	return [data count];
}



@end
