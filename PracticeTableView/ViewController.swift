//
//  ViewController.swift
//  PracticeTableView
//
//  Created by Atto Rari on 2023/06/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    //表示するデータ
    private let items: [String] = ["A", "B", "C", "D", "1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
    }
    
    //指定section内のrowの数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    //指定されたindexPathに返すセルを定義
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //cellID"cell"が存在すれば再利用し、無ければcellID"cell"でセルを作成
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = UIColor.black
        cell.backgroundColor = UIColor.white
        
        return cell
        
    }
    
}

