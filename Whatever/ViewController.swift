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
   
    private lazy var colorTool : ColorTools = ColorTools()
    @IBOutlet weak var Button: UIButton!
    
    @IBAction func Click(_ sender: UIButton)
    {

        Button.backgroundColor = colorTool.createRandomColor()
        view.backgroundColor = colorTool.createRandomColor()
        Button.setTitleColor(colorTool.createRandomColor(), for: .normal)
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

