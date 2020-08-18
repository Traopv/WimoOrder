//
//  BillCell.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class BillCell: BaseTableViewCell {

    @IBOutlet weak var lbBill: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var btnDetail: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnDetail.layer.cornerRadius = 9
        btnDetail.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //MARK: button function
    @IBAction func showDetail(_ sender: Any) {
    }
    
}
