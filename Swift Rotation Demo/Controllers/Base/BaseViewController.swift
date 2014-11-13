//
//  BaseViewController.swift
//  Swift Rotation Demo
//
//  Created by Vinícius Uzêda on 11/12/14.
//  Copyright (c) 2014 Vinícius Uzêda. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }

    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return UIInterfaceOrientation.Portrait
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        if (!isCurrentOrientationSupported()) {
            UIDevice.currentDevice().changeOrientation(preferredDeviceOrientationForPresentation())
        }
    }

    private func isCurrentOrientationSupported() -> Bool {
        var deviceInterfaceOrientation : UIInterfaceOrientation
        switch (UIDevice.currentDevice().orientation) {
        case UIDeviceOrientation.Portrait:
            deviceInterfaceOrientation = UIInterfaceOrientation.Portrait
        case UIDeviceOrientation.PortraitUpsideDown:
            deviceInterfaceOrientation = UIInterfaceOrientation.PortraitUpsideDown
        case UIDeviceOrientation.LandscapeLeft:
            deviceInterfaceOrientation = UIInterfaceOrientation.LandscapeLeft
        case UIDeviceOrientation.LandscapeRight:
            deviceInterfaceOrientation = UIInterfaceOrientation.LandscapeRight
        default:
            deviceInterfaceOrientation = UIInterfaceOrientation.Portrait
        }
        return (Int(deviceInterfaceOrientation.rawValue) & supportedInterfaceOrientations()) != 0
    }

    private func preferredDeviceOrientationForPresentation() -> UIDeviceOrientation {
        switch (preferredInterfaceOrientationForPresentation()) {
        case UIInterfaceOrientation.Portrait:
            return UIDeviceOrientation.Portrait
        case UIInterfaceOrientation.PortraitUpsideDown:
            return UIDeviceOrientation.PortraitUpsideDown
        case UIInterfaceOrientation.LandscapeLeft:
            return UIDeviceOrientation.LandscapeLeft
        case UIInterfaceOrientation.LandscapeRight:
            return UIDeviceOrientation.LandscapeRight
        default:
            return UIDeviceOrientation.Portrait
        }
    }

}
