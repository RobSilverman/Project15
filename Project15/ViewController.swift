//
//  ViewController.swift
//  Project15
//
//  Created by Robert Silverman on 6/24/20.
//  Copyright © 2020 Robert Silverman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentAnimation = 0
    var imageView: UIImageView {
        let iv = UIImageView(image: UIImage(named: "penguin"))
        iv.center = CGPoint(x: 512, y: 384)
        return iv
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
    }

    @IBAction func tapped(_ sender: Any) {
        currentAnimation += 1
        if currentAnimation > 7 { currentAnimation = 0 }
    }
    
}

