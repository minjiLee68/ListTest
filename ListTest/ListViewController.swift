//
//  ListViewController.swift
//  ListTest
//
//  Created by 이민지 on 2022/01/14.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mylovefood: UILabel!
    
    let nameList = ["마라탕", "피자", "떡볶이", "삼겹살", "콜라"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.layer.cornerRadius = 15
        return nameList.count
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "List", for: indexPath) as? CustomCell else {
            return UITableViewCell()
        }
        let name = nameList[indexPath.row]
        cell.nameText.text = name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
}

class CustomCell: UITableViewCell {
    @IBOutlet weak var nameText: UILabel!
}
