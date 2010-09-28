/*
 * AppController.h
 * Classes
 * 
 * Created by Gregory Barchard on 23/09/2010.
 * 
 * Copyright (c) 2010 BuySellAds.com
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * 
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * 
 * Neither the name of the project's author nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

//
//  AppController.m
//  BSAAdFramework
//
//  Created by Rick Fillion on 6/29/10.
//  Copyright 2010 BuySellAds. All rights reserved.
//

#import "AppController.h"
#import <BSAAdFramework/BSAAdFramework.h>

@implementation AppController

- (void)awakeFromNib
{
    adContainerView.zoneIdentifier = [NSNumber numberWithInt:1248790];  // BSA Test
    adContainerView.delegate = self;
    //adContainerView2.zoneIdentifier = [NSNumber numberWithInt:1248791]; // Test 728x90
    //adContainerView2.zoneIdentifier = [NSNumber numberWithInt:1248941]; // Empty test   
    adContainerView2.zoneIdentifier = [NSNumber numberWithInt:1249132]; //Demo account ImageOnly
    adContainerView2.delegate = self;
    //adContainerViewImageAndText.zoneIdentifier = [NSNumber numberWithInt:1248303];  // css-tricks image and text
    adContainerViewImageAndText.zoneIdentifier = [NSNumber numberWithInt:1249132];  //Demo account ImageOnly

    adContainerViewImageAndText.delegate = self;
    [[BSAAdController sharedController] loadAdsWithKey:@"d281265fc4650a64c7b0dbfeda3c64e2"];  // BSA Test
    [[BSAAdController sharedController] loadAdsWithKey:@"3469a2a501a9e18091036aa0c89f9dcb"]; // CSS Tricks
    [[BSAAdController sharedController] loadAdsWithKey:@"6a492834da3f65826de6b32cadb9dfe0"]; // Demo account
}

#pragma mark BSAAdContainerViewDelegate

- (BOOL)adContainerView:(BSAAdContainerView*)adContainerView shouldHandleClickOfAd:(BSAAd *)ad;
{
    return YES;
}

@end
