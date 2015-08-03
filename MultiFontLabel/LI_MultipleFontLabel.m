//
//  LI_MultipleFontLabel.m
//  MultiFontLabel
//
//  Created by Agustin De Leon on 1/8/15.
//  Copyright (c) 2015 Agustin De Leon. All rights reserved.
//

#import "LI_MultipleFontLabel.h"

@implementation LI_MultipleFontLabel

+ (LI_MultipleFontLabel *)initWithFonts:(NSArray *)fonts withTexts:(NSArray *)texts
{
    //Create auxiliar array in order to assing color to each text
    //Default color is black
    NSMutableArray *auxColors = [NSMutableArray array];
    
    for (int i = 0; i < [texts count]; i++) {
        [auxColors addObject:[UIColor blackColor]];
    }
    
    NSArray *colors = [NSArray arrayWithArray:auxColors];

    return [LI_MultipleFontLabel initWithFonts:fonts withTexts:texts withColors:colors];
}

+ (LI_MultipleFontLabel *)initWithFonts:(NSArray *)fonts withTexts:(NSArray *)texts withColors:(NSArray *)colors
{
    LI_MultipleFontLabel *label = [[LI_MultipleFontLabel alloc] init];
    
    //Make controls in attributes send by parametter
    if (!fonts && [fonts count] == 0) {
        NSLog(@"The fonts should not be null");
        return label;
    }
    
    if (!colors && [colors count] == 0) {
        NSLog(@"The colors should not be null");
        return label;
    }

    if (!texts && [texts count] == 0) {
        NSLog(@"The texts should not be null");
        return label;
    }
    
    if ([fonts count] != [texts count] || [fonts count] != [colors count]) {
        NSLog(@"the attributes should be the same size");
        return label;
    }
    
    //Iniitials values for label
    NSMutableAttributedString *attributeForLabel;
    
    for (int i = 0; i < [fonts count]; i++)
    {
        //Next values to add to the label
        NSDictionary *nextDic = @{ NSForegroundColorAttributeName : colors[i] ,
                                    NSFontAttributeName : fonts[i]};

        NSMutableAttributedString *nextAttributeForLabel = [[NSMutableAttributedString alloc] initWithString:texts[i]
                                                                                                  attributes:nextDic];
        
        if (!attributeForLabel) {
            attributeForLabel = nextAttributeForLabel;
        } else {
            [attributeForLabel appendAttributedString:nextAttributeForLabel];
        }
    }
    
    label.attributedText = attributeForLabel;
    [label sizeToFit];
    
    return label;
}

@end
