//
//  ViewController.swift
//  latihan_jamtangan
//
//  Created by Iqlima Rahmawati 20/02/23.

import UIKit

class ViewController: UIViewController {
    var tableView: UITableView = {
        var tv = UITableView()
        return tv
    }()
    
    var jamTangan: [StructJamTanganDatas] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView = UITableView(frame: .zero)
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
        uiTableView()
        jamTanganDatas()

    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jamTangan.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: JamTanganDatasTableViewCell.identifier, for: indexPath) as?
                JamTanganDatasTableViewCell else {
            return UITableViewCell()
        }
        let dataArray = jamTangan[indexPath.row]
        
        cell.setupContstraint()
        
        cell.clipsToBounds = false
        cell.contentView.clipsToBounds = false
        
        cell.setupJamTanganValue(jamTanganImage: dataArray.imageJamTangan, titleJamTanganText: dataArray.titleJamTangan, priceJamTangantext: dataArray.priceJamTangan, dateJamTanganText: dataArray.dateJamTangan, likeButtonImage: dataArray.likeButton)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "JamTanganViewController", bundle: nil)
        let detail = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(detail, animated: true)
}
}

extension ViewController: JamTanganProtocol {
    func uiTableView() {
//        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        tableView.register(JamTanganDatasTableViewCell.self, forCellReuseIdentifier: JamTanganDatasTableViewCell.identifier)
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.dataSource = self
        tableView.delegate = self
        
        
        self.view.addSubview(tableView)
        
        view.addSubview(tableView)
    }
    
    func jamTanganDatas() {
        jamTangan.append(StructJamTanganDatas(imageJamTangan: "Jam1", titleJamTangan: "Jam Tangan", priceJamTangan: "10.000", dateJamTangan: "03 Agustus 2022", likeButton: "Like2"))
    }
    
}

