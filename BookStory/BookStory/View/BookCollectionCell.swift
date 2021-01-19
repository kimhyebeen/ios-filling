//
//  BookCollectionCell.swift
//  BookStory
//
//  Created by 김혜빈 on 2021/01/20.
//

import UIKit

class BookCollectionCell: UICollectionViewCell {
    static let identifier = "BookCollectionCell"
    let screenWidth = UIScreen.main.bounds.width
    let title = UILabel()
        .then {
            $0.text = "책 제목"
            $0.textColor = UIColor(named: "pale_gray")
            $0.font = UIFont.boldSystemFont(ofSize: 17)
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor(named: "deep_gray")?.withAlphaComponent(0.2)
        self.layer.cornerRadius = 10
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        setupTitleLabel()
        setupAuthorLabel()
        setupPublishDateLabel()
        setupImageView()
    }
    
    private func setupTitleLabel() {
        self.addSubview(title)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: screenWidth * 0.5 * 0.35).isActive = true
        title.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    private func setupAuthorLabel() {
        
    }
    
    private func setupPublishDateLabel() {
        
    }
    
    private func setupImageView() {
        
    }
}

/*
 var title: String
 var image: String
 var author: String
 var publishDate: Date?
 var isbn: String
 
 var publishDateString: String {
     let formatter = DateFormatter().then {
         $0.dateFormat = "yyyy-MM-dd"
     }
     if let pd = publishDate { return "출간일: \(formatter.string(from: pd))" }
     else { return "출간일: -" }
 }
 */
