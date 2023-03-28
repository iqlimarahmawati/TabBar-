//
//  TitleJamTanganTableViewCell.swift
//  latihan_jamtangan
//
//  Created by Iqlima Rahmawati 20/02/23.
//

import UIKit

class TitleJamTanganTableViewCell: UITableViewCell {
    static let identifier = "TitleJamTanganTableViewCell"
    @IBOutlet var titleJamTangan: UILabel! {
        didSet{
            titleJamTangan.text = "Jam Tangan"
        }
    }
    @IBOutlet var priceJamTangan: UILabel! {
        didSet{
            priceJamTangan.text = "Rp. 10.000"
        }
    }
    @IBOutlet var likeIcon: UIImageView! {
        didSet {
            likeIcon.image = UIImage(named: "Like2")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
