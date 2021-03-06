
import Foundation
import UIKit

extension Appearance {
    
    static func random() -> Appearance {
        var value = Appearance()
        
        let navigationBarColor = UIColor.randomColor()
        value.navigationBar.backgroundColor = navigationBarColor
        value.navigationBar.tintColor = navigationBarColor.isBright ? UIColor.black : UIColor.white
        
        let toolbarColor = UIColor.randomColor()
        value.toolbar.backgroundColor = toolbarColor
        value.toolbar.tintColor = toolbarColor.isBright ? UIColor.black : UIColor.white
        
        value.statusBarStyle = navigationBarColor.brightness > 0.5 ? .default : .lightContent
        
        return value
    }
    
    func inverse() -> Appearance {
        var value = Appearance()
        
        value.navigationBar.backgroundColor = navigationBar.backgroundColor.inverse()
        value.navigationBar.tintColor = navigationBar.tintColor.inverse()
        value.toolbar.backgroundColor = toolbar.backgroundColor.inverse()
        value.toolbar.tintColor = toolbar.tintColor.inverse()
        value.statusBarStyle = value.navigationBar.backgroundColor.isBright ? .default : .lightContent
        
        return value
    }
    
    static let lightAppearance: Appearance = {
        var value = Appearance()
        
        value.navigationBar.backgroundColor = UIColor.lightGray
        value.navigationBar.tintColor = UIColor.white
        value.statusBarStyle = .lightContent
        
        return value
    }()
}
