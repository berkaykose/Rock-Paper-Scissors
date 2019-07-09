//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Berkay Köse on 10.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let piecesArray = ["taş","kağıt","makas"]
    var pcChoice:String = ""
    var youChoice:String = ""
    var pcScoreCount = 0
    var youScoreCount = 0
    @IBOutlet weak var youScore: UILabel!
    @IBOutlet weak var pcScore: UILabel!
    @IBOutlet weak var youChoose: UILabel!
    @IBOutlet weak var pcChoose: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    func pcGetsRandom() {
        pcChoice = piecesArray[Int(arc4random_uniform(3))]
        pcChoose.text = "Bilgisayarın seçimi:\(pcChoice)"
    }
    
    @IBAction func rockPressed(_ sender: Any) {
        youChoice = piecesArray[0]
        youChoose.text = "Sizin seçiminiz:\(piecesArray[0])"
        pcGetsRandom()
        if youChoice == "taş" && pcChoice == "kağıt" {
            pcScoreCount += 1
            pcScore.text = "\(pcScoreCount)"
            winnerLabel.text = "Bilgisayar kazandı!"
        }else if youChoice == "taş" && pcChoice == "makas" {
            youScoreCount += 1
            youScore.text = "\(youScoreCount)"
            winnerLabel.text = "Siz kazandınız!"
        }else if youChoice == "taş" && pcChoice == "taş" {
            winnerLabel.text = "Berabere"
        }
        pcChoice = ""
        youChoice = ""
    }
    
    
    @IBAction func paperPressed(_ sender: Any) {
        youChoice = piecesArray[1]
        youChoose.text = "Sizin seçiminiz:\(piecesArray[1])"
        pcGetsRandom()
        if youChoice == "kağıt" && pcChoice == "makas" {
            pcScoreCount += 1
            pcScore.text = "\(pcScoreCount)"
            winnerLabel.text = "Bilgisayar kazandı!"
        }else if youChoice == "kağıt" && pcChoice == "taş" {
            youScoreCount += 1
            youScore.text = "\(youScoreCount)"
            winnerLabel.text = "Siz kazandınız!"
        }else if youChoice == "kağıt" && pcChoice == "kağıt" {
            winnerLabel.text = "Berabere"
        }
        pcChoice = ""
        youChoice = ""
    }
    
    
    @IBAction func scissorsPressed(_ sender: Any) {
        youChoice = piecesArray[2]
        youChoose.text = "Sizin seçiminiz:\(piecesArray[2])"
        pcGetsRandom()
        if youChoice == "makas" && pcChoice == "taş" {
            pcScoreCount += 1
            pcScore.text = "\(pcScoreCount)"
            winnerLabel.text = "Bilgisayar kazandı!"
        }else if youChoice == "makas" && pcChoice == "kağıt" {
            youScoreCount += 1
            youScore.text = "\(youScoreCount)"
            winnerLabel.text = "Siz kazandınız!"
        }else if youChoice == "makas" && pcChoice == "makas" {
            winnerLabel.text = "Berabere"
        }
        pcChoice = ""
        youChoice = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

