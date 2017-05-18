//
//  RecordHelper.swift
//  HelloRecordAudio
//
//  Created by Chieh-Wen Yang on 18/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import Foundation
import AVFoundation

class RecordHelper: NSObject, AVAudioRecorderDelegate {
    
    var audioRecorder: AVAudioRecorder?
    var audioPlayer: AVAudioPlayer?
    var isRecording = false
    
    func settingAudioSession(mode: AudioSessionMode) {
        let session = AVAudioSession.sharedInstance()
        do {
            switch mode {
            case .record:
                try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
            case .play:
                try session.setCategory(AVAudioSessionCategoryPlayback)
                try session.setActive(false)
                
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    // 錄製聲音
    func recordAudio() {
        settingAudioSession(mode: .record)
        audioRecorder?.prepareToRecord()
        audioRecorder?.record()
        isRecording = true
    }
    
    // 停止錄音
    func stopRecord() {
        audioRecorder?.stop()
        isRecording = false
        settingAudioSession(mode: .play)
    }
    
    // 播放錄製的聲音
    func playRecordedSound() {
        if isRecording == false {
            audioPlayer?.stop()
            audioPlayer?.currentTime = 0.0
            audioPlayer?.play()
        }
    }
    
    // 停止播放
    func stopPlay() {
        if isRecording == false {
            audioPlayer?.stop()
            audioPlayer?.currentTime = 0.0
        }
    }
    
    override init() {
         
        // Init an audio recorder
        super.init()
        let fileName = "User.wav"
        let path = NSHomeDirectory() + "/Documents" + fileName
        let url = URL(fileURLWithPath: path)
        let recordSettings:[String:Any] = [
            AVEncoderAudioQualityKey: AVAudioQuality.min.rawValue,
            AVEncoderBitRateKey: 16,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey: 44100.0
        ]
        
        do {
            audioRecorder = try AVAudioRecorder(url: url, settings: recordSettings)
            audioRecorder?.delegate = self
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag == true {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: recorder.url)
            } catch {
                
            }
        }
    }
}
