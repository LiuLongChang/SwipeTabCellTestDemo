//
//  ViewController.swift
//  SwipeTabCellTestDemo
//
//  Created by langyue on 15/11/18.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,MGSwipeTableCellDelegate {

    
    var tabView : UITableView?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height) , style: .Plain)
        tabView?.delegate = self
        tabView?.dataSource = self
        self.view.addSubview(tabView!)
        
        
        
        
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let ID = "IDDD"
        var cell = tableView.dequeueReusableCellWithIdentifier(ID) as! MGSwipeTableCell!
        if cell == nil {
            cell = MGSwipeTableCell(style: UITableViewCellStyle.Default, reuseIdentifier: ID)
        }
        
        
        cell.textLabel?.text = "Title"
        cell.detailTextLabel?.text = "Detail text"
        cell.delegate = self
        
        cell.leftButtons = [MGSwipeButton(title: "", icon: UIImage(named: ""), backgroundColor: UIColor.redColor()),MGSwipeButton(title: "", icon: UIImage(named: ""), backgroundColor: UIColor.greenColor())]
        
        cell.leftSwipeSettings.transition = MGSwipeTransition.Rotate3D
    
        
        cell.rightButtons = [MGSwipeButton(title: "Delete", backgroundColor: UIColor.redColor(),callback: { (sender:UITableViewCell!) -> Bool in
            
            print("world is beautiful")
            
            
            return true
        }),MGSwipeButton(title: "Delete", backgroundColor: UIColor.greenColor(),callback: { (sender:UITableViewCell!) -> Bool in
            
            print("so ? ")
            
            return true
        })]
        cell.rightSwipeSettings.transition = MGSwipeTransition.Rotate3D
        
        
        
        
        
        return cell!;
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }

    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

