//
//  PoetViewController.swift
//  poem300
//
//  Created by hatoto on 2016/10/10.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//
import UIKit

class PoetViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    
    var poets : Array<String> = getPoets()
    

    
    // 設定表格只有一個區段
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 設定表格的列數
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //return balls.count
        return poets.count
    }
    
    // 表格的儲存格設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        // 設定儲存格的內容
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel!.text = poets[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var poetToPass: String!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        print("currentCell.tag: \(currentCell.tag):\(currentCell.textLabel!.text)")
        poetToPass = currentCell.textLabel!.text
        performSegue(withIdentifier: "poet_se", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "poet_se") {
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destination as! FirstViewController
            // your new view controller should have property that will store passed value
            viewController.poetToPass = poetToPass
        }
    }
    
}
