//
//  CircularShape.swift
//  CircularSwiftUI
//
//  Created by Tunahan on 8/18/22.
//

import SwiftUI
import Foundation

struct CircularShape: Shape {
    
    
    
    var percent : Double // yüzde kacı cızılecek
    var startAngle: Double // Çizmeye nereden başlıyacagı
    
    //MARK:  ANİMASYON KODLARI... ANIMASYONUN PERCENT'E gÖRE OLACAGINI YAZMIŞ OLDUK,aNIMASYON TURUNUDE "circular" da yazdık
    typealias AnimatableData = Double
    var  animatableData : Double {
        get {
            return percent // animasyon degerini ver demis oluyoruz.
        }set{
            percent = newValue  // percent degerimiz degisirse yenisini ver demis oluyoruz animasyon degerine
        }
    }
    
    
    init(percent: Double=100, startAngle: Double = -90){
           self.percent = percent
           self.startAngle = startAngle
       }
    
    //SHAPE: in kendıprotocol funcsıyonu
    //path(patika): Çizilecek şeklin yolunu belirtiyoruz.
    func path(in rect: CGRect) -> Path {
        
        //MARK: Buradaki degerler buradaki struct'ıma ne kadar alan ayırdıysam oranın alan boyutunu alır.Ekranın full degil
        let width = rect.width
        let height = rect.height
        let radius = min(width,height) / 2
        let center = CGPoint(x: width/2, y: height/2)
        let endAngle = self.percent / 100 * 360 + startAngle // Yuzde kacı ıse ona gore donecek
        
        return Path {path in
            
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
            
        }
    }
    
    
}


