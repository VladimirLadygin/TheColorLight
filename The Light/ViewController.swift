//
//  ViewController.swift
//  The Light
//
//  Created by Владимир Ладыгин on 26.10.2020.
//

import UIKit

class ViewController: UIViewController {

    var lightColor: Int = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateUI()
        
    }
        fileprivate func updateUI() {
        switch lightColor {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .yellow
        case 2:
            view.backgroundColor = .green
        case 3:
            view.backgroundColor = .red
        default:
            view.backgroundColor = .white
            lightColor = 0
        }

}
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            lightColor += 1
            updateUI()
        }
    
}

