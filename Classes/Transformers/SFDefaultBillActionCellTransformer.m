//
//  SFDefaultBillActionCellTransformer.m
//  Congress
//
//  Created by Daniel Cloud on 4/10/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFDefaultBillActionCellTransformer.h"
#import "SFCellData.h"
#import "SFBillAction.h"

@implementation SFDefaultBillActionCellTransformer

+ (Class)transformedValueClass {
    return [SFCellData class];
}

+ (BOOL)allowsReverseTransformation {
    return NO;
}

- (id)transformedValue:(id)value {
    if (value == nil) return nil;
    if (![value isKindOfClass:[SFBillAction class]]) return nil;

    SFBillAction *object = (SFBillAction *)value;
    SFCellData *cellData = [SFCellData new];

    cellData.cellIdentifier = @"SFDefaultBillActionCell";
    cellData.cellStyle = UITableViewCellStyleSubtitle;
    cellData.textLabelString = object.text;
    cellData.textLabelFont = [UIFont cellTextFont];
    cellData.textLabelColor = [UIColor primaryTextColor];
    cellData.textLabelNumberOfLines = 0;
    cellData.selectable = NO;

    return cellData;
}

@end
