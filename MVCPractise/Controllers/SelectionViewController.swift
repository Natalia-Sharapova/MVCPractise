//
//  SelectionViewController.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 15.12.2021.
//

import UIKit

class SelectionViewController: UIViewController {
    
    
    //MARK: - Outlets
    @IBOutlet weak var buttonHorror: UIButton!
    @IBOutlet weak var buttonAction: UIButton!
    @IBOutlet weak var buttonFav: UIButton!
    @IBOutlet var buttonsArray: [UIButton]!
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        
        //Name of the title
        self.title = "Genres"
        
        for button in buttonsArray {
            button.backgroundColor = .brown
            button.alpha = 0.6
            button.layer.cornerRadius = 20
            button.tintColor = .white
            button.titleLabel?.font = UIFont(name: "Gill Sans", size: 20)
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.white.cgColor
        }
        
        buttonHorror.frame = CGRect(x: view.bounds.midX - 150, y: 170, width: 300, height: 50)
        buttonHorror.setTitle("Horror games 👻", for: .normal)
        
        buttonAction.frame = CGRect(x: view.bounds.midX - 150, y: 260, width: 300, height: 50)
        buttonAction.setTitle("Action games 🥷", for: .normal)
        
        buttonFav.frame = CGRect(x: view.bounds.midX - 150, y: 350, width: 300, height: 50)
        buttonFav.setTitle("Favorite games ⭐️", for: .normal)
    }
    
    //MARK: - Actions
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "GoToHorror", sender: nil)
        case 1:
            performSegue(withIdentifier: "GoToAction", sender: nil)
        default:
            return
        }
    }
}


