//
//  FoodView.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class FoodView: BaseView {
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var viewTable: UIView!
    @IBOutlet weak var viewBill: UIView!
    @IBOutlet weak var viewModel: UIView!
    
    override func configViewUI() {
        super.configViewUI()
        
        viewTable.layer.cornerRadius = 7
        viewTable.layer.masksToBounds = true
        viewTable.layer.borderWidth = 1
        viewTable.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        
        viewBill.layer.cornerRadius = 7
        viewBill.layer.masksToBounds = true
        viewBill.layer.borderWidth = 1
        viewBill.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        
        viewModel.layer.cornerRadius = 7
        viewModel.layer.masksToBounds = true
        viewModel.layer.borderWidth = 1
        viewModel.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        
        myTable.register(UINib.init(nibName: "FoodCell", bundle: nil), forCellReuseIdentifier: "FoodCell")
    }
    //MARK: button function
    @IBAction func chooseTable(_ sender: Any) {
    }
    
    @IBAction func chooseBill(_ sender: Any) {
    }
    
    @IBAction func chooseModel(_ sender: Any) {
    }
    
}
extension FoodView: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        return cell
    }
}
