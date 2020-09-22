//
//  FriendCollectionViewController.swift
//  Lesson_1
//
//  Created by Nikita on 22.09.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendCollectionViewController: UICollectionViewController {

  

    
    override func viewDidLoad() {
        super.viewDidLoad()

       

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    
    }

  

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    

}
