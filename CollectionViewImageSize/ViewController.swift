//
//  ViewController.swift
//  CollectionViewImageSize
//
//  Created by Crypto on 19/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagesCollectionView: UICollectionView!
    
    
    let imagesArray = [UIImage(named: "Animes"), UIImage(named: "Demon"),UIImage(named: "medorya"),UIImage(named: "tall"),UIImage(named: "Naruto"),UIImage(named: "Sasuke"), UIImage(named: "L")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imagesCollectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.imageViewOutlet.image = imagesArray[indexPath.row]
        cell.heightOutlet.constant = imagesArray[indexPath.row]!.size.height
        cell.widthOutlet.constant = self.view.frame.size.width / 2 - 50
//        imagesArray[indexPath.row]!.size.width
        return cell
    }
    
    
}
