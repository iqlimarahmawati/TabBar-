//
//  DetailViewController.swift
//  latihan_jamtangan
//
//  Created by Iqlima Rahmawati 20/02/23.
//

import UIKit

enum DetailJamTangan: Int {
case description
case detail
    init(index: Int) {
        switch index {
        case 0:
            self = .description
        case 1:
            self = .detail
        default:
            self = .detail
        }
    }
}
class DetailViewController: UIViewController {
//    var tableView: UITableView!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
//    var jamTangan: [StructJamTanganDatas] = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Jam1")
        
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.separatorStyle = .none
        
//        let dataNib = UINib(nibName: "TitleJamTanganTableViewCell", bundle: nil)
       
//        self.tableView.register(dataNib, forCellReuseIdentifier: TitleJamTanganTableViewCell.identifier)
        
        let dataNib = UINib(nibName: "TitleJamTanganTableViewCell", bundle: nil)
        self.tableView.register(dataNib, forCellReuseIdentifier: TitleJamTanganTableViewCell.identifier)
        self.tableView.register(DetailDatasTableViewCell.self, forCellReuseIdentifier: DetailDatasTableViewCell.id)
        
    }
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let section = DetailJamTangan(index: section)
        switch section {
        case .description:
            return 1
        case .detail:
            return 1
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = DetailJamTangan(index: indexPath.section)
        switch section {
        case .description:
            guard let descCell = tableView.dequeueReusableCell(withIdentifier: TitleJamTanganTableViewCell.identifier, for: indexPath) as? TitleJamTanganTableViewCell else {
                return UITableViewCell()
            }
    //        let dataArray = jamTangan[indexPath.row]
            return descCell
        case .detail:
        guard let detailCell = tableView.dequeueReusableCell(withIdentifier: DetailDatasTableViewCell.id, for: indexPath) as?
        DetailDatasTableViewCell
        else {
            return UITableViewCell()
        }
        return detailCell
        
            
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
}
}
