//
//  MenuCell.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/16/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    
    var menuType : TypeMenu = .trangChu{
        didSet{
            setUpCell()
        }
    }
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(){
        self.imgCell.image = menuType.image ?? UIImage()
        self.lbName.text = menuType.rawValue
    }
}
