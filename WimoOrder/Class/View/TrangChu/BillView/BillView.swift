//
//  BillView.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class BillView: BaseView {
    
    @IBOutlet weak var viewBillTable: UIView!
    @IBOutlet weak var lbTable: UILabel!
    @IBOutlet weak var myTable: UITableView!
    
    override func configViewUI() {
        super.configViewUI()
        viewBillTable.layer.cornerRadius = 7
        viewBillTable.layer.masksToBounds = true
        viewBillTable.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        viewBillTable.layer.borderWidth = 1
        viewBillTable.backgroundColor = .clear
        myTable.register(UINib.init(nibName: "BillCell", bundle: nil), forCellReuseIdentifier: "BillCell")
    }
}
extension BillView: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell", for: indexPath) as! BillCell
        return cell
    }
    
}
