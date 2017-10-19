//
//  MapViewController.swift
//  Quiz Konsultasi Syariah App
//
//  Created by Muhammad Hilmy Fauzi on 19/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var petaWisata: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //deklarasi lotitude longitude
        //http://latlong.net
        
        let lokasiWisata = CLLocationCoordinate2D(latitude: -8.568457, longitude: 116.089432)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: lokasiWisata,span: span)
        petaWisata.setRegion(region, animated: true)
        
        //annotation berfungsi untuk menjadi marker pada maps
        //ketika maps dipencet akan keluar title dan subtitle
        let annotation = MKPointAnnotation()
        annotation.coordinate = lokasiWisata
        annotation.title = "Quiz"
        annotation.subtitle = "Konsultasi Syariah"
        petaWisata.addAnnotation(annotation)

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
