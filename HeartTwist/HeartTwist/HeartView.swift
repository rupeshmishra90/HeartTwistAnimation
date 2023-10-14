//
//  HeartView.swift
//  HeartTwist
//
//  Created by Rupesh Kumar on 14/10/23.
//

import Foundation
import UIKit

class HeartView: UIView{
    var isSelected = false
    
    let imgView: UIImageView = {
        let imgView1 = UIImageView()
        imgView1.isUserInteractionEnabled = true
        imgView1.image = UIImage(named: "heart00")
        imgView1.translatesAutoresizingMaskIntoConstraints = false
        return imgView1
    }()
    var heartImages = [UIImage]()
    func configue()
    {
        self.addHeartImgView()
        for item in 0..<29{
            heartImages.append(UIImage(named: "heart0\(item)") ?? UIImage())
        }
    }
    
    func addHeartImgView()
    {
        self.addSubview(imgView)
        let imgHeight = self.frame.height
        let imgWidth = self.frame.width
        imgView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateHeart)))
        imgView.heightAnchor.constraint(equalToConstant: imgHeight).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: imgWidth).isActive = true
        imgView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imgView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    @objc func animateHeart()
    {
        self.isSelected = !self.isSelected
        imgView.animationImages = heartImages
        imgView.animationDuration = 0.6
        imgView.animationRepeatCount = 1
        imgView.startAnimating()
        
        if !self.isSelected{
            imgView.image = UIImage(named: "heart00")
        }else{
            
            imgView.image = UIImage(named: "heart028")
        }
    }
}
