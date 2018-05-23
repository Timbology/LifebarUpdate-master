//
//  PostTableViewCell.swift
//  Lifebar
//
//  Created by Timbology on 22/05/2018.
//  Copyright © 2018 Timbology. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var shelterLabel: UILabel!
    @IBOutlet weak var shelterImageView: UIImageView!
    @IBOutlet weak var targetLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(shelter:Shelter) {
        shelterLabel.text = shelter.name
        targetLabel.text = "Lifepoint Target: \(shelter.target)"
    }
    
}
