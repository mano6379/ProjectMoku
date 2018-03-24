//
//  SitesVC.swift
//  ProjectMoku
//
//  Created by Kumu on 3/24/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class SitesVC: UIViewController, UITableViewDataSource, UITabBarDelegate {
    @IBOutlet weak var tableView: UITableView!
    var islandNames = ["Nanakuli", "Lualualei", "Waianae", "Makaha", "Keaau", "Makua", "Kahanahaiki", "Keawaula"]
    override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.title = "Sites"
    // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return islandNames.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = islandNames[indexPath.row]
    
    return cell
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    }


    