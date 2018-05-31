//
//  ViewController.swift
//  DemoProject
//
//  Created by Hitender kumar on 31/05/18.
//  Copyright © 2018 Hitender kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView.init()
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        
        //If you want to use Auto Layout to dynamically calculate the size and position of your view, you must set 'translatesAutoresizingMaskIntoConstraints' property to false
        redView.prepareForNewConstraints { (v) in
            //give leading space from superview
            v?.setLeadingSpaceFromSuperView(leadingSpace: 50)
            //give trailing space from superview
            v?.setTrailingSpaceFromSuperView(trailingSpace: -50)
            //give top space from superview
            v?.setTopSpaceFromSuperView(topSpace: 50)
            //give bottom space from superview
            v?.pinHeightConstraint(constant: 200)
        }
        
        let greenView = UIView.init()
        greenView.backgroundColor = UIColor.green
        self.view.addSubview(greenView)
        
        //If you want to use Auto Layout to dynamically calculate the size and position of your view, you must set 'translatesAutoresizingMaskIntoConstraints' property to false
        greenView.prepareForNewConstraints { (v) in
            //center Horizontally view to superview
            v?.centerHorizontallyWithView(view: self.view)
            //give vertical space from nearest neighbour
            v?.setVerticalSpaceFrom(toView: redView, constant: 20)
            //pin width
            v?.pinWidthConstraint(constant: 100)
            //pin height
            v?.pinHeightConstraint(constant: 100)
        }
    }
}

