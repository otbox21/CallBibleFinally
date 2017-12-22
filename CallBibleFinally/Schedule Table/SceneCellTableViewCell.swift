//
//  SceneCellTableViewCell.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/20/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class SceneCellTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var shootLabel: UILabel!
    
    @IBOutlet weak var sceneNameLabel: UILabel!
    @IBOutlet weak var sceneLocationLabel: UILabel!

    @IBOutlet weak var mapImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ imageName: String, time: String, sceneName: String, sceneLocation: String) {
        timeLabel.text = "7:00 am"
        shootLabel.text = "SHOOT"
        sceneNameLabel.text = "Kayla's BDay"
        sceneLocationLabel.text = "47 Maple Lane"
        
        mapImage.image = #imageLiteral(resourceName: "mapIcon")
    }
    
    
    
}
