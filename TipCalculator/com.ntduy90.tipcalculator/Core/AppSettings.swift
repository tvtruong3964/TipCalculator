
import UIKit
import ChameleonFramework

struct TipSettings {
    
    var people = 1

    var tip: Float = 0.1
    
    var currencyFormat = "$%.2f"
}

class AppSettings {
    
    static let instance = AppSettings()
    
    var styles = [AppStyle]()
    
    var tipSettings = TipSettings()
    
    var primaryColor: UIColor?
    
    var subColor: UIColor?
    
    var titleTextColor: UIColor?
    
    var touchableColor: UIColor?
    
    var untouchableColor: UIColor?
    
    var keyboardColor: UIColor?
    
    private init() {
        self.styles = AppSettings.defaultStyles()
        
        if let style = self.styles.first {
            
            changeStyle(style)
        }
    }
    
    func changeStyle(_ style: AppStyle) {
        
        self.primaryColor = HexColor(style.primary)
        
        self.subColor = HexColor(style.sub)
        
        self.titleTextColor = HexColor(style.title)
        
        self.touchableColor = HexColor(style.touchable)
        
        self.untouchableColor = HexColor(style.untouchable)
        
        self.keyboardColor = HexColor(style.keyboard)
    }
    
    private class func defaultStyles() -> [AppStyle] {
        
        var list = [AppStyle]()
        
        list.append(AppStyle(primary: "FCE38A",
                             sub: "F38181",
                             title: "808080",
                             touchable: "1EAAF1",
                             untouchable: "8CC152",
                             keyboard: "FCE38A"))
        
        list.append(AppStyle(primary: "517FA4",
                             sub: "243949",
                             title: "808080",
                             touchable: "1EAAF1",
                             untouchable: "B9EF7A",
                             keyboard: "87ABC7"))
        
        return list
    }
}
