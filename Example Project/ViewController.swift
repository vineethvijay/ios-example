//
//  ViewController.swift
//  Example Project
//
//  Created by iYrke on 1/5/17.
//  Copyright © 2017 iYrke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var welcomeMessage: UILabel!

    var contentProvider: ContentProvider?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        contentProvider = ContentProvider(welcomeMessage: "This is my view!", prefix: "PAUL RULES!!", suffix: "IT WORKED!!")
        welcomeMessage.text = contentProvider?.welcomeMessage ?? ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

