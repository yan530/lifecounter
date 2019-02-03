//
//  ViewController.swift
//  lifecounter
//
//  Created by Anni Yan on 1/29/19.
//  Copyright © 2019 Anni Yan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var playerNum = 4
    var move = "hi"
    var winner = 4

    @IBOutlet weak var play1: UILabel!
    @IBOutlet weak var play2: UILabel!
    @IBOutlet weak var play3: UILabel!
    @IBOutlet weak var play4: UILabel!
    @IBOutlet weak var play5: UILabel!
    @IBOutlet weak var play6: UILabel!
    @IBOutlet weak var play7: UILabel!
    @IBOutlet weak var play8: UILabel!

    @IBOutlet weak var newGame: UIButton!
    
    @IBOutlet weak var less1: UITextField!
    @IBOutlet weak var less2: UITextField!
    @IBOutlet weak var less3: UITextField!
    @IBOutlet weak var less4: UITextField!
    @IBOutlet weak var less5: UITextField!
    @IBOutlet weak var less6: UITextField!
    @IBOutlet weak var less7: UITextField!
    @IBOutlet weak var less8: UITextField!

    @IBOutlet weak var lose1: UILabel!
    @IBOutlet weak var lose2: UILabel!
    @IBOutlet weak var lose3: UILabel!
    @IBOutlet weak var lose4: UILabel!
    @IBOutlet weak var lose5: UILabel!
    @IBOutlet weak var lose6: UILabel!
    @IBOutlet weak var lose7: UILabel!
    @IBOutlet weak var lose8: UILabel!

    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!

    @IBOutlet weak var add: UIButton!
    
    @IBOutlet weak var p1: UITextField!
    @IBOutlet weak var p2: UITextField!
    @IBOutlet weak var p3: UITextField!
    @IBOutlet weak var p4: UITextField!
    @IBOutlet weak var p5: UITextField!
    @IBOutlet weak var p6: UITextField!
    @IBOutlet weak var p7: UITextField!
    @IBOutlet weak var p8: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view8.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SecondViewController = segue.destination as! SecondViewController
        SecondViewController.setIncomingText(incoming: move)
        print("hi")
    }

    @IBAction func addPlayer(_ sender: UIButton) {
        playerNum += 1
        winner = playerNum
        switch playerNum {
        case 5:
            view5.isHidden = false
        case 6:
            view6.isHidden = false
        case 7:
            view7.isHidden = false
        case 8:
            view8.isHidden = false
            sender.isEnabled = false
        default:
            sender.isEnabled = false
            
        }
    }
    @IBAction func play(_ sender: UIStepper) {
        if (winner == 1){
            newgame(newGame)
        } else {
            add.isEnabled = false
            let num = sender.value
            switch sender.tag {
            case 0:
                sender.stepValue = Double(less1.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 1 LOSES!"
                    lose1.text = "Player 1 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 1 now have \(num) life!"
                }
                play1.text = String(Int(num))
            case 1:
                sender.stepValue = Double(less2.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 2 LOSES!"
                    lose2.text = "Player 2 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 2 now have \(num) life!"
                }
                play2.text = String(Int(num))
            case 2:
                sender.stepValue = Double(less3.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 3 LOSES!"
                    lose3.text = "Player 3 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 3 now have \(num) life!"
                }
                play3.text = String(Int(num))
            case 3:
                sender.stepValue = Double(less4.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 4 LOSES!"
                    lose4.text = "Player 4 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 4 now have \(num) life!"
                }
                play4.text = String(Int(num))
            case 4:
                sender.stepValue = Double(less5.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 5 LOSES!"
                    lose5.text = "Player 5 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 5 now have \(num) life!"
                }
                play5.text = String(Int(num))
            case 5:
                sender.stepValue = Double(less6.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 6 LOSES!"
                    lose6.text = "Player 6 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 6 now have \(num) life!"
                }
                play6.text = String(Int(num))
            case 6:
                sender.stepValue = Double(less7.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 7 LOSES!"
                    lose7.text = "Player 7 LOSES!"
                    sender.maximumValue = 0.0
                } else {
                    move = "Player 7 now have \(num) life!"
                }
                play7.text = String(Int(num))
            default :
                sender.stepValue = Double(less8.text!)!
                if num < 1.0 {
                    winner -= 1
                    move = "Player 8 LOSES!"
                    lose8.text = "Player 8 LOSES!"
                } else {
                    move = "Player 8 now have \(num) life!"
                }
                play8.text = String(Int(num))
            }
        }
    }
    
    @IBAction func newgame(_ sender: UIButton) {
        play1.text = "20"
        play2.text = "20"
        play3.text = "20"
        play4.text = "20"
        play5.text = "20"
        play6.text = "20"
        play7.text = "20"
        play8.text = "20"
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view8.isHidden = true
        add.isEnabled = true
        p1.text = "Player 1"
        p2.text = "Player 2"
        p3.text = "Player 3"
        p4.text = "Player 4"
        p5.text = "Player 5"
        p6.text = "Player 6"
        p7.text = "Player 7"
        p8.text = "Player 8"
        
        let alert = UIAlertController(title: "My Alert", message: "Game Over!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: {
            print("This is hte completion handler for the present() code")
        })
        
    }

    
}

