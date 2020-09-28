//
//  FriendCollectionViewController.swift
//  Lesson_1
//
//  Created by Nikita on 22.09.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class FriendCollectionViewController: UICollectionViewController {
  
    var friend: Friend!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1//photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friend.photos.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendCell", for: indexPath) as! FriendsCell
    
        let photo = friend.photos[indexPath.row]
        cell.photo.image = photo
        
        return cell
    }

    

}
