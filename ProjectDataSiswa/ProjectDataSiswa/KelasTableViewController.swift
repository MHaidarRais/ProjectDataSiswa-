//
//  KelasTableViewController.swift
//  ProjectDataSiswa
//
//  Created by Haidar Rais on 11/16/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class KelasTableViewController: UITableViewController {
    
    var arrKategori = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //memanggil data json menggunakan alamofire
        Alamofire.request("http://localhost/ProjectDataSiswa/index.php/api/getkelas").responseJSON{ (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                if let resData = swiftyJsonVar["data"].arrayObject {
                    self.arrKategori = resData as! [[String:String]]
                }
                if self.arrKategori.count > 0 {
                    self.tableView.reloadData()
                }
            }
            else{
                
                print("error server")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrKategori.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellKelas", for: indexPath) as! KelasTableViewCell
        
        // Configure the cell...
        var serverid = arrKategori[indexPath.row]
        
        //print server id
        
        var id_class = serverid["id_class"]
        let nama_kelas = serverid["nama_kelas"]
        
        //pindahkan ke label
        cell.labelkelas.text = nama_kelas
        
        return cell
    }
    //pindah ke layout selanjutnya
    //dan melempar id kategori
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let idStoryBoard = storyboard?.instantiateViewController(withIdentifier: "anggota") as! anggotakelasTableViewController
        
        let id_kategori = arrKategori[indexPath.row]["id_class"]
        //variable untuk menampung id_kategori yg d lempar
        idStoryBoard.nampungid = id_kategori
        
        show(idStoryBoard, sender:  self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //        if segue.identifier == "passData" {
        //
        //            if let indexPath = self.tableView.indexPathForSelectedRow {
        //                let controller = segue.destination as! DetailViewController
        //                let value = arrKategori[indexPath.row]
        //
        //                controller.passjudul = value["judul"] as! String
        //                controller.passid = value["id_berita"] as! String
        //                controller.passcategory = value["id_cat"] as! String
        //                controller.passisi = value["isi"] as! String
        //
        
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}



