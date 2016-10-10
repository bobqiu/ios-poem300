//
//  PoetViewController.swift
//  poem300
//
//  Created by hatoto on 2016/10/10.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//
import UIKit

class PoetViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    /*  取得所有詩人名字的字串陣列  */
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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /* 要傳遞到下一個view的值 */
    var poetToPass: String!
    
    /* table cell被點選時會執行的動作，在這邊把要傳出去的值指給中介變數poetToPass */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        poetToPass = currentCell.textLabel!.text
        
        /* performSegue 會執行Segue 導頁，執行時會呼叫prepare */
        performSegue(withIdentifier: "poet_se", sender: self)
    }
    
    /* override prepare ，此method參數要寫成swift3 版本，不然會被判斷成不同method */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "poet_se") {

            let viewController = segue.destination as! FirstViewController
            /* FirstViewController 是目標View的Controller */
            
            viewController.poetToPass = poetToPass
        }
    }
    
}
