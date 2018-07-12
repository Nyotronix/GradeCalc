//
//  SchoolTableViewCell.swift
//  GradeCalc
//
//  Created by Gus Petito on 7/11/18.
//  Copyright © 2018 Neil Dhote, Gus Petito. All rights reserved.
//

import UIKit

class SchoolTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var ClassName: UILabel!
    @IBOutlet weak var Grade: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
