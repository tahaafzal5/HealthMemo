//
//  Memo_detailedViewController.swift
//  Health Memo
//
//  Created by Pawan on 10/25/20.
//

import UIKit
import AVFoundation
import Speech

class Memo_detailedViewController: UIViewController {

    @IBOutlet weak var firstQuesLabel: UILabel!
    @IBOutlet weak var secondQuesLabel: UILabel!
    @IBOutlet weak var thirdQuesLabel: UILabel!
    @IBOutlet weak var firstAnsLabel: UILabel!
    @IBOutlet weak var secondAnsLabel: UILabel!
    @IBOutlet weak var thirdAnsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	func speak() {
		let text = "Hi Taha! Can you please rate how you are feeling from 1 to 10?"
		let synthesizer = AVSpeechSynthesizer()
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
		synthesizer.speak(utterance)
		
		let recognizer = SFSpeechRecognizer()
		
		speak2()
	}
	
	func speak2() {
		let text = "Hmm, what symptoms are you experiencing?"
		let synthesizer = AVSpeechSynthesizer()
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
		synthesizer.speak(utterance)
		
		let recognizer = SFSpeechRecognizer()
		
		speak3()
	}
	
	func speak3() {
		let text = "OK. I understand that. Did you feel your body temperature today was higher than it usualy is?"
		let synthesizer = AVSpeechSynthesizer()
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
		synthesizer.speak(utterance)
		
		let recognizer = SFSpeechRecognizer()
		
		speak4()
	}
	
	func speak4() {
		let text = "I have saved this as a memo for you."
		let synthesizer = AVSpeechSynthesizer()
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
		synthesizer.speak(utterance)
		
		let recognizer = SFSpeechRecognizer()
	}
	

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
