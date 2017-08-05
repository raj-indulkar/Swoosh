//
//  LeagueVC.swift
//  swoosh
//
//  Created by Raj Indulkar on 2017-08-05.
//  Copyright © 2017 Raj Indulkar. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    
}
