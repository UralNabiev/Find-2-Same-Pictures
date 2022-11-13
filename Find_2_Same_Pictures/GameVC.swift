//
//  GameVC.swift
//  Find_2_Same_Pictures
//
//  Created by O'ral Nabiyev on 08/11/22.
//

import UIKit

class GameVC: UIViewController {
    
    @IBOutlet var collectionBtn: [UIButton]!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet var collectionViewBtn: [UIView]!
    
    var imgArr: [String] = ["Img1","Img1","Img2","Img2","Img3","Img3","Img4","Img4","Img5","Img5","Img6","Img6","Img7","Img7","Img8","Img8"]
    var countTapped = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAnimation()
        imgArr.shuffle()
        
        
    }
    
    
    
    
    func setAnimation() {
        
        for btn in collectionViewBtn.enumerated() {
            UIView.animateKeyframes(withDuration: 1, delay: 1) {
                //                let fullRotation = CABasicAnimation(keyPath: "transform.rotation")
                //                fullRotation.delegate = self
                //                fullRotation.fromValue = NSNumber(floatLiteral: 0)
                //                fullRotation.toValue = NSNumber(floatLiteral: Double(CGFloat.pi * 2))
                //                fullRotation.duration = 0.5
                //                fullRotation.repeatCount = 1
                //                self.btn.layer.add(fullRotation, forKey: "360")
                
                //                let button = UIButton()
                //                button.frame = CGRect(x: self.view.frame.size.width/2, y: 150, width: 50, height: 50)
                //                button.backgroundColor = UIColor.red
                //                button.setTitle("Name your Button ", for: .normal)
                //                button.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
                //                self.view.addSubview(button)
                
            }
        }
        
        
    }
    
    @objc func buttonAction() {
        
    }
    
    //    func shuffleArray(Index: Int) -> String {
    //
    //        return imgArr[Index]
    //
    //    }
    
    
    @IBAction func collectionTapped(_ sender: UIButton) {
        countTapped += 1
        var senderTag = 0
        
        
        if countTapped == 1 {
            sender.setImage(UIImage(named: imgArr[sender.tag]), for: .normal)
            senderTag = sender.tag
        } else if countTapped == 2 {
            sender.setImage(UIImage(named: imgArr[sender.tag]), for: .normal)
            for btn in collectionBtn {
                if sender.currentImage == btn.currentImage {
                    print("ooo")
                    btn.isHidden = true
                    sender.isHidden = true
                } else {
                    btn.setImage(UIImage(named: "question_mark"), for: .normal)
                    sender.setImage(UIImage(named: "question_mark"), for: .normal)
                }
            }
            countTapped = 0
        }
        
        
        //        if tapCount == 1 {
        //            imgArr.shuffle()
        //            sender.setImage(UIImage(named: imgArr[sender.tag]), for: .normal)
        //        } else {
        //            sender.setImage(UIImage(named: imgArr[sender.tag]), for: .normal)
        //        }
        
        
        
        
    }
    
    
    
    
}

//extension GameVC{
//        func rotate() {
//            for btn in collectionBtn.enumerated() {
//                let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
//                rotation.toValue = NSNumber(value: Double.pi * 2)
//                rotation.duration = 1
//                rotation.isCumulative = true
//                rotation.repeatCount = Float.greatestFiniteMagnitude
//                self.layer.add(rotation, forKey: "rotationAnimation")
//            }
//
//    }
//}

extension GameVC: CAAnimationDelegate {
    
}
