//
//  ViewController.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 08.12.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    let label: UILabel! = UILabel()
    let label2: UILabel! = UILabel()
    let labelAnimate: UILabel! = UILabel()
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hiding the navigationBar
        navigationController?.isNavigationBarHidden = true
        
        label.frame = CGRect(x: view.bounds.midX - 168, y: 200, width: 350, height: 50)
        label.font = UIFont(name: "Gill Sans", size: 32)
        label.text = "Best STEAM games"
        
        label2.frame = CGRect(x: view.bounds.midX - 140, y: 230, width: 350, height: 50)
        label2.font = UIFont(name: "Gill Sans", size: 22)
        label2.text = "choose your favorite"
        
        labelAnimate.alpha = 1
        labelAnimate.frame = CGRect(x: view.bounds.midX - 168, y: 550, width: 350, height: 50)
        labelAnimate.font = UIFont(name: "Gill Sans", size: 22)
        labelAnimate.text = "Click anywhere"
        
        //labelAnimate animation
        UILabel.animate(withDuration: 2, delay: 0, options: [.autoreverse, .repeat, .allowUserInteraction]) {
            self.labelAnimate.alpha = 0.1
        }
        
        view.addSubview(label)
        view.addSubview(label2)
        view.addSubview(labelAnimate)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: - Action
    
    @IBAction func userTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "GoToSelection", sender: nil)
    }
}

