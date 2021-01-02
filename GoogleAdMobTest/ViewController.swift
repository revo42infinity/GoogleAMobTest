//
//  ViewController.swift
//  GoogleAdMobTest
//
//  Created by owner on 1/2/21.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    //2
    var interstitial: GADInterstitial!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //3 bu id degisecek
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")

        //4 reklami yukle ama hala gostermedi
        let request = GADRequest()
            interstitial.load(request)
        
    }

    @IBAction func nextClicked(_ sender: Any) {
        //5 reklami gosterme
        if interstitial.isReady {
           interstitial.present(fromRootViewController: self)
         }
    }
    
}

