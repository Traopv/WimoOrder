//
//  LichSuCell.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class LichSuCell: BaseTableViewCell {

    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var lbCustomer: UILabel!
    @IBOutlet weak var btnIn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnIn.layer.cornerRadius = 9
        btnIn.layer.masksToBounds = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //MARK: button function
    @IBAction func btnIn(_ sender: Any) {
    }
    
}
