//
//  LichSuTTVC.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class LichSuTTVC: BaseViewController {

    @IBOutlet weak var viewSelect: UIView!
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.register(UINib.init(nibName: "LichSuCell", bundle: nil), forCellReuseIdentifier: "LichSuCell")
    }
    override func configUI() {
        super.configUI()
        viewSelect.layer.cornerRadius = 10
        viewSelect.layer.masksToBounds = true
        viewSelect.layer.borderWidth = 1
        viewSelect.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    }
    
    //MARK: Button function
    @IBAction func showMenu(_ sender: Any) {
        SideMenuHelper.shared.showMenu()
    }
    @IBAction func search(_ sender: Any) {
    }
    @IBAction func selectForTable(_ sender: Any) {
    }
    

}
extension LichSuTTVC : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LichSuCell", for: indexPath) as! LichSuCell
        return cell
    }
}
