//
//  ViewController.swift
//  avSpeechSynthesizer
//
//  Created by 伊藤明孝 on 2021/06/30.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var speechSynthesizer: AVSpeechSynthesizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.speechSynthesizer = AVSpeechSynthesizer()
        //読み上げる、文字、言語などの設定
        let utterance = AVSpeechUtterance(string: "こんにちは")//読み上げる文字
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")//言語
        utterance.rate = 0.5;  //読み上げる声のピッチ
        utterance.preUtteranceDelay = 0.2;
        self.speechSynthesizer.speak(utterance)
    }
    
    


}

