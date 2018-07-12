//
//  SchoolViewController.swift
//  GradeCalc
//
//  Created by Gus Petito on 7/11/18.
//  Copyright © 2018 Neil Dhote, Gus Petito. All rights reserved.
//

import UIKit

class SchoolViewController: UIViewController {
    
    //MARK: Properties
    var schoolName: String = ""
    
    //MARK: Outlets
    @IBOutlet weak var ClassName: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        ClassName.text = schoolName
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
