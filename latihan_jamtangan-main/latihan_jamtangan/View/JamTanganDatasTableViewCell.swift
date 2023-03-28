//
//  JamTanganDatasTableViewCell.swift
//  latihan_jamtangan
//
//  Created by Iqlima Rahmawati 20/02/23.
//

import UIKit

class JamTanganDatasTableViewCell: UITableViewCell {
    static let identifier = "JamTanganDatasTableViewCell"
    
    var imgJamTangan: UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    var titleJamTangan: UILabel = {
       let lb = UILabel()
        return lb
    }()
   
    var priceJamTangan: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
//    var ratingJamTangan: UILabel = {
//        let lb = UILabel()
//        return lb
//    }()
    
    var dateJamTangan: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    var likeButton: UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    var cardStyle: UIView = {
        let crd = UIView()
        crd.backgroundColor = UIColor.clear
        crd.layer.borderColor = UIColor.clear.cgColor
        crd.layer.borderWidth = 0.0
        crd.layer.cornerRadius = 0
//        crd.layer.shadowColor = UIColor.darkGray.cgColor
//        crd.layer.shadowOffset = CGSize(width: 1, height: 2 )
//        crd.layer.shadowRadius = 1
//        crd.layer.shadowOpacity = 1.0
        
        return crd
    }()
    
    var shadow: UIView = {
        let shd = UIView()
        return shd
    }()
    
    
    func setupContstraint() {
        self.addSubview(cardStyle)
        self.cardStyle.addSubview(imgJamTangan)
        self.cardStyle.addSubview(titleJamTangan)
        self.cardStyle.addSubview(priceJamTangan)
//        self.cardStyle.addSubview(ratingJamTangan)
        self.cardStyle.addSubview(dateJamTangan)
        self.cardStyle.addSubview(likeButton)
        self.cardStyle.addSubview(shadow)
        
        setupCardStyle()
//        setupShadow()
        setupImgJamTangan()
        setupTitleJamTangan()
        setupPriceJamTangan()
        setupDateJamTangan()
        setupLikeButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCardStyle() {
        self.cardStyle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.cardStyle.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            self.cardStyle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            self.cardStyle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            self.cardStyle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12),
        
        ])
        self.cardStyle.backgroundColor = UIColor.white
        self.cardStyle.layer.shadowColor = UIColor.darkGray.cgColor
        self.cardStyle.layer.shadowOffset = CGSize(width: 1, height: 2 )
        self.cardStyle.layer.shadowRadius = 5
        self.cardStyle.layer.shadowOpacity = 1.0
    }
    
    func setupImgJamTangan() {
        self.imgJamTangan.translatesAutoresizingMaskIntoConstraints = false
        self.imgJamTangan.topAnchor.constraint(equalTo: cardStyle.topAnchor, constant: 0).isActive = true
        self.imgJamTangan.leadingAnchor.constraint(equalTo: cardStyle.leadingAnchor, constant: 0).isActive = true
        self.imgJamTangan.bottomAnchor.constraint(equalTo: cardStyle.bottomAnchor, constant: 0).isActive = true
        self.imgJamTangan.widthAnchor.constraint(equalToConstant: 105).isActive = true
       
    }
    
    func setupTitleJamTangan() {
        self.titleJamTangan.translatesAutoresizingMaskIntoConstraints = false
        self.titleJamTangan.topAnchor.constraint(equalTo: cardStyle.topAnchor, constant: 14).isActive = true
        self.titleJamTangan.leadingAnchor.constraint(equalTo: imgJamTangan.trailingAnchor, constant: 12).isActive = true
        self.titleJamTangan.font = UIFont.systemFont(ofSize: 10)
    }
   
    func setupPriceJamTangan() {
        self.priceJamTangan.translatesAutoresizingMaskIntoConstraints = false
        self.priceJamTangan.topAnchor.constraint(equalTo: titleJamTangan.bottomAnchor, constant: 9.01).isActive = true
        self.priceJamTangan.leadingAnchor.constraint(equalTo: imgJamTangan.trailingAnchor, constant: 12).isActive = true
        self.priceJamTangan.font = UIFont.boldSystemFont(ofSize: 12)
    }
    
//    func setupRatingJamTangan() {
//
//    }
    
    func setupDateJamTangan() {
        self.dateJamTangan.translatesAutoresizingMaskIntoConstraints = false
        self.dateJamTangan.topAnchor.constraint(equalTo: cardStyle.topAnchor, constant: 4).isActive = true
        self.dateJamTangan.trailingAnchor.constraint(equalTo: cardStyle.trailingAnchor, constant: -4).isActive = true
//        self.dateJamTangan.font = UIFont(name: "Roboto-Regular", size: 8)
        self.dateJamTangan.font = UIFont.systemFont(ofSize: 8)
    }
    
    func setupLikeButton() {
        self.likeButton.translatesAutoresizingMaskIntoConstraints = false
        self.likeButton.bottomAnchor.constraint(equalTo: cardStyle.bottomAnchor, constant: -8.25).isActive = true
        self.likeButton.trailingAnchor.constraint(equalTo: cardStyle.trailingAnchor, constant: -12).isActive = true
        self.likeButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        self.likeButton.heightAnchor.constraint(equalToConstant: 17.5).isActive = true
    }
    
//    func setupShadow() {
//        self.shadow.translatesAutoresizingMaskIntoConstraints = false
//        self.shadow.layer.shadowColor = UIColor.darkGray.cgColor
//        self.shadow.layer.shadowOpacity = 1.0
//        self.shadow.layer.shadowRadius = 24
//        self.shadow.layer.shadowOffset = CGSize(width: 0, height: 8)
////        self.shadow.layer.shadowPath = cardStyle.
//
//    }
    
    func setupJamTanganValue(jamTanganImage: String,titleJamTanganText: String, priceJamTangantext: String, dateJamTanganText: String, likeButtonImage: String) {
        self.imgJamTangan.image = UIImage(named: jamTanganImage)
        self.titleJamTangan.text = titleJamTanganText
        self.priceJamTangan.text = "Rp." + priceJamTangantext
        self.dateJamTangan.text = dateJamTanganText
        self.likeButton.image = UIImage(named: likeButtonImage)
    }

}
