//
//  CustomCell.swift
//  GenericTableView
//
//  Created by nguyentienhoang on 12/19/18.
//  Copyright © 2018 nguyentienhoang. All rights reserved.
//

import UIKit

class CustomCell1: BaseCell<Gundam> {
    private let nameLbl = UILabel()
    private let typeLbl = UILabel()
    
    override var item: Gundam? {
        didSet {
            nameLbl.text = "name: \(item?.name ?? "no name")"
            typeLbl.text = "type: \(item?.type ?? "no type")"
        }
    }
    
    func configView() {
        contentView.addSubview(nameLbl)
        contentView.addSubview(typeLbl)
        nameLbl.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        typeLbl.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        nameLbl.numberOfLines = 0
        typeLbl.numberOfLines = 0
        nameLbl.translatesAutoresizingMaskIntoConstraints = false
        typeLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            nameLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            nameLbl.topAnchor.constraint(equalTo: contentView.topAnchor),
            
            typeLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            typeLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            typeLbl.topAnchor.constraint(equalTo: nameLbl.bottomAnchor),
            typeLbl.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ])
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "Cell")
        configView()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




class CustomCell2: BaseCell<Pokemon> {
    private let nameLbl = UILabel()
    private let typeLbl = UILabel()
    
    override var item: Pokemon? {
        didSet {
            nameLbl.text = "name: \(item?.name ?? "no name")"
            typeLbl.text = "type: \(item?.type ?? "no type")"
        }
    }
    
    func configView() {
        contentView.addSubview(nameLbl)
        contentView.addSubview(typeLbl)
        nameLbl.backgroundColor = UIColor.orange.withAlphaComponent(0.1)
        typeLbl.backgroundColor = UIColor.orange.withAlphaComponent(0.1)
        nameLbl.numberOfLines = 0
        typeLbl.numberOfLines = 0
        nameLbl.translatesAutoresizingMaskIntoConstraints = false
        typeLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            nameLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            nameLbl.topAnchor.constraint(equalTo: contentView.topAnchor),
            
            typeLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            typeLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            typeLbl.topAnchor.constraint(equalTo: nameLbl.bottomAnchor),
            typeLbl.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "Cell")
        configView()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
