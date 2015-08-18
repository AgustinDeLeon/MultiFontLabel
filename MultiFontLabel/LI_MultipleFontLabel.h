//
//  LI_MultipleFontLabel.h
//  MultiFontLabel
//
//  Created by Agustin De Leon on 1/8/15.
//  Copyright (c) 2015 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LI_MultipleFontLabel : UILabel

- (id)initWithFonts:(NSArray *)fonts withTexts:(NSArray *)texts;

- (id)initWithFonts:(NSArray *)fonts withTexts:(NSArray *)texts withColors:(NSArray *)colors;

- (void)addFonts:(NSArray *)fonts withTexts:(NSArray *)texts withColors:(NSArray *)colors;

@end
