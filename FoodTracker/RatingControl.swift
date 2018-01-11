//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Bilguun Bulgan on 1/10/18.
//  Copyright © 2018 Bilguun Bulgan. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //Mark: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0

    //Mark: Private methods
    private func setupButtons() {
        
        for _ in 0..<5 {
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //adding constraints to the button
            button.translatesAutoresizingMaskIntoConstraints = false                    //disables auto constraints of button
            button.heightAnchor.constraint(equalToConstant: 22.0).isActive = true       //sets custom width and height to the
            button.widthAnchor.constraint(equalToConstant: 22.0).isActive = true        //button
            
            //setup the button action
            //this is the code version of attaching an action to a UI element
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            //adding the button as a subview to RatingControl stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
        
    }
    
    //Mark: Initialization
    
    //initializer that will be used to initialize from code (not form storyboard)
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //Mark: Button action
    @objc func ratingButtonTapped(button: UIButton) {
        print("button pressed")
    }
    
}
