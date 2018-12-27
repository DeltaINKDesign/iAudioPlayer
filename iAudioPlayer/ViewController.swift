//
//  ViewController.swift
//  iAudioPlayer
//
//  Created by Izabela Michalak on 15/12/2018.
//  Copyright © 2018 DeltaINKGames. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer=AVAudioPlayer()
    
    @IBAction func play(_ sender: Any)
    {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any)
    {
        player.pause()
    }
    
    @IBAction func replay(_ sender: Any)
    {
        player.currentTime = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //ERROR
        }
    }


}

