//
//  FirstViewController.swift
//  poem300
//
//  Created by hatoto on 2016/10/7.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    var poetToPass: String!
    
    var poems : Array<PoemAndSong> = []
    
    @IBOutlet weak var poetTitle: UINavigationItem!
  

    
    // 設定表格只有一個區段
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 設定表格的列數
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //return balls.count
        return poems.count
    }
    
    // 表格的儲存格設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        // 設定儲存格的內容
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel!.text = poems[indexPath.row].name!
        cell.detailTextLabel!.text = poems[indexPath.row].author!
        cell.tag = poems[indexPath.row].id
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poems = getPoemByPoet(author: poetToPass)
        poetTitle.title = poetToPass
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var valueToPass:Int!
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
  
        valueToPass = currentCell.tag
        performSegue(withIdentifier: "poem_se", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "poem_se") {

            let viewController = segue.destination as! PoemViewController

            viewController.passedValue = valueToPass
        }
    }

}

