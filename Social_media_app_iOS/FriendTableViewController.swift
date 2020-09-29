//
//  FriendTableViewController.swift
//  Lesson_1
//
//  Created by Nikita on 16.09.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController {

        
//MARK: Properties
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
           super.viewDidLoad()

        // Load the sample data.
        loadSampleFriends()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Table view data source
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //showing the title on photos page by which cell name was picked
        
        if let FriendCollectionViewController = segue.destination as? FriendCollectionViewController { // checking transition to the right controller
            
            if let indexPath = tableView.indexPathForSelectedRow { // checking picked line for the transition
                let friend = friends[indexPath.row]
                FriendCollectionViewController.friend = friend
                
                
            }
            
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "FriendTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? FriendTableViewCell  else {
            fatalError("The dequeued cell is not an instance of FriendTableViewCell.")
        }
        
        // Fetches the appropriate friend for the data source layout.
        let friend = friends[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.photoImageView.image = friend.photo
        
        return cell
    }
    
    
    
    //MARK: Private Methods
    
    private func loadSampleFriends() {
        
        let photo1 = UIImage(named: "James")
        let photo2 = UIImage(named: "Leo")
        let photo3 = UIImage(named: "Megan")
        let photo4 = UIImage(named: "Monica")
        

        guard let James = Friend(name: "James", photo: photo1) else {
            fatalError("Unable to instantiate the friend - James")
        }

        guard let Leo = Friend(name: "Leo", photo: photo2) else {
            fatalError("Unable to instantiate the friend - Leo")
        }

        guard let Megan = Friend(name: "Megan", photo: photo3) else {
            fatalError("Unable to instantiate the friend - Megan")
        }
        
        guard let Monica = Friend(name: "Monica", photo: photo4) else {
                   fatalError("Unable to instantiate the friend - Monica")
               }

        friends += [James, Leo, Megan, Monica]
    }
    
    
 
    
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
