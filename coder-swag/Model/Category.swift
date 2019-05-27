//

import Foundation



struct Category {
    
    //public for fetching but private for setting
    private (set) public var title: String
    private (set) public var imageName: String

    init(title: String, imageName: String){
        
        self.title = title
        self.imageName = imageName
    }
    
    
    
}
