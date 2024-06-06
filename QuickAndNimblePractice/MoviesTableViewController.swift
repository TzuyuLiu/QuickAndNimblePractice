//
//  MoviesTableViewController.swift
//  QuickAndNimblePractice
//
//  Created by 劉子瑜-20001220 on 2024/6/6.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MoviesDataHelper.getMovies().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")!
        let movie = MoviesDataHelper.getMovies()[indexPath.row]
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.genreString()
        
        return cell
    }
}
