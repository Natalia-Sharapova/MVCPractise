//
//  ActionViewController.swift
//  MVCPractise
//
//  Created by Наталья Шарапова on 18.12.2021.
//

import UIKit

class ActionViewController: UIViewController, UITableViewDelegate {
    
    //MARK: - Properties
    
    var actions = Action.listAction
    
    //Creating the search bar
    var searchController = UISearchController()
    
    //Array of search results
    var searchResult: [Action] = []
    
    //MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Name of the title
        self.title = "Action games 🥷"
        
        searchController = UISearchController(searchResultsController: nil)
        
        //Assignment to the tableView searchBar
        tableView.tableHeaderView = searchController.searchBar
        
        searchController.searchResultsUpdater = self
        
        //Create the placeholder name
        searchController.searchBar.placeholder = "Search game..."
        
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Checking the segue before data transmission
        guard segue.identifier == "ShowAction" else { return }
        guard let selectedPath = tableView.indexPathForSelectedRow else { return }
        
        let destination = segue.destination as! GameActionViewController
        
        //Assigning information from a selected cell to a game property
        destination.game = actions[selectedPath.row]
        
    }
}

//MARK: - Extensions

extension ActionViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Setting the number of rows
        //Checking if searchController active
        
        if searchController.isActive {
            return searchResult.count
        } else {
            return actions.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")
        
        //Setting the data depends on the searchController
        let game = (searchController.isActive) ? searchResult[indexPath.row] : actions[indexPath.row]
        
        //Assigning the properties of the cell
        cell?.detailTextLabel?.text = game.stars
        cell?.imageView?.image = game.image
        cell?.textLabel?.text = game.name
        
        return cell!
        
    }
}

extension ActionViewController: UISearchResultsUpdating {
    
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
        searchResult = actions.filter({ (actions: Action) -> Bool in
            
            let nameMatch = actions.name.range(of: searchText)
            
            return nameMatch != nil
        })
    }
}

