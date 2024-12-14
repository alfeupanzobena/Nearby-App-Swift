//
//  PlaceTableViewCell.swift
//  Nearby-App-Swift
//
//  Created by Alfeu Panzo Bena on 14/12/24.
//

import Foundation
import UIKit

final class PlaceTableViewCell: UITableViewCell {
    static let identifier = "PlaceTableViewCell"
    
    let itemImageview: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        imageview.layer.cornerRadius = 8
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.titleSM
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.textSM
        label.numberOfLines = 0
        label.textColor = Colors.gray300
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ticketIcon: UIImageView = {
        let ticketimage = UIImageView()
        ticketimage.contentMode = .scaleAspectFit
        ticketimage.translatesAutoresizingMaskIntoConstraints = false
        ticketimage.image = UIImage(named: "ticket")
        ticketimage.tintColor = Colors.redBase
        return ticketimage
    }()
    
    let ticketLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.textXS
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 1
        view.layer.borderColor = Colors.gray200.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(containerView)
        containerView.addSubview(itemImageview)
        containerView.addSubview(titleLabel)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(ticketIcon)
        containerView.addSubview(ticketLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            
            itemImageview.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            itemImageview.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            itemImageview.widthAnchor.constraint(equalToConstant: 116),
            itemImageview.heightAnchor.constraint(equalToConstant: 104),
            
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: itemImageview.trailingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: -8),
            titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: -8),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: itemImageview.trailingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: -8),
            
            ticketIcon.leadingAnchor.constraint(equalTo: itemImageview.leadingAnchor, constant: 8),
            ticketIcon.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            ticketIcon.widthAnchor.constraint(equalToConstant: 13),
            ticketIcon.heightAnchor.constraint(equalToConstant: 11),
            
            titleLabel.centerYAnchor.constraint(equalTo: ticketIcon.centerYAnchor),
            ticketIcon.leadingAnchor.constraint(equalTo: ticketIcon.trailingAnchor, constant: 4),

            ])
    }
    
    func configure(with place: Place) {
        itemImageview.image = UIImage(named: place.cover)
        titleLabel.text = place.name
        descriptionLabel.text = place.description
        ticketLabel.text = "cupons disponíveis"
    }
}
