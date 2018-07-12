//
//  ViewController.swift
//  GradeCalc
//
//  Created by Neil Dhote on 7/10/18.
//  Copyright © 2018 Neil Dhote, Gus Petito. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: IBOutlets
    @IBOutlet var tableView: UITableView!
    
    struct MyData{
        var firstRowLabel: String
        var secondRowLabel: String
    }
    
    var tableData: [MyData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableData = [
            MyData(firstRowLabel: "Discrete Math", secondRowLabel: "56%"),
            MyData(firstRowLabel: "US History", secondRowLabel: "33%"),
            MyData(firstRowLabel: "Sculpting", secondRowLabel: "12%")
        ]
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! SchoolViewController
        guest.schoolName = tableData[tableView.indexPathForSelectedRow?.row as! Int].firstRowLabel
    }
    
    //MARK: UITableViewDelegate Methods
    
    
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

}

