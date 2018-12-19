//
//  Table2.swift
//  GenericTableView
//
//  Created by nguyentienhoang on 12/19/18.
//  Copyright © 2018 nguyentienhoang. All rights reserved.
//

import UIKit

class BaseTable<T: BaseCell<U>, U> : UIView, UITableViewDataSource, UITableViewDelegate {
    
    var items = [U]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! T
        cell.item = items[indexPath.row]
        return cell
    }
    
    
    private let tb = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        tb.delegate = self
        tb.dataSource = self
        tb.register(T.self, forCellReuseIdentifier: "Cell")
    }
    
    private func addView() {
        self.addSubview(tb)
        tb.translatesAutoresizingMaskIntoConstraints = false
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

class BaseCell<U>: UITableViewCell {
    var item: U?
}
