//
//  ViewController.swift
//  lifecounter
//
//  Created by Anni Yan on 1/29/19.
//  Copyright © 2019 Anni Yan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var begin = [20, 20, 20, 20]
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var player1status: UILabel!
    @IBOutlet weak var player2status: UILabel!
    @IBOutlet weak var player3status: UILabel!
    @IBOutlet weak var player4status: UILabel!
    @IBOutlet weak var newGame: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func play(sender: UIButton) {
        switch sender.titleLabel!.text {
        case "-5":
            begin[sender.tag - 1] -= 5
        case "-1":
            begin[sender.tag - 1] -= 1
        case "+1":
            begin[sender.tag - 1] += 1
        case "+5":
            begin[sender.tag - 1] += 5
        default:
            return
        }
        for num in 0...3 {
            if begin[num] < 1 {
                begin[num] = 0
            }
        }
        
        if begin[0] == 0{
            player1status.text = "Player 1 LOSES!"
        }
        
        if begin[1] == 0{
            player2status.text = "Player 2 LOSES!"
        }
        
        if begin[2] == 0{
            player3status.text = "Player 3 LOSES!"
        }
        
        if begin[3] == 0{
            player4status.text = "Player 4 LOSES!"
        }
        
        player1.text = String(begin[0])
        player2.text = String(begin[1])
        player3.text = String(begin[2])
        player4.text = String(begin[3])
    }

    @IBAction func newgame(_ sender: Any) {
        begin = [20, 20, 20, 20]
        player1.text = String(begin[0])
        player2.text = String(begin[1])
        player3.text = String(begin[2])
        player4.text = String(begin[3])
        player1status.text = ""
        player2status.text = ""
        player3status.text = ""
        player4status.text = ""
        
        let alert = UIAlertController(title: "My Alert", message: "New Game has started!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: {
            print("This is hte completion handler for the present() code")
        })
        
    }
    
}

