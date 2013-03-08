//
//  NSArray+ADNAdditions.m
//  ADNKit
//
//  Created by Joel Levin on 3/3/13.
//  Copyright (c) 2013 Afterwork Studios. All rights reserved.
//

#import "NSArray+ADNAdditions.h"


@implementation NSArray (ADNAdditions)

- (NSArray *)adn_map:(id (^)(id object))mapBlock {
	NSMutableArray *results = [NSMutableArray array];
	
	for (id object in self) {
		id mappedObject = mapBlock(object);
		if (mappedObject) {
			[results addObject:mappedObject];
		}
	}
	
	return results;
}


- (NSArray *)adn_filter:(BOOL (^)(id object))filterBlock {
	if (!filterBlock) return self;
	NSMutableArray *results = [NSMutableArray array];
	
	for (id object in self) {
		if (filterBlock(object)) {
			[results addObject:object];
		}
	}
	
	return results;
}


@end
