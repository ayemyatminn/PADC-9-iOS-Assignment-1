//
//  DetailViewController.swift
//  Assignment_1
//
//  Created by Aye Myat Minn on 8/2/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    static let identifier = "DetailViewController"
    
    @IBOutlet weak var lblDateofBirth: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    var dateOfBitth: String = ""
    var gender: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDateofBirth.text = dateOfBitth
        lblGender.text = gender
    }
    


}
