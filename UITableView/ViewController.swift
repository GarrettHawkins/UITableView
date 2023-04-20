//
//  ViewController.swift
//  UITableView
//
//  Created by Hawkins, Garrett - Student on 4/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var names = ["Giligan","Mr.Howell", "Ginger"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


    @IBOutlet weak var tableView: UITableView!
}

