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
    var animalmessage = AVSpeechUtterance(string: "")
    @IBAction func languageSegment(_ sender: UISegmentedControl) {
//        let animalmessage = AVSpeechUtterance()
        if languageSegment.selectedSegmentIndex == 0{
            animalmessage.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                }
        else if languageSegment.selectedSegmentIndex == 1{
                    animalmessage.voice = AVSpeechSynthesisVoice(language: "en-US")
                }
    }

    @IBAction func animalTalk(_ sender: UIButton) {
//        let animalArray = [catBtn,fragBtn,dogBtn,pandaBtn,monkeyBtn,lionBtn,pigBtn,sheepBtn,tigerBtn]
//        let chineseArray=["貓","青蛙","狗","熊貓","猴子","獅子","豬","綿羊","老虎"]
//        let englishArray=["cat","frag","dog","panda","monkey","lion","pig","sheep","tiger"]
//        let chineseTalk = chineseArray[IndexPath.row]
//        let englishTalk = englishArray[IndexPath.row]
        
        animalmessage = AVSpeechUtterance(string: "cat")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(animalmessage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
}

