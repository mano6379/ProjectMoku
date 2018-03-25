//
//  sitesDetailVC.swift
//  ProjectMoku
//
//  Created by Kumu on 3/24/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class sitesDetailVC: UIViewController {
    
    
    //Ahupuaa Name
    var pass: String?
    
    //Meaning
    var passTwo: String?
    //Moolelo
    var passThree: String?
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textView: UITextView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = pass {
            
            navigationItem.title = name
            
        }
        
        label.text = passTwo
        textView.text = passThree
        
       
        
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


