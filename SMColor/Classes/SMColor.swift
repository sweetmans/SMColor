
//
//  Created by 苏威曼 on 17/1/7.
//  Copyright © 2017年 Sweetman, Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {

    
    //Red Searis Color
    class var red800 : UIColor {
        return hex(hex: "#D6494B")
    }
    
    class var red700 : UIColor {
        return hex(hex: "#E9595B")
    }
    
    class var red600 : UIColor {
        return hex(hex: "#F96868")
    }
    class var red500 : UIColor {
        return hex(hex: "#FA7A7A")
    }
    
    class var red400 : UIColor {
        return hex(hex: "#FA9898")
    }
    
    class var red300 : UIColor {
        return hex(hex: "#FAB4B4")
    }
    class var red200 : UIColor {
        return hex(hex: "#FAD3D3")
    }
    
    class var red100 : UIColor {
        return hex(hex: "#FFEAEA")
    }

    //Pink Searis Color
    class var pink800 : UIColor {
        return hex(hex: "#E53B75")
    }
    
    class var pink700 : UIColor {
        return hex(hex: "#F44C87")
    }
    
    class var pink600 : UIColor {
        return hex(hex: "#F96197")
    }
    class var pink500 : UIColor {
        return hex(hex: "#F978A6")
    }
    
    class var pink400 : UIColor {
        return hex(hex: "#FB8DB4")
    }
    
    class var pink300 : UIColor {
        return hex(hex: "#FBA9C6")
    }
    class var pink200 : UIColor {
        return hex(hex: "#FFCCDE")
    }
    
    class var pink100 : UIColor {
        return hex(hex: "#FCE4EC")
    }

    //TEXT COLOR Searis Color
    class var titleColor : UIColor {
        return hex(hex: "#37474f")
    }
    
    class var subTitleColor : UIColor {
        return hex(hex: "#E9595B")
    }
    
    class var textColor : UIColor {
        return hex(hex: "#76838f")
    }
    class var promptColor  : UIColor {
        return hex(hex: "#a3afb7")
    }

    //Base color
    class var baseGreen  : UIColor {
        return hex(hex: "#3aa99e")
    }
    
    //Border color Searis Color
    class var borderColor  : UIColor {
        return hex(hex: "#e4eaec")
    }
    
    class func hex(hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
