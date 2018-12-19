//
//  Table1.swift
//  GenericTableView
//
//  Created by nguyentienhoang on 12/19/18.
//  Copyright © 2018 nguyentienhoang. All rights reserved.
//

import UIKit

class Table1: UIView, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        return cell
    }
    
    
    private let tb = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addView()
        tb.delegate = self
        tb.dataSource = self
        tb.register(Cell1.self, forCellReuseIdentifier: "Cell")
    }
    
    private func addView() {
        self.addSubview(tb)
        tb.translatesAutoresizingMaskIntoConstraints  = false
        NSLayoutConstraint.activate([
            tb.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tb.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tb.topAnchor.constraint(equalTo: self.topAnchor),
            tb.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Cell1: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "Cell")
        backgroundColor = UIColor.blue.withAlphaComponent(0.1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





//MARK: - table 2 configuration

class Table2: UIView, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        return cell
    }
    
    
    private let tb = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addView()
        tb.delegate = self
        tb.dataSource = self
        tb.register(Cell2.self, forCellReuseIdentifier: "Cell")
    }
    
    private func addView() {
        self.addSubview(tb)
        tb.translatesAutoresizingMaskIntoConstraints  = false
        NSLayoutConstraint.activate([
            tb.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tb.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tb.topAnchor.constraint(equalTo: self.topAnchor),
            tb.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Cell2: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "Cell")
        backgroundColor = UIColor.orange.withAlphaComponent(0.1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
