//
//  ViewController.swift
//  DebuggingSample
//
//  Created by Nitin gupta on 15/07/15.
//  Copyright (c) 2015 Nitin gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondControllerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func secondControllerAction(sender: AnyObject) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        // Change it to SecondViewController from SecondViewController_1. It will Work Fine.
        var contoller:SecondViewController = storyBoard.instantiateViewControllerWithIdentifier("SecondViewController_1") as! SecondViewController
        self.navigationController!.pushViewController(contoller, animated: true)
        
        contoller.myFirstFunction()

    }

}

