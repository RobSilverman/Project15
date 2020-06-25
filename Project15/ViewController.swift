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

    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                break
            case 1:
                self.imageView.transform = .identity
                break
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -200, y: -200)
                break
            case 3:
                self.imageView.transform = .identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                break
            case 5:
                self.imageView.transform = .identity
            case 6:
                self.imageView.alpha = 0.05
                self.imageView.backgroundColor = .blue
                break
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = .clear
            default:
                break
            }
        }) {
            finished in
            sender.isHidden = false
        }
        
        
        
        
        currentAnimation += 1
        if currentAnimation > 7 { currentAnimation = 0 }
    }
    
}

