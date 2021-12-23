//
//  MenuViewController.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 08.12.2021.
//

import UIKit

class HorrorViewController: UIViewController, UITableViewDelegate {
    
    //MARK: - Properties
    
    var horrors = Horror.listHorror
    
    //Creating the search bar
    var searchController: UISearchController!
    
    //Array of search results
    var searchResult: [Horror] = []
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var heightConstant: NSLayoutConstraint!
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Name of the title
        self.title = "Horror games 👻"
        
        searchController = UISearchController(searchResultsController: nil)
        
        //Assignment searchBar  to the tableView
        tableView.tableHeaderView = searchController.searchBar
        
        
        heightConstant.constant = CGFloat(Double(horrors.count) * 48)
        tableView.dataSource = self
        searchController.searchResultsUpdater = self
        
        //Create the placeholder name
        searchController.searchBar.placeholder = "Search Game..."
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Checking the segue before data transmission
        guard segue.identifier == "ShowGame" else { return }
        guard let selectedPath = tableView.indexPathForSelectedRow else { return }
        let destination = segue.destination as! GameHorrorViewController
        
        //Assigning information from a selected cell to a game property
        destination.game = horrors[selectedPath.row]
    }
}

//MARK: - Extensions
extension HorrorViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Setting the number of rows
        //Checking if searchController active
        
        if searchController.isActive {
            return searchResult.count
        } else {
            return horrors.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        //Setting the data depends on the searchController
        let game = (searchController.isActive) ? searchResult[indexPath.row]: horrors[indexPath.row]
        
        //Assigning the properties of the cell
        cell?.detailTextLabel?.text = game.stars
        cell?.imageView?.image = game.image
        cell?.textLabel?.text = game.name
        
        return cell!
    }
}

extension HorrorViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
        //Showing the rows, corresponding to the search
        if let searchText = searchController.searchBar.text {
            filterRequest(searchText: searchText)
            
            //Reload the data of the tableView
            tableView.reloadData()
        }
    }
    
    func filterRequest(searchText: String) {
        
        //Filter of the names
        searchResult = horrors.filter({ (horrors: Horror) -> Bool in
            
            let nameMatch = horrors.name.range(of: searchText)
            
            return nameMatch != nil
        })
    }
}

