//: [Previous](@previous)
/*:
# Instructions
 ![Playground icon](Insructions.png)



 Welcome to Ginepro’s adventure! Here you will find out how to move Ginepro, and help him for his choices. Move him around the image with the direction buttons!
*/

//: [Next](@next)





import Foundation
import SwiftUI
import PlaygroundSupport

struct instructionView : View{
    var productName: String = "Ciao"
    
    var body: some View{

            Image(uiImage: UIImage(named: "Inst")!)
                .resizable()
                .frame(width: 438, height: 755)

            }

            
        }

PlaygroundPage.current.setLiveView(instructionView())

