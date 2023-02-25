//
//  ViewController.swift
//  My First App
//
//  Created by admin on 2022/12/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLB: UILabel!
    
    private lazy var targetValue: Int = 0
    private lazy var currnetValue = 0
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpTitleLabel()
        // Do any additional setup after loading the view.
    }
    
    
    func setUpTitleLabel() {
        targetValue = Int.random(in: 1 ... 100)
        titleLB.text = "Ushbu qiymatni top \(targetValue)"
    }
    
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        currnetValue = Int(sender.value * 100)
        print(currnetValue)
        
    }
     
    @IBAction func ShowAlert(_ sender: UIButton) {
        let resaltValue = abs(targetValue - currnetValue)
        var message = ""
        
        if resaltValue == 0 {
            message = "Sen yutting"
        } else {
            message = "Target value was \(targetValue) but your value \(currnetValue) diff \(resaltValue) Play again! "
        }
        
        let alert  = UIAlertController(title: "Result ", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "ok", style: .default)
        
        alert.addAction(action)
        
        present(alert,  animated: true){
            self.setUpTitleLabel()
        }
        
    }
}
    
        
       


