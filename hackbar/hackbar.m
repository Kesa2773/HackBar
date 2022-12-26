//
//  hackbar.m
//  hackbar
//
//  Created by Artem Kasper on 26.12.2022.
//  Copyright © 2022 Artem Kasper. All rights reserved.
//

#import <Foundation/Foundation.h>

CHDeclareClass(SBFluidSwitcherGestureManager);
CHDeclareMethod(2, BOOL, SBFluidSwitcherGestureManager, grabberTongue, id, item, shouldAllowSecondSwipeWithEdgeLocation, id, edgeLocation)
{
    return YES;
}

CHDeclareClass(CCUIModularControlCenterOverlayViewController);
CHDeclareMethod(2, void, CCUIModularControlCenterOverlayViewController, dismissAnimated, BOOL, animated, withCompletionHandler, id, handler)
{
    CHSuper(2, CCUIModularControlCenterOverlayViewController, dismissAnimated, animated, withCompletionHandler, handler);
}

CHDeclareClass(SBControlCenterController);
CHDeclareMethod(0, NSUInteger, SBControlCenterController, presentingEdge)
{
    return 1;
}

CHDeclareClass(SBHomeGestureSettings);
CHDeclareMethod(0, BOOL, SBHomeGestureSettings, isHomeGestureEnabled)
{
    return YES;
}

CHDeclareClass(CCSControlCenterDefaults);
CHDeclareMethod(0, NSUInteger, CCSControlCenterDefaults, _defaultPresentationGesture)
{
    return 1;
}

CHDeclareClass(SpringBoard);
CHDeclareMethod(0, BOOL, SpringBoard, homeScreenRotationStyleWantsUIKitRotation)
{
    return NO;
}
