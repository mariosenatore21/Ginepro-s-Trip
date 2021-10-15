import Foundation
import SwiftUI
import AVKit

struct  MusicView: View {
    
    @State public var audioPlayer: AVAudioPlayer!
    
    var body: some View {
                VStack {
                    Text("Pumpkins")
                        .italic()
                        .font(.system(size: 12, weight: .light, design: .serif))
                    Image("play.png")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Button(action: {
                        self.audioPlayer.play()
                                print("Button Tapped")
                        
                                
                            }) {
                                
                                Text("Press Me")
                                
                                
                            }
                    
                }
                .frame(width: 400, height: 100)
//                .onAppear {
//                    let sound = Bundle.main.path(forResource: "tech", ofType: "mp3")
//                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//
//                }
        
    }
    func musicPlay(){
       self.onAppear(){
           let sound = Bundle.main.path(forResource: "tech", ofType: "mp3")
           self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }
        
    }
}
// capire come richiamare questo nella schermata principale
