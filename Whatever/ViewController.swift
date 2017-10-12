//
//  ViewController.swift
//  Whatever
//
//  Created by Brailow, Parker on 10/10/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    private func createRandomColor() -> UIColor
    {
        let newColor : UIColor
        let redValue : CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue : CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        let blueValue : CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha : CGFloat(1.0))
        return newColor
    }

    @IBOutlet weak var Button: UIButton!
    @IBAction func Click(_ sender: UIButton)
    {
        Button.backgroundColor = createRandomColor()
        view.backgroundColor = createRandomColor()
        Button.setTitleColor(createRandomColor(), for: .normal)
//        if (Button.backgroundColor == .purple)
//        {
//            Button.backgroundColor = .orange
//        }
//        else
//        {
//            Button.backgroundColor = .black
//        }
        
    }
    @IBOutlet var Counter: UILabel!
    
    @IBOutlet var stepper: UIStepper!
    @IBAction func ChangeCounter(_ sender: UIStepper)
    {
        Counter.text = "/(stepper.value)"
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

