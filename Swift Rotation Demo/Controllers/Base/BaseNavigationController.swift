//
//  BaseNavigationController.swift
//  Swift Rotation Demo
//
//  Created by Vinícius Uzêda on 11/12/14.
//  Copyright (c) 2014 Vinícius Uzêda. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController!.supportedInterfaceOrientations
    }

    override var preferredInterfaceOrientationForPresentation : UIInterfaceOrientation {
        return topViewController!.preferredInterfaceOrientationForPresentation
    }

}
