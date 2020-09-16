//
//  FriendTableViewCell.swift
//  Lesson_1
//
//  Created by Nikita on 16.09.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

   //MARK: Properties
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
