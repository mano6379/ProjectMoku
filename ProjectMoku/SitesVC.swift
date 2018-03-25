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
    var islandNames = ["Nānākuli", "Lualualei", "Waianae", "Makaha", "Keaau", "Ohikilolo", "Makua", "Kahanahaiki", "Keawaula"]
    
    //Navigation Title Data this is the bowling ball
    var titleData = [String]()
   //Label Data
    var labelData = [String]()
   //moolelo data
    var mooleloData = [String]()

    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.title = "Sites"
    // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        titleData = dict!.object(forKey:"AhupuaaNames") as! [String]
        labelData = dict!.object(forKey:"Meaning") as! [String]
        mooleloData = dict!.object(forKey:"Moolelo") as! [String]
        
        
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! sitesDetailVC
            let blogIndex = tableView.indexPathForSelectedRow?.row
            //this line of code passes the title data over
            s1.pass = titleData[blogIndex!]
            s1.passTwo = labelData[blogIndex!]
            s1.passThree = mooleloData[blogIndex!]
            
        }
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


    