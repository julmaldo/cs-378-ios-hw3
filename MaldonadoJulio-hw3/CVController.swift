//
//  CVController.swift
//  MaldonadoJulio-hw3
//
//  Created by Julio Maldonado on 9/26/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CVController: UICollectionViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CVCell
    
        cell.imageView?.image = UIImage(named:imageArray[indexPath.row])
        cell.titleText?.text = Name[indexPath.row]
        return cell
    }

   
    var imageArray = [String]()
    var Name = [String]()
    
    
}
