//
//  RotationFreeViewController.swift
//  Swift Rotation Demo
//
//  Created by Vinícius Uzêda on 11/12/14.
//  Copyright (c) 2014 Vinícius Uzêda. All rights reserved.
//

import UIKit

class RotationFreeViewController: BaseViewController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.allButUpsideDown
    }

    override var preferredInterfaceOrientationForPresentation : UIInterfaceOrientation {
        return UIInterfaceOrientation.portrait
    }

}
