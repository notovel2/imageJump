//
//  ViewController.swift
//  imagejump
//
//  Created by 6272 on 9/21/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var label: UILabel!
    @IBAction func speedMethod(_ sender: Any) {
        imageView.animationDuration = TimeInterval(2-Slider.value)
        
//        if(imageView.isAnimating){
//            label.text = "detected"
//            imageView.stopAnimating()
//            imageView.startAnimating()
//        }
        imageView.startAnimating()
    }
    
    @IBAction func StartStopMethod(_ sender: Any) {
        if(imageView.isAnimating){
            imageView.stopAnimating()
            button.setTitle("Jump", for: UIControlState.normal)
        }
        else{
            imageView.startAnimating()
            button.setTitle("Sit", for: UIControlState.normal)
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageList:[UIImage] = []
        for i in 1...20 {
            let fn = "frame-" + String(format: "%d",i) + ".png"
            let vImage = UIImage(named: fn)
            imageList.append(vImage!)
        }
        imageView.animationImages = imageList
        imageView.animationDuration = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

