//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Роман Храпачев on 07/11/2019.
//  Copyright © 2019 Роман Храпачев. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
        "Sports": "⚽️🏀🏈⚾️🥎🎾🏐🏉🏓🏸🏒",
        "Animals": "🐶🐱🐭🐹🐨🐰🦊🐻🐼🐸",
        "Faces": "😀😊😇😘😎🤓😝🥺😡🥶☹️",
    ]
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
                if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                    if let cvc = segue.destination as? ConcentrationViewController {
                        cvc.theme = theme
                    }
                }
        }
    }

}
