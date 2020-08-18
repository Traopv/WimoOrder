//
//  MenuViewController.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/16/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit
enum TypeMenu : String,CaseIterable {
    case trangChu = "Trang chủ"
    case thongTin = "Thông tin cá nhân"
    case lichSu = "Lịch sử thanh toán"
    case dangXuat = "Đăng xuất"
    
    var image : UIImage? {
        switch self {
        case .trangChu:
            return UIImage.init(named: "icons8-home-24")
        case .thongTin:
            return UIImage.init(named: "icons8-person-24")
        case .lichSu:
            return UIImage.init(named: "icons8-time-machine-24")
        case .dangXuat:
            return UIImage.init(named: "icons8-shutdown-48")
        }
    }
}
class MenuViewController: UIViewController {

    @IBOutlet weak var imgAvata: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPosition: UILabel!
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var viewBooth: UIView!
    
    let menuItem : [TypeMenu] = [.trangChu,.thongTin,.lichSu,.dangXuat]
    
    var onSelectedType: ((TypeMenu)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.register(UINib.init(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
        conFig()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    //MARK: Function
    func conFig(){
        //bo tron anh
        imgAvata.layer.cornerRadius = imgAvata.frame.height / 2
        imgAvata.clipsToBounds = true
        
        //View booth
        viewBooth.layer.cornerRadius = 10
        viewBooth.clipsToBounds = true
        viewBooth.layer.borderWidth = 1
        viewBooth.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    //MARK: Button
    @IBAction func chooseBooth(_ sender: Any) {
    }
}
extension MenuViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        cell.menuType = menuItem[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       let type = TypeMenu.allCases[indexPath.row]
        onSelectedType?(type)
    }
    
}
