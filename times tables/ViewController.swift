//
//  ViewController.swift
//  times tables
//
//  Created by Anar on 5/25/16.
//  Copyright © 2016 Anar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var sliderValue: UISlider!
   
    @IBAction func sliderMoved(sender: AnyObject) {
        
        table.reloadData()
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return 20
        }
        
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
            
            let y = Int(sliderValue.value)
            
            cell.textLabel?.text = " \(y) x \(indexPath.row + 1) = " + String(Int(sliderValue.value) * Int(indexPath.row + 1))
            
            return cell
            
        }
        

    
    

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

