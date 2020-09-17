//
//  Friend.swift
//  Lesson_1
//
//  Created by Nikita on 17.09.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class Friend {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?

    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }

        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
 
        
    }
}

