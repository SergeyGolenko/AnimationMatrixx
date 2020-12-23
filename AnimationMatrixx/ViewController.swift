//
//  ViewController.swift
//  AnimationMatrixx
//
//  Created by Сергей Голенко on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    var timerMatrixx = Timer()
    
    var flag = true
    
    
    @IBOutlet weak var titleButton: UIButton!
    @IBAction func startAndStopAnimation(_ sender: Any) {
      goAnimation()
        
    }
    
    
    @IBOutlet weak var matrixxImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    func goAnimation(){
        if flag {
            timerMatrixx = Timer.scheduledTimer(timeInterval:0.1, target: self, selector: #selector(updateImage), userInfo: nil, repeats: true)
            titleButton.setTitle("Stop", for: .normal)
            flag = false
            
        } else {
            timerMatrixx.invalidate()
            titleButton.setTitle("Start", for: .normal)
            flag = true
            
            
        }
        
    }
    
    
   @objc func updateImage(){
        matrixxImage.image = UIImage(named: "frame_\(count)_delay-0.05s")
        count += 1
        if count == 37 {
            count = 0
        }
    }

}

