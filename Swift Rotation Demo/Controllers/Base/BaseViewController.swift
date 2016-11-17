//
//  BaseViewController.swift
//  Swift Rotation Demo
//
//  Created by Vinícius Uzêda on 11/12/14.
//  Copyright (c) 2014 Vinícius Uzêda. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override var shouldAutorotate : Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }

    override var preferredInterfaceOrientationForPresentation : UIInterfaceOrientation {
        return UIInterfaceOrientation.portrait
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if (!isCurrentOrientationSupported()) {
            UIDevice.current.changeOrientation(preferredDeviceOrientationForPresentation())
        }
    }

    fileprivate func isCurrentOrientationSupported() -> Bool {
        var deviceInterfaceOrientationMask : UIInterfaceOrientationMask
        switch (UIDevice.current.orientation) {
        case UIDeviceOrientation.portrait:
            deviceInterfaceOrientationMask = UIInterfaceOrientationMask.portrait
        case UIDeviceOrientation.portraitUpsideDown:
            deviceInterfaceOrientationMask = UIInterfaceOrientationMask.portraitUpsideDown
        case UIDeviceOrientation.landscapeLeft:
            deviceInterfaceOrientationMask = UIInterfaceOrientationMask.landscapeLeft
        case UIDeviceOrientation.landscapeRight:
            deviceInterfaceOrientationMask = UIInterfaceOrientationMask.landscapeRight
        default:
            deviceInterfaceOrientationMask = UIInterfaceOrientationMask.portrait
        }
        return (Int(deviceInterfaceOrientationMask.rawValue) & Int(supportedInterfaceOrientations.rawValue)) != 0
    }

    fileprivate func preferredDeviceOrientationForPresentation() -> UIDeviceOrientation {
        switch (preferredInterfaceOrientationForPresentation) {
        case UIInterfaceOrientation.portrait:
            return UIDeviceOrientation.portrait
        case UIInterfaceOrientation.portraitUpsideDown:
            return UIDeviceOrientation.portraitUpsideDown
        case UIInterfaceOrientation.landscapeLeft:
            return UIDeviceOrientation.landscapeLeft
        case UIInterfaceOrientation.landscapeRight:
            return UIDeviceOrientation.landscapeRight
        default:
            return UIDeviceOrientation.portrait
        }
    }

}
