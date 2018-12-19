//
//  ViewController.swift
//  GenericTableView
//
//  Created by nguyentienhoang on 12/17/18.
//  Copyright © 2018 nguyentienhoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let tb1 = Table1()
    private let tb2 = Table2()

    override func viewDidLoad() {
        super.viewDidLoad()
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
}

