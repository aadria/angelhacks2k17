//
//  ViewController.swift
//  getFit
//
//  Created by Baker Humadi on 7/29/17.
//  Copyright © 2017 Baker Humadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickMe(_ sender: Any) {
        print("baker testing")
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

