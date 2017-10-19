//
//  QuizTableViewController.swift
//  Quiz Konsultasi Syariah App
//
//  Created by Muhammad Hilmy Fauzi on 19/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class QuizTableViewController: UITableViewController {

    var namaSelected:String?
    var gambarSelected:String?
    
    var namaArtikel = ["Darah Haid Makanan Jin?", "Go Pay itu Riba?", "Hukum Hadiah untuk Konsumen","ISIS itu dari Salafi", "Naik Angkot Gak Bayar","Terpaksa Menabrak Tembok Orang Lain, Harus Ganti Rugi?", "Di Sinilah Benteng Yakjuj dan Makjuj","Dilarang Nge-charger HP di Masjid?", "Qurban Batal, Daging Tetap Halal?","Orang Gila Di Surga atau Neraka?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return namaArtikel.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellArtikel", for: indexPath)

        cell.textLabel?.text = namaArtikel[indexPath.row]
        
        //menampilkan gambar
        let imageView = UIImage(named: namaArtikel[indexPath.row])
        cell.imageView?.image = imageView
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //mengecek data yang dikirim
        print("row \(indexPath.row) selected")
        //memasukkan data ke variabel namaSelected & imageSelected ke masing2 variable nya
        namaSelected = self.namaArtikel[indexPath.row]
        gambarSelected = self.namaArtikel[indexPath.row]
        //memanggil segue passDataDetail
        performSegue(withIdentifier: "passDataDetail", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //mengecek apakah seguenya ada atau tidak
        if segue.identifier == "passDataDetail" {
            //kondisi ketika segue nya ada
            //mengirimkan data ke detailViewController
            let kirimData = segue.destination as! DetailViewController
            //mengirimkan data ke masing2 variabel
            //mengirimkan data gambar wisata
            kirimData.passNamaTitle = namaSelected
            //mengirimkan data gambar wisata
            kirimData.passGambarTitle = gambarSelected
        }
    }

    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        //menambahkan menu map
        let AboutApp = UIContextualAction(style: .normal, title: "About App", handler: {_,_,_ in
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailAbout") as! AboutViewController
            self.present(vc, animated: true, completion: nil)
        })
        //membarikan warna pada menu
        AboutApp.backgroundColor = UIColor.orange
        
        //menambahkan menu detail
        let Location = UIContextualAction(style: .normal, title: "Location", handler: {_,_,_ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailView") as! MapViewController
            self.present(vc, animated: true, completion: nil)
        })
        
        //memberikan warna pada menu detail
        Location.backgroundColor = UIColor.cyan
        return UISwipeActionsConfiguration(actions: [AboutApp, Location])
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
