//
//  SiparisCell.swift
//  Siparis
//
//  Created by Dijitalvarliklar on 18.03.2024.
//

import UIKit

protocol SiparisCellProtocol {
    
    func siparisVer(indexPath:IndexPath)
    
}

class SiparisCell: UITableViewCell {

    @IBOutlet weak var siparisImage: UIImageView!
    @IBOutlet weak var siparisName: UILabel!
    @IBOutlet weak var siparisFiyat: UILabel!
    
    var siparisProtocol:SiparisCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func siparisVer(_ sender: UIButton) {
        siparisProtocol?.siparisVer(indexPath: indexPath!)
        
    }
}
