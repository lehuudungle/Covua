//
//  ViewController.swift
//  Elearn_Layer
//
//  Created by Admin on 3/1/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var l: CALayer {
        return viewForLayer.layer
    }
    var chessItem: NSMutableArray?

    @IBOutlet weak var viewForLayer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(viewForLayer)
        setUpLayer()
        print("frame: \(viewForLayer.frame.width)")
       
    }
    func setUpLayer() {
//        l.drawLayer(<#T##layer: CALayer##CALayer#>, inContext: <#T##CGContext#>)
//        l.backgroundColor = UIColor.blueColor().CGColor
//        l.borderWidth = 100.0
//        l.borderColor = UIColor.redColor().CGColor
//        l.shadowOpacity = 0.7
//        l.shadowRadius = 10.0
        
//        let layer = CAShapeLayer()
//    
//        layer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 40 , height: 40), cornerRadius: 0).CGPath
//        layer.fillColor = UIColor.redColor().CGColor
//        viewForLayer.layer.addSublayer(layer)
        self.view.layer.backgroundColor = UIColor.yellowColor().CGColor
        var widthRec = CGFloat(viewForLayer.frame.size.width / 8)
        
        
        var inMau: Bool = true
        
        for cot in 0...7{
            for hang in 0...7{
                
                let lay = CAShapeLayer()
                lay.path = UIBezierPath(roundedRect: CGRect(x: CGFloat(CGFloat(hang) * CGFloat(widthRec)), y: CGFloat(CGFloat(cot) * CGFloat(widthRec)), width: 40 , height: 40), cornerRadius: 0).CGPath
                
                if(inMau){
                    lay.fillColor = UIColor.whiteColor().CGColor
                    
                    inMau = false
                }else{
                    lay.fillColor = UIColor.brownColor().CGColor
                    
                    inMau = true
                }
                viewForLayer.layer.addSublayer(lay)
            }
            inMau = !inMau
        }
        iniChessMan(viewForLayer)
        
        /*
        var label : UILabel = UILabel()
        label.frame = CGRectMake(20, 20, 40, 40)
        label.text = "\u{2654}"
        label.textAlignment = .Center
        label.font = UIFont.boldSystemFontOfSize(30)
 
        label.center.x = 20
        label.center.y = 20
 
        viewForLayer.addSubview(label)
         */
        
        viewForLayer.userInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: Selector("action:"))
        viewForLayer.addGestureRecognizer(tap)
    
    }
    func iniChessMan(viewForLayr: UIView){
        chessItem = NSMutableArray()
        var hang1cot1 = chessMan(nameChess: "xe", typeChess: "trang", uniCodeString: "\u{2656}", xCoordinate: 20, yCoordinate: 20)
        var hang1cot2 = chessMan(nameChess: "ngua", typeChess: "trang", uniCodeString: "\u{2658}", xCoordinate: 60, yCoordinate: 20)
        var hang1cot3 = chessMan(nameChess: "tinh", typeChess: "trang", uniCodeString: "\u{2657}", xCoordinate: 100, yCoordinate: 20)
        var hang1cot4 = chessMan(nameChess: "hau", typeChess: "trang", uniCodeString: "\u{2655}", xCoordinate: 140, yCoordinate: 20)
        var hang1cot5 = chessMan(nameChess: "vua", typeChess: "trang", uniCodeString: "\u{2654}", xCoordinate: 180, yCoordinate: 20)
        var hang1cot6 = chessMan(nameChess: "tinh", typeChess: "trang", uniCodeString: "\u{2657}", xCoordinate: 220, yCoordinate: 20)
        var hang1cot7 = chessMan(nameChess: "ngua", typeChess: "trang", uniCodeString: "\u{2658}", xCoordinate: 260, yCoordinate: 20)
        var hang1cot8 = chessMan(nameChess: "xe", typeChess: "trang", uniCodeString: "\u{2656}", xCoordinate: 300, yCoordinate: 20)
        
        viewForLayr.addSubview(hang1cot1)
        viewForLayr.addSubview(hang1cot2)
        viewForLayr.addSubview(hang1cot3)
        viewForLayr.addSubview(hang1cot4)
        viewForLayr.addSubview(hang1cot5)
        viewForLayr.addSubview(hang1cot6)
        viewForLayr.addSubview(hang1cot7)
        viewForLayr.addSubview(hang1cot8)
        for i in 0...7{
            var topTrang = chessMan(nameChess: "top", typeChess: "trang", uniCodeString: "\u{2659}", xCoordinate: CGFloat(i) * 40 + 20, yCoordinate: 60)
            viewForLayr.addSubview(topTrang)
        }
        
        var hang8cot1 = chessMan(nameChess: "xe", typeChess: "den", uniCodeString: "\u{265C}", xCoordinate: 20, yCoordinate: 300)
        var hang8cot2 = chessMan(nameChess: "ngua", typeChess: "den", uniCodeString: "\u{265E}", xCoordinate: 60, yCoordinate: 300)
        var hang8cot3 = chessMan(nameChess: "tinh", typeChess: "den", uniCodeString: "\u{265D}", xCoordinate: 100, yCoordinate: 300)
        var hang8cot4 = chessMan(nameChess: "hau", typeChess: "den", uniCodeString: "\u{265B}", xCoordinate: 140, yCoordinate: 300)
        var hang8cot5 = chessMan(nameChess: "vua", typeChess: "den", uniCodeString: "\u{265A}", xCoordinate: 180, yCoordinate: 300)
        var hang8cot6 = chessMan(nameChess: "tinh", typeChess: "den", uniCodeString: "\u{265D}", xCoordinate: 220, yCoordinate: 300)
        var hang8cot7 = chessMan(nameChess: "ngua", typeChess: "den", uniCodeString: "\u{265E}", xCoordinate: 260, yCoordinate: 300)
        var hang8cot8 = chessMan(nameChess: "xe", typeChess: "den", uniCodeString: "\u{265C}", xCoordinate: 300, yCoordinate: 300)
        viewForLayr.addSubview(hang8cot1)
        viewForLayr.addSubview(hang8cot2)
        viewForLayr.addSubview(hang8cot3)
        viewForLayr.addSubview(hang8cot4)
        viewForLayr.addSubview(hang8cot5)
        viewForLayr.addSubview(hang8cot6)
        viewForLayr.addSubview(hang8cot7)
        viewForLayr.addSubview(hang8cot8)
        
        for i in 0...7{
            var topDen = chessMan(nameChess: "top", typeChess: "den", uniCodeString: "\u{265F}", xCoordinate: CGFloat(i) * 40 + 20, yCoordinate: 260)
            viewForLayr.addSubview(topDen)
        }
        
        
        
    }
    
    func action(gesture: UITapGestureRecognizer) {
        let postion = gesture.locationInView(self.viewForLayer)
        print("x: \(postion.x) y: \(postion.y)")
        
    }
        

   

}

