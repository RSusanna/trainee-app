//
//  ViewController.swift
//  trainee app
//
//  Created by Susanna R on 01.08.2023.
//

import UIKit

// данные для skill view
var dataSource = ["MPV", "SOLID", "многопоточность"]

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCollectionViewCell
          cell.configure(withText: dataSource[indexPath.item])
          return cell
      }
    
    
//MARK: - Аутлеты
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bio: UILabel!
    @IBOutlet weak var yourCity: UILabel!
    @IBOutlet weak var longBioText: UITextView!
    @IBOutlet weak var skillsCollectionView: UICollectionView!
    @IBOutlet weak var addSkill: UIButton!
    @IBOutlet weak var profilePhoto: UIImageView!
    
    
  


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // настройки для collection view
        skillsCollectionView.delegate = self
        skillsCollectionView.dataSource = self
        skillsCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCell")
       
        
        
        profilePhoto.image = UIImage(named: "profile photo")
        profilePhoto.layer.cornerRadius = profilePhoto.frame.width / 2
    }


}

