//
//  SecondViewController.swift
//  lifecounter
//
//  Created by Anni Yan on 2/2/19.
//  Copyright © 2019 Anni Yan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var incomingText: String! = nil
    func setIncomingText(incoming: String) {
        self.incomingText = incoming
        print(incoming)
    }
    
    @IBOutlet weak var txtLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if incomingText != nil {
            self.txtLabel.text = incomingText
        }
        
    }

}
