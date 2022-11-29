//
//  ViewController.swift
//  TestTask
//
//  Created by Binod Mandal on 29/11/22.
//

import UIKit

class ListTableViewCell : UITableViewCell{
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}



class ViewController: UIViewController {
    
    //MARK:- @IBOutlet
    @IBOutlet weak var tableViewList : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        // Do any additional setup after loading the view.
    }
}


extension ViewController {
    
    func setupTableView(){
        self.tableViewList.delegate = self
        self.tableViewList.dataSource = self
    }
}


extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 95
    }
    
}


extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
        return cell
    }
    
    
}
