//
//  TapBarController.swift
//  konmechu
//
//  Created by 정재연 on 10/25/23.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMiddleButton()
    }
    
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 50
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame

        menuButton.backgroundColor = #colorLiteral(red: 0.3568627451, green: 0.6549019608, blue: 1, alpha: 1)
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        menuButton.layer.borderWidth = 2
        menuButton.layer.borderColor = UIColor.white.cgColor
        

        
        view.addSubview(menuButton)
        view.bringSubviewToFront(menuButton)
        
        
        if let image = UIImage(systemName: "plus.viewfinder") {

           
            let tintedImage = image.withTintColor(.black, renderingMode: .alwaysOriginal)
            
            let largeConfig = UIImage.SymbolConfiguration(pointSize: 30, weight: .medium, scale: .default)
            let largeImage = tintedImage.applyingSymbolConfiguration(largeConfig)

            
            menuButton.setImage(largeImage, for: .normal)
        }

            menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)

            view.layoutIfNeeded()
    }
    
    @objc private func menuButtonAction(sender: UIButton) {
       performSegue(withIdentifier: "SmartlensSG", sender: nil)
    }

}
