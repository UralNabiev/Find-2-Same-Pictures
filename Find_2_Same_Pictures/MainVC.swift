//
//  MainVC.swift
//  Find_2_Same_Pictures
//
//  Created by O'ral Nabiyev on 08/11/22.
//

import UIKit

class MainVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func startTapped(_ sender: Any) {
        let vc = GameVC(nibName: "GameVC", bundle: nil)
        vc.modalTransitionStyle = .flipHorizontal
        self.present(vc, animated: true)
        
    }
    
    
}
