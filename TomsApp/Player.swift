//
//  Player.swift
//  TomsApp
//
//  Created by juliapetryshena on 9/23/17.
//  Copyright © 2017 tom. All rights reserved.
//
import UIKit
import AVFoundation

class Player: AVAudioPlayer {
    
    var player: AVAudioPlayer?

    func playSound(soundName: String) {
        guard let sound = NSDataAsset(name: soundName) else {
            print("sound  not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(data: sound.data, fileTypeHint:"wav")
            
            player!.play()
        } catch let error {
            print(error.localizedDescription)
        }
}
}
