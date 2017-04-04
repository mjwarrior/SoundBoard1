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
        do {
        let session = AVAudioSession.sharedInstance()
        try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try session.overrideOutputAudioPort(.speaker)
        try session.setActive(true)
        
        //Create URl for the audio file
      
            let basePath : String = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true).first!
                let pathComponents = [basePath,"audio.m4a"]
            let audioURL = NSURL.fileURL(withPathComponents: pathComponents)!
            //Create settings for  the audio recorder
      
            
            var settings : [String:AnyObject] = [:]
            settings[AVFormatIDKey] = Int(kAudioFormatMPEG4AAC) as AnyObject? 
            settings[AVSampleRateKey] = 44100.0 as AnyObject?
            settings[AVNumberOfChannelsKey] = 2 as AnyObject?
            
            
        //Create AudioRecorder object
    audioRecorder = try AVAudioRecorder(url: audioURL, settings: settings)
    audioRecorder!.prepareToRecord()
        } catch let error as NSError{
           print(error)
        }
    }
    
    

    @IBAction func recordTapped(_ sender: Any) {
    }
 
    
    @IBAction func playTapped(_ sender: Any) {
    }
   
    
    
    
    @IBAction func addTapped(_ sender: Any) {
    }
}
