//
//  ListViewController.swift
//  ListTest
//
//  Created by 이민지 on 2022/01/14.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mylovefood: UILabel!
    
    let foodListViewModel = ListViewModel()
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.layer.cornerRadius = 15
        return foodListViewModel.numOfListCount
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "List", for: indexPath) as? CustomCell else {
            return UITableViewCell()
        }
        let foodName = foodListViewModel.foodInfoList[indexPath.row]
        cell.update(info: foodName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
}

class CustomCell: UITableViewCell {
    @IBOutlet weak var nameText: UILabel!
    
    func update(info: BestFoodInfo) {
        nameText.text = info.foodName
    }
}

class ListViewModel {
    let foodInfoList: [BestFoodInfo] = [
        BestFoodInfo(foodName: "마라탕"),
        BestFoodInfo(foodName: "삼겹살"),
        BestFoodInfo(foodName: "떡볶이"),
        BestFoodInfo(foodName: "치킨"),
        BestFoodInfo(foodName: "조개"),
        BestFoodInfo(foodName: "해물찜"),
        BestFoodInfo(foodName: "라면"),
        BestFoodInfo(foodName: "닭발"),
    ]
    
    var numOfListCount: Int {
        return foodInfoList.count
    }
}
