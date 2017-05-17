//
//  ViewController.swift
//  HelloPlayAudio
//
//  Created by Chieh-Wen Yang on 17/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?
    
    @IBAction func play(_ sender: UIButton) {
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0.0
        audioPlayer?.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Find sound path
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3") {
            // path to url
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.enableRate = true
                audioPlayer?.rate = 2.0
                audioPlayer?.numberOfLoops = -1
            } catch {
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
