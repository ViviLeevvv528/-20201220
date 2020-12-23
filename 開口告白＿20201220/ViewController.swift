import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var talkField: UITextField!
    @IBOutlet weak var pitchSlider: UISlider!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var pitchText: UILabel!
    @IBOutlet weak var speedText: UILabel!
    @IBOutlet weak var talkButton: UIButton!
    @IBOutlet weak var languageSegment: UISegmentedControl!
    
    @IBOutlet weak var catBtn: UIButton!
    @IBOutlet weak var fragBtn: UIButton!
    @IBOutlet weak var dogBtn: UIButton!
    @IBOutlet weak var pandaBtn: UIButton!
    @IBOutlet weak var monkeyBtn: UIButton!
    @IBOutlet weak var lionBtn: UIButton!
    @IBOutlet weak var pigBtn: UIButton!
    @IBOutlet weak var sheepBtn: UIButton!
    @IBOutlet weak var tigerBtn: UIButton!
    

    @IBAction func tuneSlider(_ sender: Any) {
        pitchText.text = String(format: "%.1f", pitchSlider.value)
        speedText.text = String(format: "%.1f", speedSlider.value)
    }
    @IBAction func talkStart(_ sender: Any) {
        view.endEditing(true)
        let sayLove = AVSpeechUtterance(string: talkField.text!)
        let synthesizer = AVSpeechSynthesizer()
        sayLove.voice = AVSpeechSynthesisVoice(language: "zh-TW")
          sayLove.pitchMultiplier = pitchSlider.value
          sayLove.rate = speedSlider.value
        synthesizer.speak(sayLove)
    }
//    @IBAction func languageSegment(_ sender: UISegmentedControl) {
//
//                
//    }
    @IBAction func animalTalk(_ sender: UIButton) {
                var animalmessage = AVSpeechUtterance()
                if languageSegment.selectedSegmentIndex == 0{
                    animalmessage.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    if sender == catBtn{
                        animalmessage = AVSpeechUtterance(string: "貓")
                    }
                    else if sender == fragBtn{
                        animalmessage = AVSpeechUtterance(string: "青蛙")
                    }
//                    else if sender == dogBtn{
//                        animalmessage = AVSpeechUtterance(string: "狗")
//                    }
                    else {
                        animalmessage = AVSpeechUtterance(string: "狗")
                    }
//                    else if sender == pandaBtn{
//                        let PandaName = AVSpeechUtterance(string: "熊貓")
//                    }
//                    else if sender == monkeyBtn{
//                        let MonkeyName = AVSpeechUtterance(string: "猴子")
//                    }
//                    else if sender == lionBtn{
//                        let LionName = AVSpeechUtterance(string: "獅子")
//                    }
//                    else if sender == pigBtn{
//                        let PigName = AVSpeechUtterance(string: "小豬")
//                    }
//                    else if sender == sheepBtn{
//                        let SheepName = AVSpeechUtterance(string: "綿羊")
//                    }
//                    if sender == tigerBtn{
//                        let TigerName = AVSpeechUtterance(string: "老虎")
//                    }
                        }
//                else if languageSegment.selectedSegmentIndex == 1{
                else {
                            animalmessage.voice = AVSpeechSynthesisVoice(language: "en-US")
                    if sender == catBtn{
                        animalmessage = AVSpeechUtterance(string: "cat")
                    }
                    if sender == fragBtn{
                        animalmessage = AVSpeechUtterance(string: "frag")
                    }
                    if sender == dogBtn{
                        animalmessage = AVSpeechUtterance(string: "dog")
                    }
//                    if sender == pandaBtn{
//                        let PandaName = AVSpeechUtterance(string: "panda")
//                    }
//                    if sender == monkeyBtn{
//                        let MonkeyName = AVSpeechUtterance(string: "monkey")
//                    }
//                    if sender == lionBtn{
//                        let LionName = AVSpeechUtterance(string: "lion")
//                    }
//                    if sender == pigBtn{
//                        let PigName = AVSpeechUtterance(string: "pig")
//                    }
//                    if sender == sheepBtn{
//                        let SheepName = AVSpeechUtterance(string: "sheep")
//                    }
//                    if sender == tigerBtn{
//                        let TigerName = AVSpeechUtterance(string: "tiger")
//                    }
                        }

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(animalmessage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
}

