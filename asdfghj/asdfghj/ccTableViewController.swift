//
//  ccTableViewController.swift
//  asdfghj
//
//  Created by BONG on 18/04/2019.
//  Copyright © 2019 BONG. All rights reserved.
//

import UIKit

class ccTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        coffeSubscript.append(co1)
        coffeSubscript.append(co2)
        coffeSubscript.append(co3)
        coffeSubscript.append(co4)
        coffeSubscript.append(co5)
        coffeSubscript.append(co6)
        coffeSubscript.append(co7)
        coffeSubscript.append(co8)
        coffeSubscript.append(co9)
        coffeSubscript.append(co10)
        


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return coffeSubscript.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Coffee", for: indexPath)

        // Configure the cell...
//        if indexPath.row > 4{
//            cell.textLabel?.text = "a"
//            cell.detailTextLabel?.text = "b"
//        } else {
//            cell.textLabel?.text = "c"
//            cell.detailTextLabel?.text = "d"
//        }
        let kk = coffeSubscript[indexPath.row]
        cell.textLabel?.text = String(kk.cost)
        cell.detailTextLabel?.text = kk.name
        
        

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let dest = segue.destination as! DetailViewController
        let tmp = coffeSubscript[self.tableView.indexPathForSelectedRow!.row]
        dest.utsaram = tmp
    }
 

}
