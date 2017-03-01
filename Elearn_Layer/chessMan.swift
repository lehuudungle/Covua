//
//  chessMan.swift
//  Elearn_Layer
//
//  Created by Admin on 3/1/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class chessMan : UILabel{
    var nameChess:String!
    var typeChess: String!
    var xCoordinate: CGFloat?
    var yCoordinate: CGFloat?
    var uniCodeString: String?
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
    init(nameChess: String, typeChess: String, uniCodeString: String, xCoordinate: CGFloat,yCoordinate: CGFloat){
        super.init(frame: CGRectMake(0, 0, 40, 40))
        self.nameChess = nameChess
        self.typeChess = typeChess
        self.uniCodeString = uniCodeString
        self.xCoordinate = xCoordinate
        self.yCoordinate = yCoordinate
        self.text = uniCodeString
        self.textAlignment = .Center
        self.font = UIFont.boldSystemFontOfSize(30)
        self.center.x = xCoordinate
        self.center.y
         = yCoordinate
        
        print(self.nameChess)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
