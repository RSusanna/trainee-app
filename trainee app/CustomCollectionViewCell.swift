//
//  CustomCollectionViewCell.swift
//  trainee app
//
//  Created by Susanna R on 01.08.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!

    // Метод для настройки ячейки с данными
    func configure(withText text: String) {
        label.text = dataSource.randomElement()
    }
}
