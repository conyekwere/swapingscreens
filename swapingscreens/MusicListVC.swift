//
//  MusicListVC.swift
//  swapingscreens
//
//  Created by Chima onyekwere on 8/8/17.
//  Copyright © 2017 Chima onyekwere. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            view.backgroundColor = UIColor.lightGray
        // Do any additional setup after loading the view.
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

    @IBAction func loadScreenPressed(_ sender: Any) {
        
        let songTitle :Array = ["Who that boy","What","Rage"]
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle[0])
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC
        {
            
            if let song :String  = sender as? String {
        destination.selectedSong = song
            }
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
