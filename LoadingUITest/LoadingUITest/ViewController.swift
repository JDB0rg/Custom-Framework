//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Madison Waters on 10/24/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    
    @IBAction func triggerAnimationButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToLoadView" {
            let destinationVC = segue.destination as! LoadingViewController
            destinationVC.startAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                destinationVC.dismiss(animated: true){}
            }
        }
    }

}

