//
//  ScheduleViewController.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/20/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var scheduleTableView: UITableView!
    
    let timeData = ["7:00 am", "10:00 am", "1:00 pm", "3:00 pm", "6:00 pm"]
    let locationData = ["Teen Mom Office", "Hotel Marriott", "TGIF Edmun Plaza", "Kayla's House", "Hotel Marriott"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UITableView"
        
        scheduleTableView.dataSource = self
        scheduleTableView.delegate = self
        
        let nibName = UINib(nibName: "ScheduleCellTableViewCell", bundle: nil)
        scheduleTableView.register(nibName, forCellReuseIdentifier: "scheduleCellTableViewCell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scheduleTableView.dequeueReusableCell(withIdentifier: "scheduleCellTableViewCell", for: indexPath) as! ScheduleCellTableViewCell
        cell.commonInit("mapIcon", time: timeData[indexPath.item], location: locationData[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
