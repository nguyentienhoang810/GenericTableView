//
//  ViewController.swift
//  GenericTableView
//
//  Created by nguyentienhoang on 12/17/18.
//  Copyright © 2018 nguyentienhoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var gundams = [Gundam]()
    private var pokemons = [Pokemon]()
    private let tb1 = BaseTable<CustomCell1, Gundam>()
    private let tb2 = BaseTable<CustomCell2, Pokemon>()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addDummyData()
        view.addSubview(tb1)
        view.addSubview(tb2)
        tb1.translatesAutoresizingMaskIntoConstraints = false
        tb2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tb1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tb1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tb1.topAnchor.constraint(equalTo: view.topAnchor),
            tb1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2),
            
            tb2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tb2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tb2.topAnchor.constraint(equalTo: tb1.bottomAnchor),
            tb2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2)
        ])
    }
    
    private func addDummyData() {
        tb1.items = [
            Gundam.init(name: "freedom", type: "HG"),
            Gundam.init(name: "strike", type: "RG"),
            Gundam.init(name: "Exia", type: "HG"),
            Gundam.init(name: "Astray", type: "MG")
        ]
        
        tb2.items = [
            Pokemon.init(name: "pikachu", type: "kaminari"),
            Pokemon.init(name: "evee", type: "normal"),
            Pokemon.init(name: "meow", type: "normal")
        ]
        
    }
}

