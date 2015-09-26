//
//  ViewController.swift
//  MaldonadoJulio-hw3
//
//  Created by Julio Maldonado on 9/26/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var card:[String] = ["Diamonds", "Hearts", "Clubs", "Spades"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return card.count
    }

}

