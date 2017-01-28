
//
//  Created by 苏威曼 on 17/1/7.
//  Copyright © 2017年 Sweetman, Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    
    //Red Searis Color
    open static var red800 : UIColor {return hex(hex: "#D6494B")}
    open static var red700 : UIColor {return hex(hex: "#E9595B")}
    open static var red600 : UIColor {return hex(hex: "#F96868")}
    open static var red500 : UIColor {return hex(hex: "#FA7A7A")}
    open static var red400 : UIColor {return hex(hex: "#FA9898")}
    open static var red300 : UIColor {return hex(hex: "#FAB4B4")}
    open static var red200 : UIColor {return hex(hex: "#FAD3D3")}
    open static var red100 : UIColor {return hex(hex: "#FFEAEA")}
    
    //Pink Searis Color
    open static var pink800 : UIColor {return hex(hex: "#E53B75")}
    open static var pink700 : UIColor {return hex(hex: "#F44C87")}
    open static var pink600 : UIColor {return hex(hex: "#F96197")}
    open static var pink500 : UIColor {return hex(hex: "#F978A6")}
    open static var pink400 : UIColor {return hex(hex: "#FB8DB4")}
    open static var pink300 : UIColor {return hex(hex: "#FBA9C6")}
    open static var pink200 : UIColor {return hex(hex: "#FFCCDE")}
    open static var pink100 : UIColor {return hex(hex: "#FCE4EC")}
    
    //Purple
    open static var purple100 : UIColor {return hex(hex: "#F6F2FF")}
    open static var purple200 : UIColor {return hex(hex: "#E3DBF4")}
    open static var purple300 : UIColor {return hex(hex: "#D2C5EC")}
    open static var purple400 : UIColor {return hex(hex: "#BBA7E4")}
    open static var purple500 : UIColor {return hex(hex: "#A58ADD")}
    open static var purple600 : UIColor {return hex(hex: "#926DDE")}
    open static var purple700 : UIColor {return hex(hex: "#7C51D1")}
    open static var purple800 : UIColor {return hex(hex: "#6D45BC")}

    //INDIGO
    open static var indigo100 : UIColor {return hex(hex: "#EDEFF9")}
    open static var indigo200 : UIColor {return hex(hex: "#DADEF5")}
    open static var indigo300 : UIColor {return hex(hex: "#BCC5F4")}
    open static var indigo400 : UIColor {return hex(hex: "#9DAAF3")}
    open static var indigo500 : UIColor {return hex(hex: "#8897EC")}
    open static var indigo600 : UIColor {return hex(hex: "#677AE4")}
    open static var indigo700 : UIColor {return hex(hex: "#5166D6")}
    open static var indigo800 : UIColor {return hex(hex: "#465BD4")}
    
    //TEXT COLOR
    /*To convey a hierarchy of information, you can use different shades for text. The standard content text color is #79838B.
     */
    
    open static var titleColor : UIColor {return hex(hex: "#37474f")}
    open static var subTitleColor : UIColor {return hex(hex: "#526069")}
    open static var textColor : UIColor {return hex(hex: "#76838f")}
    open static var promptColor  : UIColor {return hex(hex: "#a3afb7")}
    
    //BASE COLOR PALETTE
    /*
     The dashboard will synergize with the colour selection made by the user and appropriately amend. Similarly, all other elements will sync according to the base colours.
     */
    open static var baseGreen  : UIColor {return hex(hex: "#3aa99e")}
    open static var baseGrey  : UIColor {return hex(hex: "#e4eaec")}
    open static var baseBlack  : UIColor {return hex(hex: "#526069")}
    open static var baseBlue  : UIColor {return hex(hex: "#62a8ea")}
    open static var baseCyan  : UIColor {return hex(hex: "#57c7d4")}
    open static var baseOrange  : UIColor {return hex(hex: "#f2a654")}
    open static var baseRed  : UIColor {return hex(hex: "#f96868")}
    open static var basePurple  : UIColor {return hex(hex: "#926dde")}
    
    //Border color Searis Color
    open static var borderColor  : UIColor {return hex(hex: "#e4eaec")}
    
    //Get UIColor from a Hex String.
    
    open static func hex(hex:String) -> UIColor {
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
