//
//  LeagueVC.swift
//  swoosh
//
//  Created by Raj Indulkar on 2017-08-05.
//  Copyright © 2017 Raj Indulkar. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextOutlet: ButtonBorder!
    
    // declaring player var
    var leaguePlayer: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initializing player var
        leaguePlayer = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func setPlayer (selectedLeague: String) {
        leaguePlayer.desiredLeague = selectedLeague
        nextOutlet.isEnabled = true
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        setPlayer(selectedLeague: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        setPlayer(selectedLeague: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        setPlayer(selectedLeague: "coed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVCvar = segue.destination as? SkillVC {
            skillVCvar.skillPlayer = leaguePlayer
        }
    }
    
}
