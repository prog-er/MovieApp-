//
//  HomeViewController.swift
//  MovieApp3
//
//  Created by Olzhas Karibayev on 19.11.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    let sectionTitles: [String] = ["Trending movies", "Trending tv", "Popular",  "Upcoming movies", "Top rated"]

    private let HomeFeedTable: UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier:  CollectionViewTableViewCell.identifier  )
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(HomeFeedTable)
        
        HomeFeedTable.delegate = self
        HomeFeedTable.dataSource = self
        
        
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 150))
        HomeFeedTable.tableHeaderView = headerView
        
        fetchData()
        
    }
     
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        HomeFeedTable.frame =  view.bounds
    }
    
    private func fetchData() {
        
//        APICaller.shared.getTrendingMovies{results in
//            switch results {
//            case.success(let movies):
//                print(movies)
//            case.failure(let error):
//                print(error )
//            }
//        }
        APICaller.shared.getTrendingTvs {results in
            
        }
    } 

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else { return UITableViewCell() }
//        cell.configurationUpdateHandler(indexPath)
        return cell 
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
       
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
         guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = .systemFont(ofSize: 18 , weight: .semibold)
        header.textLabel?.frame =  CGRect(x: header.bounds.origin.x +  100, y: header.bounds.origin.y , width: 100 , height: header.bounds.height) 
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitles[section]
    }
}
