
//  ViewController.swift
//  UITableView Example
//
//  Created by Tausif


import UIKit

class ViewController: UIViewController {
    
    // Step 1: Create IBOutlet
    @IBOutlet weak var languagesTable: UITableView!
    
    //Step 2: Array Data for Languages
    var programmingLanguages =  ["PHP","JAVA","SWIFT","Objective-C","Java Script","Python","Typescript"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

//Step 3: Implement Delegate Methods

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Step 4: Total Items return
        return programmingLanguages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Step 5: Link Cell
        let cell = languagesTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = programmingLanguages[indexPath.row]
        
        //Step 6: change background of the selected cell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.red
        cell.selectedBackgroundView = backgroundView
        
        return cell
    }
}

