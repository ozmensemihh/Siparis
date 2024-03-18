//
//  ViewController.swift
//  Siparis
//
//  Created by Dijitalvarliklar on 15.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var siparisTableView: UITableView!
    
    var yemekList = [Siparis]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        siparisTableView.dataSource = self
        siparisTableView.delegate = self
        
        let baklava = Siparis(id: 1, name: "Baklava", fiyat: 344.0, image:"baklava")
        let ayran = Siparis(id: 2, name: "Ayran", fiyat: 34.0, image:"ayran")
        let fanta = Siparis(id: 3, name: "fanta", fiyat: 15.0, image:"fanta")
        let izgaraSomon = Siparis(id: 4, name: "Izgara Somon", fiyat: 4000.0, image:"izgarasomon")
        let izgaratavuk = Siparis(id: 5, name: "Izgara Tavuk", fiyat: 250.0, image:"izgaratavuk")
        let kadayif = Siparis(id: 6, name: "Kadayıf", fiyat: 124.0, image:"kadayif")
        let kahve = Siparis(id: 7, name: "Kahve", fiyat: 50.0, image:"kahve")
        let kofte = Siparis(id: 8, name: "Köfte", fiyat: 400.0, image:"kofte")
        let lazanya = Siparis(id: 9, name: "Lazanya", fiyat: 300.0, image:"lazanya")
        let makarna = Siparis(id: 10, name: "Makarna", fiyat: 100.0, image:"makarna")
        let pizza = Siparis(id: 11, name: "Pizza", fiyat: 3.0, image:"pizza")
        let su = Siparis(id: 12, name: "Su", fiyat: 344.0, image:"su")
        let sutlac = Siparis(id: 13, name: "Sütlaç", fiyat: 344.0, image:"sutlac")
        let tiramisu = Siparis(id: 14, name: "Tiramisu", fiyat: 344.0, image:"tiramisu")
        
        yemekList.append(baklava)
        yemekList.append(ayran)
        yemekList.append(fanta)
        yemekList.append(izgaraSomon)
        yemekList.append(izgaratavuk)
        yemekList.append(kadayif)
        yemekList.append(kahve)
        yemekList.append(kofte)
        yemekList.append(lazanya)
        yemekList.append(makarna)
        yemekList.append(pizza)
        yemekList.append(su)
        yemekList.append(sutlac)
        yemekList.append(tiramisu)
    
    }

}


extension ViewController: UITableViewDataSource,UITableViewDelegate,SiparisCellProtocol {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemekList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selected = yemekList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "siparisCell", for: indexPath) as! SiparisCell
        
        cell.siparisName.text = selected.name
        cell.siparisFiyat.text = "\(selected.fiyat!) TL"
        cell.siparisImage.image = UIImage(named: selected.image!)
        
        cell.siparisProtocol =  self
        cell.indexPath = indexPath
        
        return cell
        
        
    }
    
    func siparisVer(indexPath: IndexPath) {
        let selected = yemekList[indexPath.row]
        
        print(selected.name!)
    }
    
    
}

