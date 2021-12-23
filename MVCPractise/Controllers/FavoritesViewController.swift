//
//  FavoritesViewController.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 18.12.2021.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDelegate {
    
    //MARK: - Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        //Name of the title
        self.title = "Favorite games ⭐️"
    }
}

//MARK: - Extensions

extension FavoritesViewController: UITableViewDataSource {
    
    //Deleting selected row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        arrayFav.remove(at: indexPath.item)
        
        tableView.deleteRows(at: [indexPath], with: .top)
    }
    
    //Setting the number of rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayFav.count
    }
    
    //Assigning the properties of the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel!.text = arrayFav[indexPath.row]
        
        return cell!
    }
}
