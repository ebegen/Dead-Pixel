//
//  secondTV.swift
//  Dead Pixel
//
//  Created by soaxeus on 17/11/14.
//  Copyright (c) 2014 Emre BEGEN. All rights reserved.
//

import UIKit

class secondTV: UITableViewController, UIAlertViewDelegate {

    @IBOutlet var myTab: UITableView!
    var timer = NSTimer()
    var tempColor : UIColor!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        var refreshAlert = UIAlertController(title: "Attentition", message: "Just tap for start and stop!!", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            
        }))
        
        
        presentViewController(refreshAlert, animated: true, completion: nil)
        
        navigationController?.hidesBarsOnTap = true
        
        //navigationController?.setNavigationBarHidden(navigationController?.navigationBarHidden == false, animated: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startDetect(sender: UIBarButtonItem) {
        navigationController?.setNavigationBarHidden(navigationController?.navigationBarHidden == false, animated: true)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(4, target: self , selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func endDetect(sender: UIBarButtonItem) {
        timer.invalidate()
        view.backgroundColor = UIColor.whiteColor()
        
    }
    @IBAction func toggle(sender: AnyObject) {
        
        navigationController?.hidesBarsOnTap = false
        timer.invalidate()
        view.backgroundColor = UIColor.whiteColor()
    }
    
    func result(){
        if(count == 1){
            view.backgroundColor = UIColor.blackColor()
        }
        else if(count == 2){
            view.backgroundColor = UIColor.redColor()
        }
        else if(count == 3){
            view.backgroundColor = UIColor.greenColor()
        }
        else if(count == 4){
            view.backgroundColor = UIColor.blueColor()
        }
        else if(count>4){
            view.backgroundColor = UIColor.whiteColor()
            count = 0
        }
        count++
        
    }
    
    
    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete method implementation.
//        // Return the number of rows in the section.
//        return 0
//    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
