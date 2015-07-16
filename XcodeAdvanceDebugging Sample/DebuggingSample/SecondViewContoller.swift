//
//  ViewContoller2.swift
//  DebuggingSample
//
//  Created by Nitin gupta on 15/07/15.
//  Copyright (c) 2015 Nitin gupta. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController:UIViewController {
    var nitin:String = ""
    
    private var gupta:Int = 0
    
    var kumar:Double  = 0.0
    
    
    override func viewDidLoad() {
        logFunctionName()
    }
    
    override func didReceiveMemoryWarning() {
        logFunctionName()
    }
    
    internal func myFirstFunction() {
        var val1 = 10
        var val2 = 10.0
        var val3  = Double (val2)/(Double (val1) - Double (val2))
        
        var myString:String = String(stringInterpolationSegment: val3)
        var array = NSArray(array: [myString])
        var mArray:NSMutableArray = array.mutableCopy() as! NSMutableArray
        
        mArray.addObject("Hello Nitin")
        
        print(mArray)
    }

    func logFunctionName(string: String = __FUNCTION__) {
        print(string)
    }
}

