//
//  ViewController.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/19/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//TODO - have all contact cells collapsed when app starts
    
    var cellTracker = Set<IndexPath>()

    
    var twoDimensionalArray = [
        ExpandableNames(isExpanded: true, names: ["Brian", "Lisa", "Zack"]),
        ExpandableNames(isExpanded: true, names: ["Tara", "Alex", "Frank", "Katie", "Scott"]),
        ExpandableNames(isExpanded: true, names: ["Benjamin", "Sarah"])
    ]
    var sectionNames = ["Office", "Field", "Other"]
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func EmailButtonClicked(_ sender: Any) {
        print("Email button clicked")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            tableView.estimatedRowHeight = 80
            tableView.rowHeight = UITableViewAutomaticDimension
        
        
        }
    
    override func viewDidAppear(_ animated: Bool) {
 
    }
    

}







///////////////////////////////////////////////////////////////////////////////////////////////////

//MARK: - TableView DataSource Methods


extension ViewController: UITableViewDataSource {
    

    
    //MARK: - Section Header Numbers and Look
    func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let button = UIButton(type: .system)
        //TODO: - Left-justify the title of the button
        button.setTitle(sectionNames[section], for: .normal)
        button.setTitleColor(.black, for: .normal)
        //TODO: - Change background color
        button.backgroundColor = .lightGray
        button.addTarget(self, action: #selector(handleExpandClose), for: .touchUpInside)
        button.tag = section
        return button
    }
    
    
    
    
    //MARK: - Expanding and Closing Sections
    @objc func handleExpandClose(button: UIButton) {
        print("trying to expand and close section")
        print(button.tag)
        let section = button.tag
        //we'll try to close the section first by deleting the rows
        var indexPaths = [IndexPath]()
        for row in twoDimensionalArray[section].names.indices {
            print(0, row)
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        let isExpanded = twoDimensionalArray[section].isExpanded
        twoDimensionalArray[section].isExpanded = !isExpanded
        if isExpanded{
            tableView.deleteRows(at: indexPaths, with: .fade)
        } else {
            tableView.insertRows(at: indexPaths, with: .fade)
        }
        
    }
    
    
    //MARK: - Rows Number and Behavior
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if !twoDimensionalArray[section].isExpanded {
            return 0
        }
        return twoDimensionalArray[section].names.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! StackCell
        
        cell.toggle(cellTracker.contains(indexPath))
        
//        let name = twoDimensionalArray[indexPath.section].names[indexPath.row]
//        cell.textLabel?.text = "\(name) Section:\(indexPath.section) Row:\(indexPath.row)"
        
        
        return cell
    }
    
}




//////////////////////////////////////////////////////////////////////////////////////////////////

//MARK: - TableView Delegate Methods

extension ViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) as? StackCell {
            
            if cellTracker.contains(indexPath) {
                cellTracker.remove(indexPath)
            } else {
                cellTracker.insert(indexPath)
            }
            
            cell.toggle(cellTracker.contains(indexPath))
            
            tableView.beginUpdates()
            tableView.endUpdates()
        }
}

}
