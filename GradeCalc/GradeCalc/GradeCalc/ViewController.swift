//
//  ViewController.swift
//  GradeCalc
//
//  Created by Neil Dhote on 7/10/18.
//  Copyright © 2018 Neil Dhote, Gus Petito. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct MyData{
        var firstRowLabel: String
        var secondRowLabel: String
    }
    
    var tableData: [MyData] = []
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //The amount of rows we want in our table
        return(tableData.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "SchoolCell") as! SchoolTableViewCell
        cell.ClassName.text = tableData[indexPath.row].firstRowLabel
        cell.Grade.text = tableData[indexPath.row].secondRowLabel
        return(cell)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableData = [
            MyData(firstRowLabel: "Discrete Math", secondRowLabel: "56%"),
            MyData(firstRowLabel: "US History", secondRowLabel: "33%"),
            MyData(firstRowLabel: "Sculpting", secondRowLabel: "12%")
        ]
    }

}

