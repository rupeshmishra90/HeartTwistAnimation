//
//  ViewController.swift
//  HeartTwist
//
//  Created by Rupesh Kumar on 14/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heartView: HeartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        heartView.configue()
    }

}

