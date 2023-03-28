//
//  DetailDatasTableViewCell.swift
//  latihan_jamtangan
//
//  Created by Iqlima Rahmawati 20/02/23.
//

import UIKit

class DetailDatasTableViewCell: UITableViewCell {
    static let id = "DetailDatasTableViewCell"
    
    private lazy var detailProduk: UILabel = {
        let value = UILabel()
        value.text = "Detail Produk"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    private lazy var titleJT: UILabel = {
        let value = UILabel()
        value.text = "Jam Tangan"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    private lazy var sizeJT: UILabel = {
        let value = UILabel()
        value.text = "-"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    private lazy var stockJT: UILabel = {
        let value = UILabel()
        value.text = "20"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    private lazy var weightJT: UILabel = {
        let value = UILabel()
        value.text = "100 gram"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    private lazy var descJT: UILabel = {
        let value = UILabel()
        value.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat."
        value.translatesAutoresizingMaskIntoConstraints = false
//        self.userDesc.contentMode = .scaleToFill
//        self.userDesc.numberOfLines = 0
//        self.userDesc.lineBreakMode = .byWordWrapping
        value.contentMode = .scaleToFill
        value.numberOfLines = 0
        value.lineBreakMode = .byWordWrapping
        return value
    }()
    private lazy var typeJT: UILabel = {
        let value = UILabel()
        value.text = "Accesories"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    private lazy var priceJT: UILabel = {
        let value = UILabel()
        value.text = "Rp. 50.000"
        value.translatesAutoresizingMaskIntoConstraints = false
        return value
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) { super.init(style: style, reuseIdentifier: reuseIdentifier)
    didSetupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func didSetupUI() {
        self.addSubview(descJT)
        self.addSubview(priceJT)
        
        didSetConstraint()
    
    }
    
    func didSetConstraint() {
        NSLayoutConstraint.activate([
            descJT.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            descJT.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),

        ])
        NSLayoutConstraint.activate([
            priceJT.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            priceJT.leadingAnchor.constraint(equalTo: self.descJT.trailingAnchor, constant: 8)
        ])
    }

}
