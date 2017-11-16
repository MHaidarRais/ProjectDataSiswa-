//
//  profilViewController.swift
//  ProjectDataSiswa
//
//  Created by Haidar Rais on 11/16/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit

class profilViewController: UIViewController {
    @IBOutlet weak var ininama: UILabel!
    @IBOutlet weak var iniemail: UILabel!
    @IBOutlet weak var inikelas: UILabel!
    @IBOutlet weak var inialamat: UILabel!
    @IBOutlet weak var initelpon: UILabel!
    @IBOutlet weak var inijk: UILabel!
    
    var passnama:String?
    var passemail:String?
    var passkelas:String?
    var passalamat:String?
    var passtelpon:String?
    var passjk:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        ininama.text = passnama
        iniemail.text = passemail
        inikelas.text = passkelas
        inialamat.text = passalamat
        initelpon.text = passtelpon
        inijk.text = passjk

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
