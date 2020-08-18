//
//  HomeViewController.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit
import SideMenuSwift

class HomeViewController: BaseViewController{
    
    @IBOutlet weak var viewSegment: UIView!
    @IBOutlet weak var myScroll: UIScrollView!
    
    var segmentControl : HMSegmentedControl!
    
    var viewTable : TableView!
    var viewFood : FoodView!
    var viewBill : BillView!

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    override func configUI() {
        super.configUI()
        //viewSegment.round(with: RoundType.top, radius: 20)
        Timer.runThisAfterDelay(seconds: 0.0) {
            self.setUpSegmentControl()
        }
    }
    //MARK: Setup Segment
    func setUpSegmentControl(){
        let titles: [String] = ["Bàn","DS Món","Hóa đơn"]
//        let images : [UIImage] = [UIImage.init(named: "tab_home.png")!, UIImage.init(named: "tab_noitice.png")!, UIImage.init(named: "tab_matching.png")!, UIImage.init(named: "tab_addon.png")!, UIImage.init(named: "tab_info.png")!]
//        let selectedImages : [UIImage] = [UIImage.init(named: "tab_home_active.png")!, UIImage.init(named: "tab_noitice_active.png")!, UIImage.init(named: "tab_matching_active.png")!, UIImage.init(named: "tab_addon_active.png")!, UIImage.init(named: "tab_info_active.png")!]
        segmentControl = HMSegmentedControl.init(sectionTitles: titles)
        
        segmentControl.backgroundColor = .clear
        segmentControl.selectionIndicatorColor = #colorLiteral(red: 0.9487112164, green: 0.2868438959, blue: 0.2853019238, alpha: 1)
        segmentControl.selectionIndicatorHeight = 1.5
        segmentControl.selectionIndicatorLocation = .down
        segmentControl.selectionStyle = .fullWidthStripe
        segmentControl.delegate = self
        segmentControl.selectionIndicatorBoxOpacity = 0.0
        segmentControl.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.init(r: 0, g: 0, b: 0, a: 0.7)
            ,NSAttributedString.Key.font : UIFont.systemFont(ofSize: 11)
        ]
        segmentControl.selectedTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor :  UIColor.init(r: 242, g: 73, b: 73, a: 1.0)
            ,NSAttributedString.Key.font : UIFont.systemFont(ofSize: 11)
        ]
        let width = UIScreen.main.bounds.size.width
        let rect = CGRect(x: 0, y: 0, w: width, h: 50)
        segmentControl.frame = rect
        segmentControl.backgroundColor = #colorLiteral(red: 0.9249405265, green: 0.9250735641, blue: 0.9249115586, alpha: 1)
        segmentControl.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewSegment.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.viewSegment.addSubview(segmentControl)
        
        self.myScroll.contentSize = CGSize(width: 3 * width, height: self.myScroll.frame.size.height)
        
        viewTable = TableView().fromNib(nibName: "TableView") as! TableView
        viewTable.frame =  CGRect(x: 0, y: 0, width: width, height: self.myScroll.frame.size.height)
        viewTable.configViewUI()
        //viewTable.loadData()
        self.myScroll.addSubview(viewTable)
        
        viewFood = FoodView().fromNib(nibName: "FoodView") as! FoodView
        viewFood.frame =  CGRect(x: width, y: 0, width: width, height: self.myScroll.frame.size.height)
        viewFood.configViewUI()
        //viewTable.loadData()
        self.myScroll.addSubview(viewFood)
        
        viewBill = BillView().fromNib(nibName: "BillView") as! BillView
        viewBill.frame =  CGRect(x: 2*width, y: 0, width: width, height: self.myScroll.frame.size.height)
        viewBill.configViewUI()
        //viewTable.loadData()
        self.myScroll.addSubview(viewBill)

        segmentControl.setSelectedSegmentIndex(0, animated: false)
        
        segmentControl.indexChangeBlock = {index in
            self.myScroll.scrollRectToVisible(CGRect(x: CGFloat(self.segmentControl.selectedSegmentIndex) * width, y: 0, width: width, height: self.myScroll.frame.size.height), animated: true)
        }
        viewSegment.bringSubviewToFront(segmentControl)
    }
    //MARK: Button function
    @IBAction func showMenu(_ sender: Any) {
        SideMenuHelper.shared.showMenu()
    }
    
}
extension HomeViewController : UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.x
        let page = UInt(y / UIScreen.main.bounds.size.width)
        self.segmentControl.setSelectedSegmentIndex(page, animated: true)
    }
}

extension HomeViewController : HMSegmentedControlDelegate
{
    //SEGMENT CONTROL DELEGATE
    func hmSegmentControlWillSelectedIndex(_ index: Int32) {
        
    }
    func selectSegment(index : Int){
        
    }
    
}
