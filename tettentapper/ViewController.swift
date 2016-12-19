//
//  ViewController.swift
//  tettentapper
//
//  Created by Pieter Kuijsten on 22-08-16.
//  Copyright © 2016 Pieter Kuijsten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    var maxTaps: Int = 0
    var currentTaps: Int = 0

    //Outlets
    @IBOutlet weak var tettentekstImg: UIImageView!
    @IBOutlet weak var hoeveeltapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tellerLbl: UILabel!
    
    @IBAction func ontettentapBtn(sender: UIButton!){
        currentTaps = currentTaps + 1
        updatetapslbl()
        
        if gameover() {
            restartgame()
        }
        
    }
    
    
    @IBAction func onplayBtnpressed(sender: UIButton!) {

        if hoeveeltapsTxt.text != nil && hoeveeltapsTxt.text != "" {
            
            tettentekstImg.hidden = true
            playBtn.hidden = true
            hoeveeltapsTxt.hidden = true
            tapBtn.hidden = false
            tellerLbl.hidden = false
            
            maxTaps = Int(hoeveeltapsTxt.text!)!
            currentTaps = 0
            
            updatetapslbl()
        }
    }
        
    func restartgame() {
        maxTaps = 0
        currentTaps = 0
        hoeveeltapsTxt.text = nil
        
        tettentekstImg.hidden = false
        playBtn.hidden = false
        hoeveeltapsTxt.hidden = false
        tapBtn.hidden = true
        tellerLbl.hidden = true
    }
    
    func gameover() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updatetapslbl() {
        tellerLbl.text = "\(currentTaps) tetten getapt!"
    }


}

