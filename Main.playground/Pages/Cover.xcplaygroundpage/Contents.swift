/*:
# Ginepro's Trip
 ![Playground icon](gineproBack.jpeg)

# Index
 
* Instructions
* Story
* Try Again
 
 # Overview
 
 This is the Ginepro's magic Trip.
 
 In this short story you will find a lot of stranger creatures  and you will face several strange situations... will you be able to make the right choices and drive Ginepro safely home?
 
 
 
 
*/

//: [Next](@next)







import Foundation
import SwiftUI
import PlaygroundSupport

struct coverView : View{
    
    var body: some View{
        NavigationView{
            VStack{
                Image(uiImage: UIImage(named: "gineproBack.jpeg")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 330, height: 330)
                    .offset(y:-200)
            
                Text("Ginepro's Trip")
                    .font(.system(.title))
                    .foregroundColor(.black)
                    .bold()
                    .font(.system(size: 30))
                    .frame( alignment: .topLeading)
                    .offset(y: -175)
                
                Text("by The Messy Buns")
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .frame( alignment: .topLeading)
                    .offset(y: -150)
            }
        }
    }
}
PlaygroundPage.current.setLiveView(coverView())


