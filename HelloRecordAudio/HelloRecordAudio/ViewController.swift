//
//  ViewController.swift
//  HelloRecordAudio
//
//  Created by Chieh-Wen Yang on 17/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import AVFoundation

enum AudioSessionMode {
    case record
    case play
}

class ViewController: UIViewController, AVAudioRecorderDelegate {
    
    var recordHelper: RecordHelper?
    
    // 錄製聲音
    @IBAction func recordAudio(_ sender: UIButton) {
        recordHelper?.recordAudio()
    }
    
    // 停止錄音
    @IBAction func stopRecord(_ sender: UIButton) {
        recordHelper?.stopRecord()
    }
    
    // 播放錄製的聲音
    @IBAction func playRecordedSound(_ sender: UIButton) {
        recordHelper?.playRecordedSound()
    }
    
    // 停止播放
    @IBAction func stopPlay(_ sender: UIButton) {
        recordHelper?.stopPlay()
    }
    
    // 隱藏狀態列
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recordHelper = RecordHelper()
    }


}

