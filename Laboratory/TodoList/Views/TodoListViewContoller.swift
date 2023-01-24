//
//  ViewController.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 07.01.2023.
//

import UIKit

// MARK: - TodoListViewController
class TodoListViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupColletionView()
        setupSearchController()
    }
}

// MARK: - Private methods
extension TodoListViewController {
    
    private func setupColletionView() {
        
        self.collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: UICollectionViewLayout())
        
        self.collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.collectionView.backgroundColor = Constants.Colors.backgroundAppColor
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.view.addSubview(self.collectionView)
    }
    
    private func setupSearchController() {
        
        self.navigationItem.searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController?.hidesNavigationBarDuringPresentation = false
        self.navigationItem.searchController?.obscuresBackgroundDuringPresentation = false
        self.navigationItem.searchController?.searchBar.delegate = self
    }
}

// MARK: - CollectionViewDelegate, CollectionViewDataSource
extension TodoListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

// MARK: - SearchBarDelegate
extension TodoListViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
