//
//  StackCell.swift
//  CallBibleFinally
//
//  Created by Brian O'Toole on 12/19/17.
//  Copyright © 2017 Brian O'Toole. All rights reserved.
//

import UIKit

class StackCell: UITableViewCell {
    
    @IBOutlet var collection: [UIView]!
    
    

    func toggle(_ hide: Bool) {
        
        collection.forEach { $0.isHidden = hide}
    }
}
