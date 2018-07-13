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
    @IBOutlet weak var SchoolTableView: UITableView!
    
    //MARK: Data
    var classCounter: Int = 0
    struct keyNames{
        static let keyOne: String = "classNames"
    }
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults.set([String](), forKey: keyNames.keyOne)
        
    }
    
    //MARK: UITableViewDelegate Methods
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //The amount of rows we want in our table
        return(classCounter)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "SchoolCell") as! SchoolTableViewCell
        cell.ClassName.text = defaults.string(forKey: keyNames.keyOne + String(indexPath.row))
        //cell.Grade.text = defaults.array(forKey: keyNames.keyOne)![indexPath.row] as! String
        return(cell)
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = SchoolTableView.indexPathForSelectedRow{
            let guest = segue.destination as! SchoolViewController
            guest.schoolName = defaults.string(forKey: keyNames.keyOne + String(indexPath.row))!
        }
    }
    
    //MARK: Actions
    @IBAction func PlusButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Class", message: "Please enter a class name", preferredStyle: .alert)
        alert.addTextField{ (textField : UITextField!) -> Void in
        }
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0]
            self.defaults.set(textField!.text, forKey: keyNames.keyOne + String(self.classCounter))
            self.classCounter += 1
            self.SchoolTableView.reloadData()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

