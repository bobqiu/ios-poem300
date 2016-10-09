//
//  PoemViewController.swift
//  poem300
//
//  Created by hatoto on 2016/10/9.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//
import UIKit

class PoemViewController: UIViewController {
    
    var passedValue: Int!

    var poems : Array<PoemAndSong> = getPoemOrSong(type: 1)
    
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var author: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("passedValue: \(passedValue)")
        
        if let value = passedValue{
            
            
            let thePoem : PoemAndSong =  poems.filter{ (x) -> Bool in x.id == value}.first!
            
            textView.text = thePoem.content
            nameLabel.text = thePoem.name
            author.text = thePoem.author
        }
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }

