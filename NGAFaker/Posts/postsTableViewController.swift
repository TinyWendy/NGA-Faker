//
//  postsTableViewController.swift
//  NGAFaker
//
//  Created by TinyLiu on 2019/5/11.
//  Copyright © 2019 TinyLiu. All rights reserved.
//

import UIKit

class postsTableViewController: UITableViewController {

    @IBOutlet var postTableView: UITableView!
    
    var NGAPosts: [NGAPost] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NGAPosts.append(NGAPost(url: URL(string: "test")!, author: "tt1", topic: "两行中文题目能够有多长？", replies: "1"))
        NGAPosts.append(NGAPost(url: URL(string: "test")!, author: "tt2", topic: "两行中文题目能够有多长？我们来尝试一下，真的很长，竟然还没到尽头2", replies: "2"))
        NGAPosts.append(NGAPost(url: URL(string: "test")!, author: "tt2", topic: "两行中文题目能够有多长？我们来尝试一下，真的很长，竟然还没到尽头3两行中文题目能够有多长？我们来尝试一下，真的很长，竟然还没到尽头3", replies: "3"))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return NGAPosts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postTableViewCell", for: indexPath) as! postTableViewCell
        cell.postTopicField.text = NGAPosts[indexPath.section].topic
        cell.authorField.text = NGAPosts[indexPath.section].author
        cell.repliesField.text = NGAPosts[indexPath.section].replies
        cell.postURL = NGAPosts[indexPath.section].url

        // Configure the cell...

        return cell
    }

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
