//
//  DetailViewController.swift
//  Quiz Konsultasi Syariah App
//
//  Created by Muhammad Hilmy Fauzi on 19/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelJudul: UILabel!
    @IBOutlet weak var imgGambar: UIImageView!
    
    var passNamaTitle:String?
    var passGambarTitle:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // menampilkan data yang sudah dikirim
        labelJudul.text = passNamaTitle
        //menampilkan gambar
        imgGambar.image = UIImage(named: passGambarTitle!)
    
        func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

        func didReceiveMemoryWarning() {
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
}
