import UIKit

class ViewController: UIViewController {
    
    let step:Float = 10 // UISlider snaps by 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sampleSlider = UISlider(frame:CGRect(x: 10, y: 100, width: 400, height: 40))
        sampleSlider.minimumValue = 0
        sampleSlider.maximumValue = 100
        sampleSlider.isContinuous = true
        sampleSlider.tintColor = UIColor.red
        sampleSlider.addTarget(self, action: #selector(ViewController.sliderValueDidChange(_:)), for: .valueChanged)
        self.view.addSubview(sampleSlider) 
    }
    
    func sliderValueDidChange(_ sender:UISlider!) {
        print("UI Slider Value changed")
        // Use this code below only if you want UISlider to snap to values step by step
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        print("Slider step value \(Int(roundedStepValue))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }  
}
