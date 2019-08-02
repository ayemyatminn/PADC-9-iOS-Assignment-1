//
//  ViewController.swift
//  Assignment_1
//
//  Created by Aye Myat Minn on 8/1/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDateOfBirth: UITextField!
    
    var selectedGender: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func scGender(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            selectedGender = "Male"
            break
        case 1:
            selectedGender = "Female"
            break
        default:
            break
        }
    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: DetailViewController.identifier) as! DetailViewController
        vc.dateOfBitth = lblDateOfBirth.text ?? ""
        vc.gender = selectedGender
        self.present(vc,animated: true,completion: nil)
    }
    
}

