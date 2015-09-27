//
//  TableViewController.swift
//  MaldonadoJulio-hw3
//
//  Created by Julio Maldonado on 9/26/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Homework 3"
        cardsTitle = [Card(cardInfo: ["Ace Clubs", "King Clubs", "Queen Clubs" , "Jack Clubs"]), Card(cardInfo:["Ace Diamonds","King Diamonds", "Queen Diamonds" , "Jack Diamonds"]), Card(cardInfo:["Ace Hearts", "King Hearts", "Queen Hearts", "Jack Hearts"]), Card(cardInfo:["Ace Spades", "King Spades", "Queen Spades", "Jack Spades"])]
        cardsImage = [Card(cardInfo: ["ClubsAce.png","ClubsKing.png","ClubsQueen.png","ClubsJack.png"]), Card(cardInfo: ["DiamondsAce.png","DiamondsKing.png","DiamondsQueen.png","DiamondsJack.png"]), Card(cardInfo: ["HeartsAce.png", "HeartsKing.png", "HeartsQueen.png", "HeartsJack.png"]), Card(cardInfo: ["SpadesAce.png","SpadesKing.png","SpadesQueen","SpadesJack.png"])]
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    var card:[String] = ["Clubs","Diamonds","Hearts","Spades"]
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "\(card[indexPath.row])"
        return cell
    }
    
    var cardsTitle = [Card]()
    var cardsImage = [Card]()

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "data"{
            
            let indexPath:NSIndexPath? = self.tableView!.indexPathForSelectedRow
            let vc = segue.destinationViewController as! CVController
            var sentArray1 : Card
            var sentArray2 : Card
            sentArray1 = cardsTitle[indexPath!.row]
            sentArray2 = cardsImage[indexPath!.row]
            vc.Name = sentArray1.cardInfo
            vc.imageArray = sentArray2.cardInfo
        }
        
    }
        
    }
