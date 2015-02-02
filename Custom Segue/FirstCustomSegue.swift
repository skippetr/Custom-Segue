//
//  FirstCustomSegue.swift
//  Custom Segue
//
//  Created by user on 31.01.15.
//  Copyright (c) 2015 Goxit Design. All rights reserved.
//

import UIKit

class FirstCustomSegue: UIStoryboardSegue {
   
    override func perform() {
        var firstVCView = sourceViewController.view as UIView!
        var secondVCView = destinationViewController.view as UIView!
        
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        secondVCView.frame = CGRectMake(0, screenHeight, screenWidth, screenHeight)
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(secondVCView, aboveSubview: firstVCView)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, 0.0, -screenHeight)
            secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, -screenHeight)
            }, completion:{ finish in
                self.sourceViewController.presentViewController(self.destinationViewController as UIViewController, animated: false, completion: nil)
        })
    }
    
}
