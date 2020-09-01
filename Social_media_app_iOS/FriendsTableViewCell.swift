//
//  FriendsTableViewCell.swift
//  Lesson_1
//
//  Created by Nicks on 10.08.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
