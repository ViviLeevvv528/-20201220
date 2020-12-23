import UIKit
import AVFoundation
class ViewController: UIViewController {
//    輸入文字發聲音
    @IBOutlet weak var talkField: UITextField!
    @IBOutlet weak var pitchSlider: UISlider!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var pitchText: UILabel!
    @IBOutlet weak var speedText: UILabel!
    @IBOutlet weak var talkButton: UIButton!
    @IBOutlet weak var languageSegment: UISegmentedControl!
//    動物名字
    @IBOutlet weak var catBtn: UIButton!
    @IBOutlet weak var fragBtn: UIButton!
    @IBOutlet weak var dogBtn: UIButton!
    @IBOutlet weak var pandaBtn: UIButton!
    @IBOutlet weak var monkeyBtn: UIButton!
    @IBOutlet weak var lionBtn: UIButton!
    @IBOutlet weak var pigBtn: UIButton!
    @IBOutlet weak var sheepBtn: UIButton!
    @IBOutlet weak var tigerBtn: UIButton!
//    調整音調速度要顯示value
    @IBAction func tuneSlider(_ sender: Any) {
        pitchText.text = String(format: "%.1f", pitchSlider.value)
        speedText.text = String(format: "%.1f", speedSlider.value)
    }
//    觸發btn會念輸入的文字
    @IBAction func talkStart(_ sender: Any) {
        view.endEditing(true)
        let sayLove = AVSpeechUtterance(string: talkField.text!)
        let synthesizer = AVSpeechSynthesizer()
        sayLove.voice = AVSpeechSynthesisVoice(language: "zh-TW")
          sayLove.pitchMultiplier = pitchSlider.value
          sayLove.rate = speedSlider.value
        synthesizer.speak(sayLove)
    }
//動物名稱的觸發，是點選按鈕發聲所以不用做segment的func
    @IBAction func animalTalk(_ sender: UIButton) {
                var animalmessage = AVSpeechUtterance()
//  用if做中文選項後做動物按鈕定義
                if languageSegment.selectedSegmentIndex == 0{
                    
                    if sender == catBtn{
                        animalmessage = AVSpeechUtterance(string: "貓啦")
                    }
                    if sender == fragBtn{
                        animalmessage = AVSpeechUtterance(string: "青蛙")
                    }
                    if sender == dogBtn {
                        animalmessage = AVSpeechUtterance(string: "狗啊 不然是豬嗎")
                    }
                    if sender == pandaBtn{
                        animalmessage = AVSpeechUtterance(string: "胖達")
                    }
                    if sender == monkeyBtn{
                        animalmessage = AVSpeechUtterance(string: "悟空")
                    }
                    if sender == lionBtn{
                        animalmessage = AVSpeechUtterance(string: "獅子合唱團")
                    }
                    if sender == pigBtn{
                        animalmessage = AVSpeechUtterance(string: "羅志祥")
                    }
                    if sender == sheepBtn{
                        animalmessage = AVSpeechUtterance(string: "綿羊")
                    }
                    if sender == tigerBtn{
                        animalmessage = AVSpeechUtterance(string: "兩隻老虎")
                    }
//                    語言設定一定要放發音後面
                    animalmessage.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    
                }
//                接著做英文發音
                else {
                            
                    if sender == catBtn{
                        animalmessage = AVSpeechUtterance(string: "cat")
                    }
                    if sender == fragBtn{
                        animalmessage = AVSpeechUtterance(string: "frog")
                    }
                    if sender == dogBtn{
                        animalmessage = AVSpeechUtterance(string: "dog")
                    }
                    if sender == pandaBtn{
                        animalmessage = AVSpeechUtterance(string: "panda")
                    }
                    if sender == monkeyBtn{
                        animalmessage  = AVSpeechUtterance(string: "monkey")
                    }
                    if sender == lionBtn{
                        animalmessage = AVSpeechUtterance(string: "lion")
                    }
                    if sender == pigBtn{
                        animalmessage = AVSpeechUtterance(string: "pig")
                    }
                    if sender == sheepBtn{
                        animalmessage = AVSpeechUtterance(string: "sheep")
                    }
                    if sender == tigerBtn{
                        animalmessage = AVSpeechUtterance(string: "tiger")
                    }
                    animalmessage.voice = AVSpeechSynthesisVoice(language: "en-US")
                }

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(animalmessage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
}

