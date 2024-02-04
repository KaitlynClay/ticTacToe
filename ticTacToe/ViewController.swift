//
//  ViewController.swift
//  ticTacToe
//
//  Created by student on 2/1/24.
//


import UIKit

class ViewController: UIViewController {
    
    enum Turn {
        case Xs
        case Os
    }
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var turn1 = Turn.Xs
    var curTurn = Turn.Os
    var XS = UIImage(named: "x")
    var OS = UIImage(named: "o")
    var board = [UIButton]()
    
    let btnSize = CGSize(width: 100, height: 100)
    
    @IBAction func boardAction(_ sender: UIButton) {
        addToBoard(sender)
    }
    
    func addToBoard(_ sender: UIButton) {
        if(sender.image(for: .normal) == nil) {
            if (curTurn == Turn.Xs) {
                sender.setTitle("X", for: .normal)
                curTurn = Turn.Os
                turnLabel.text = "O"
            } else if (curTurn == Turn.Os) {
                sender.setTitle("O", for: .normal)
                curTurn = Turn.Xs
                turnLabel.text = "X"
            }
        }
        
        //    func addToBoard(_ sender: UIButton) {
        //        if(sender.image(for: .normal) == nil) {
        //            if (curTurn == Turn.Xs) {
        //                sender.setImage(UIImage(named: "x"), for: .normal)
        //                curTurn = Turn.Os
        //                turnLabel.text = "O"
        //            } else if (curTurn == Turn.Os) {
        //                sender.setImage(UIImage(named: "o"), for: .normal)
        //                curTurn = Turn.Xs
        //                turnLabel.text = "X"
        //            }
        //            sender.isEnabled = false
        //        }
        //    }
        
        func viewDidLoad() {
            super.viewDidLoad()
            
            a1.frame.size = btnSize
            a2.frame.size = btnSize
            a3.frame.size = btnSize
            b1.frame.size = btnSize
            b2.frame.size = btnSize
            b3.frame.size = btnSize
            c1.frame.size = btnSize
            c2.frame.size = btnSize
            c3.frame.size = btnSize
            
            
            
            
        }
    }
    
}
