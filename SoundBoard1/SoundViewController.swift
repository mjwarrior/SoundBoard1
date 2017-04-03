//
//  SoundViewController.swift
//  SoundBoard1
//
//  Created by Marc Streeter on 4/3/17.
//  Copyright © 2017 Developer Warriors. All rights reserved.
//

import UIKit
import AVFoundation



class SoundViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
   
    @IBOutlet weak var recordButton: UIButton!
   
    var audioRecorder : AVAudioRecorder? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupRecorder()
    }
    
    func setupRecorder() {
    
        //Create an audio session 
        let session = AVAudioSession.sharedInstance()
        session.setCategory(AVAudioSessionCategoryPlayAndRecord))
        session.overrideOutputAudioPort(.speaker)
        session.setActive(true)
        
        //Create URl for the audio file
      
        
        //Create settings for  the audio recorder
      
        
        //Create AudioRecorder object
    audioRecorder = AVAudioRecorder(url: <#T##URL#>, settings: <#T##[String : Any]#>)
    
    }
    
    

    @IBAction func recordTapped(_ sender: Any) {
    }
 
    
    @IBAction func playTapped(_ sender: Any) {
    }
   
    
    
    
    @IBAction func addTapped(_ sender: Any) {
    }
}
