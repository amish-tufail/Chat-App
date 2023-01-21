//
//  Fonts.swift
//  Chat App
//
//  Created by Amish Tufail on 21/01/2023.
//

import Foundation
import SwiftUI

extension Font {
    public static var body: Font {
        return Font.custom("LexendDeca-Regualr", size: 14.0)
    }
    
    public static var button: Font {
        return Font.custom("LexendDeca-SemiBold", size: 14.0)
    }
    
    public static var caption: Font {
        return Font.custom("LexendDeca-Regular", size: 10.0)
    }
    
    public static var tabBar: Font {
        return Font.custom("LexendDeca-Regular", size: 12.0)
    }
    
    public static var settings: Font {
        return Font.custom("LexendDeca-Regular", size: 16.0)
    }
    
    public static var title: Font {
        return Font.custom("LexendDeca-Bold", size: 23.0)
    }
    
    public static var pageTitle: Font {
        return Font.custom("LexendDeca-SemiBold", size: 33.0)
    }
    
    public static var chatHeading: Font {
        return Font.custom("LexendDeca-SemiBold", size: 19.0)
    }
}
