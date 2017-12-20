//
//  ViewController.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/19/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBAction func EmailButtonClicked(_ sender: Any) {
        print("Email button clicked")
    }
    
    
    var cellTracker = Set<IndexPath>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            tableView.estimatedRowHeight = 80
            tableView.rowHeight = UITableViewAutomaticDimension
        }
    

}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! StackCell
        
        cell.toggle(cellTracker.contains(indexPath))
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) as? StackCell {
            
            if cellTracker.contains(indexPath) {
                cellTracker.remove(indexPath)
            } else {
                cellTracker.insert(indexPath)
            }
            
            tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            
        }
}

}
