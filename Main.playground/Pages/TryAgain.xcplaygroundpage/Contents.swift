//: [Previous](@previous)

/*:
 # How did it go?
 
 Did you manage to get Ginepro back home?
 No?
 You're lucky, in real life you can't always go back...Just restart the playground
*/

//: [Next](@next)



import SwiftUI
import Foundation
import PlaygroundSupport
import AVKit

struct tryAgainView : View{
    var body: some View{
        
        
                Image(uiImage: UIImage(named: "GameOver")!)
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 550, height: 320)
                
            }
           
        
        
    }


PlaygroundPage.current.setLiveView(tryAgainView())


