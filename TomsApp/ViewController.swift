//
//  ViewController.swift
//  TomsApp
//
//  Created by juliapetryshena on 9/23/17.
//  Copyright © 2017 tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet var tadGesture: UITapGestureRecognizer!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!

    var imageCounter = 1
    var audioPlayer = Player()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainImageView.image =  UIImage(named: "1.png")
    }
    
    func setupNewImage() {
        imageCounter = imageCounter + 1
        if imageCounter > 16 {
            imageCounter = 1
        }
        self.mainImageView.image =  UIImage(named: "\(imageCounter).png")

    }

    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        audioPlayer.playSound(soundName: "Sound1")
        self.setupNewImage()
    }
    
    @IBAction func swipeAction(_ sender: UISwipeGestureRecognizer) {
        audioPlayer.playSound(soundName: "Sound2")
    }
}

