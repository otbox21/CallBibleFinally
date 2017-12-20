//
//  ScheduleCellTableViewCell.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/20/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class ScheduleCellTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var mapImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ imageName: String, time: String, location: String) {
        timeLabel.text = "7:00 am"
        locationLabel.text = "123 Poop Street"
        mapImage.image = #imageLiteral(resourceName: "mapIcon")
    }
    
    
}
