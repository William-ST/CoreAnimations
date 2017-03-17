//
//  ViewController.swift
//  CoreAnimationEnIOs
//
//  Created by Alumno on 16/03/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mvVista: UIView!
    @IBOutlet weak var btnAnimar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //mvVista.layer.cornerRadius = 30.0
        
        //mvVista.layer.cornerRadius = 30.0
        //mvVista.layer.borderWidth = 2.0
        //mvVista.layer.borderColor = UIColor.yellow.cgColor
        //mvVista.layer.shadowColor = UIColor.black.cgColor
        //mvVista.layer.shadowOffset = CGSize(width: 10, height: 10)
        //mvVista.layer.shadowRadius = 10
        //mvVista.layer.shadowOpacity = 1
        
        
        
        //btnAnimar.layer.cornerRadius = 10.0
        
        self.view.backgroundColor = UIColor.white
        
    }
    
    @IBAction func animationMethodExe(_ sender: UIButton) {
        
        
        let widthFinal = self.mvVista.frame.width/2
        let heightFinal = self.mvVista.frame.height/2
        
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        
        
        animation.fromValue = 30
        animation.toValue = widthFinal/4
        animation.duration = 2
        animation.beginTime = CACurrentMediaTime() + 1.0
        animation.fillMode = kCAFillModeBackwards
        //animation.timingFunction =
        mvVista.layer.add(animation, forKey: "corderRadius")
        mvVista.layer.cornerRadius = widthFinal/4
 
        
        
        let animationBorder = CABasicAnimation(keyPath: "borderWidth")
        
        animationBorder.fromValue = 2
        animationBorder.toValue = 4
        animationBorder.duration = 1.0
        mvVista.layer.add(animationBorder, forKey: "borderWidth")
        mvVista.layer.borderWidth = 4
 
        
        
        let animationColorBorder = CABasicAnimation(keyPath: "borderColor")
        animationColorBorder.fromValue = mvVista.layer.borderColor
        animationColorBorder.toValue = UIColor.yellow.cgColor
        animationColorBorder.duration = 2.0
        
        mvVista.layer.add(animationColorBorder, forKey: "borderColor")
        mvVista.layer.borderColor = UIColor.yellow.cgColor
        
        
        
        /*
        UIView.animate(withDuration: 3.0) { 
            //self.mvVista.layer.cornerRadius = 100.0
            self.mvVista.alpha = 0
        }
        
        UIView.animate(withDuration: 3.0, animations: {
                self.mvVista.alpha = 0.0
            }) { (completion) in
                
                print("terminó animación")
                
        }
        
        UIView.animate(withDuration: 3.0, delay: 2.0, options: .curveEaseInOut, animations: {
            //self.mvVista.alpha = 0.0
            self.mvVista.backgroundColor = UIColor.purple
            }) { (completion) in
                print("terminó animación")
        }
         */
        
        
        let animationBackgroundColor = CABasicAnimation(keyPath: "backgroundColor")
        //3 2 ineaseinput
        
        animationBackgroundColor.duration = 3.0
        animationBackgroundColor.beginTime = CACurrentMediaTime()+1.0
        animationBackgroundColor.fillMode = kCAFillModeBackwards
        animationBackgroundColor.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animationBackgroundColor.fromValue = UIColor.white.cgColor
        animationBackgroundColor.toValue = UIColor.gray.cgColor
        self.view.layer.add(animationBackgroundColor, forKey: "backgroundColor")
        self.view.backgroundColor = UIColor.gray

        
        UIView.animate(withDuration: 3.0) { 
            self.mvVista.frame = CGRect(x: self.mvVista.frame.origin.x, y: self.mvVista.frame.origin.y+250, width: widthFinal, height: heightFinal)
        }
        
        UIView.animate(withDuration: 2.0) { 
            self.mvVista.alpha = 0.5
            
        }
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        
        rotationAnimation.fromValue = 0.0
        rotationAnimation.toValue = M_PI
        rotationAnimation.duration = 5.0
        mvVista.layer.add(rotationAnimation, forKey: "transform.rotation")
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

