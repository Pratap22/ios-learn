//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    var player: AVAudioPlayer!
    
    //dictionary
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720 ]
    var timer = Timer()
    var totalSeconds = 0;
    var secondsPassed = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        timer.invalidate()
        secondsPassed = 0
        progressBar.progress = 0.0
        let hardness = sender.currentTitle!
        titleLabel.text = hardness
        totalSeconds = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerAction() {
        if secondsPassed < totalSeconds {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalSeconds)
            
        } else {
            timer.invalidate()
            titleLabel.text = "Done"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    
}
