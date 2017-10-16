//
//  ColorTools.swift
//  Whatever
//
//  Created by Brailow, Parker on 10/12/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit
public class ColorTools
{
    public func createRandomColor() -> UIColor
    {
        //Need red green and blue values
        let newColor : UIColor
        let redValue : CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue : CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        let blueValue : CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha : CGFloat(1.0))
        return newColor
    }
}
