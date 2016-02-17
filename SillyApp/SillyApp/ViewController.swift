//
//  ViewController.swift
//  SillyApp
//
//  Created by Almeida, Thomas on 12/17/15.
//  Copyright © 2015 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Slider(sender: UISlider)
    {
        let newRed = CGFloat(Double(sender.value))
        
        view.backgroundColor = UIColor(red: newRed, green: CGFloat(1.0), blue: CGFloat(0.745), alpha: 0.1)
    }
    @IBAction func ButtonColor(sender: AnyObject)
    {
        changeColor("random")
    }
    
    @IBAction func whiteButton(sender: UIButton)
    {
        changeColor("white")
    }
    @IBAction func ColorSwitch(sender: (UISwitch))
    {
        if(sender.on)
        {
            view.backgroundColor = UIColor(red: CGFloat(0.999), green: CGFloat(0.4324), blue: CGFloat(0.44), alpha: 1.0)
        }
        else
        {
            view.backgroundColor = UIColor(red: CGFloat(0.001), green: CGFloat (0.134), blue: CGFloat (0.234), alpha: 1.0)
        }
    }
    
    func changeColor(color :String)
    {
        if(color == "random")
        {
          let newRed = CGFloat(Double(arc4random_uniform(256)) / 255.000)
          let newGreen = CGFloat(Double(arc4random_uniform(256)) / 255.000)
          let newBlue = CGFloat(Double(arc4random_uniform(256)) / 255.000)
            
            view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1)
        }
        else if(color == "white")
        {
            view.backgroundColor = UIColor.whiteColor()
        }
        else if(color == "black")
        {
            view.backgroundColor = UIColor.blackColor()
        }
    }
}
