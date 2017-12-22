//
//  travelInforTableViewCell.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/21/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class travelInforTableViewCell: UITableViewCell {

    @IBOutlet weak var departTime: UILabel!
    @IBOutlet weak var arriveTime: UILabel!
    
    @IBOutlet weak var flightNumber: UILabel!
    @IBOutlet weak var flightStatus: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ depart: String, arrive: String, flightNo: String, flightStatu: String) {
        departTime.text = "7:00 am"
        arriveTime.text = "SHOOT"
        flightNumber.text = "Kayla's BDay"
        flightStatus.text = "47 Maple Lane"
    
    }

    
}
