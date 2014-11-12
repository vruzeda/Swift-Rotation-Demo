//
//  Orientation.m
//  Swift Rotation Demo
//
//  Created by Vinícius Uzêda on 11/12/14.
//  Copyright (c) 2014 Vinícius Uzêda. All rights reserved.
//

#import "UIDevice+Orientation.h"
#import <objc/message.h>

@implementation UIDevice (Orientation)

-(void)changeOrientation:(UIDeviceOrientation)orientation
{
    typedef void (*SetOrientationType)(UIDevice *, SEL, UIDeviceOrientation);
    SetOrientationType setOrientation = (SetOrientationType) [UIDevice instanceMethodForSelector:@selector(setOrientation:)];
    setOrientation(self, @selector(setOrientation:), orientation);
}

@end
