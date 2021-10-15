//: [Previous](@previous)
/*:
# Let's start!
 ![Playground icon](ginepro.png)




*/

//: [Next](@next)








import SwiftUI
import Foundation
import PlaygroundSupport
import AVKit



// MARK: chapterOneView

public struct ChapterOneView : View {
    
    public init() {}
    
    @State private var changeView: Bool = false
    @State private var changeView2: Bool = false
    @State private var xValue: Double = 25.0
    @State private var yValue: Double = 3.0
    @State public var audioPlayer: AVAudioPlayer!
    @State public var musicOn = false
    @State public var chapterOneView = true
    
    public var body: some View{
        NavigationView{
            ZStack{
                Color(.white)
                //                .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Ginepro's Trip")
                        .font(.system(.title))
                        .foregroundColor(.black)
                        .bold()
                        .font(.system(size: 30))
                        .frame( alignment: .topLeading)
                        .offset(y: -25)
                    
                    VStack{
                        Text("Once upon a time there was a guy, Ginepro, who every weekend liked to get around in the woods. But one day he got lost. Suddenly, he found a footpath and started thinking about if to follow it or to follow the North pointed by his compass.")
                            .font(.system(size: 19, design: .serif))
                            .frame(width: 250.0, height: 250.0, alignment: .top)
                            .offset(y:-25)
                        
                    }
                    
                    NavigationLink("",
                                   destination: Chapter21View(),
                                   isActive:$changeView)
                        .navigationBarBackButtonHidden(true)

                    
                    NavigationLink("",
                                   destination: Chapter22View(),
                                   isActive:$changeView2)
                        .navigationBarBackButtonHidden(true)

                    
                    ZStack{
                        VStack{
                            Button {
                                yValue -= 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-180))
                            
                            Button {
                                yValue += 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        }
                        .offset(x:100, y:-100)
                        
                        Button(action:{
                            self.audioPlayer.play()
                            print("button pressed")
                            
//                            musicOn = true quando button pressed
                            if chapterOneView == true{
                                musicOn = true
                            }
                          
                      
                            
                            
                        }){
                            Text("Press Me")
                        }
                        .opacity(0.1)
                        
                        
                        
                        HStack{
                            Button {
                                xValue -= 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                   
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                   
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(90))
                            
                            Button {
                                xValue += 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-90))
                        }
                        
                        
                        
                        .offset(x:100, y:-100)
                        
                        .onTapGesture {
                            changeView = true
                            self.audioPlayer.pause()
                        }
                        .navigationBarBackButtonHidden(true)

                    }
                    .opacity(0.2)
                    
                    ZStack{
                        Image(uiImage: (UIImage(named: "Schermata1.png")!))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y:-25)
                        
                        Image(uiImage: UIImage(named: "ginepro.png")!)
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .topLeading)
                            .offset(x:xValue, y:yValue)
                    }
                    
                }
            }
        }
        .onAppear(){
            let sound = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
// se vogliamo che la musica parta in automatico desecommentare questa linea
            if chapterOneView == true{
                self.audioPlayer.play()
            }else{
                self.audioPlayer.pause()
            }
//            else if chapterOneView == false{
//                self.audioPlayer.pause()
//            }
//            self.audioPlayer.play()

        }
    }
}

// MARK: CHAPTER 2.1

struct Chapter21View : View{
    @State private var changeView: Bool = false
    @State private var changeView2: Bool = false
    @State private var xValue: Double = 25.0
    @State private var yValue: Double = 3.0
    @State public var audioPlayer: AVAudioPlayer!
    @State public var musicOn = false
    @State public var chapterOneView = true
    
    public var body: some View{
        NavigationView{
            ZStack{
                VStack{
                        Text("While following the footpath he found himself in front of a chocolate house. He thought it was a good idea to enter… but meanwhile he saw some footsteps nearby and the decision about what to do became harder.")
                            .font(.system(size: 19, design: .serif))
                            .frame(width: 250.0, height: 250.0, alignment: .top)
                            .offset(y:-50)
                        
                    NavigationLink("",
                                   destination: Chapter31View(),
                                   isActive:$changeView)
                    
                    NavigationLink("",
                                   destination: Chapter32View(),
                                   isActive:$changeView2)

                    ZStack{
                        VStack{
                            Button {
                                yValue -= 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-180))
                            
                            Button {
                                yValue += 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        }
                        .offset(x:100, y:-125)
                        
                        Button(action:{
                            self.audioPlayer.play()
                            print("button pressed")
                            
//                            musicOn = true quando button pressed
//                            if chapterOneView == true{
//                                musicOn = true
//                            }
                          
                      
                            
                            
                        }){
                            Text("Press Me")
                        }
                        .opacity(0.1)
                        
                        
                        
                        HStack{
                            Button {
                                xValue -= 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                   
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView2 = true
                                   
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(90))
                            
                            Button {
                                xValue += 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-90))
                        }
                        
                        
                        
                        .offset(x:100, y:-125)
                        
                        .onTapGesture {
                            changeView = true
                            self.audioPlayer.pause()
                        }
                    }
                    .opacity(0.2)
                    
                    ZStack{
                        Image(uiImage: (UIImage(named: "Schermata2.png")!))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y:-50)
                        
                        Image(uiImage: UIImage(named: "ginepro.png")!)
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .topLeading)
                            .offset(x:xValue, y:yValue)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)

//        .onAppear(){
//            let sound = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//// se vogliamo che la musica parta in automatico desecommentare questa linea
//            if chapterOneView == true{
//                self.audioPlayer.play()
//            }else if chapterOneView == false{
//                self.audioPlayer.pause()
//            }
////            self.audioPlayer.play()
//
//        }
    }
}

// MARK: CHAPTER 2.2
struct Chapter22View : View{
    @State private var changeView: Bool = false
    @State private var changeView2: Bool = false
    @State private var xValue: Double = 25.0
    @State private var yValue: Double = 3.0
    @State public var audioPlayer: AVAudioPlayer!
    @State public var audioPlayer1: AVAudioPlayer!
    @State public var musicOn = false
    @State public var chapterOneView = true
    
    public var body: some View{
        NavigationView{
            ZStack{
                VStack{
                        Text("While following the North he heard in the distance two different types of music coming from two different directions. He thought that there must be some human for sure with a radio, he only had to choose wether to follow the techno music or the rock music.")
                            .font(.system(size: 19, design: .serif))
                            .frame(width: 250.0, height: 250.0, alignment: .top)
                            .offset(y:-60)
                        
                    NavigationLink("",
                                   destination: Chapter34View(),
                                   isActive:$changeView)
              
                    
                    NavigationLink("",
                                   destination: Chapter33View(),
                                   isActive:$changeView2)
                    
                    ZStack{
                        VStack{
                            Button {
                                yValue -= 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-180))
                            
                            Button {
                                yValue += 20
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                    
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        }
                        .offset(x:100, y:-125)
                        
                        Button(action:{
                            self.audioPlayer.play()
                            print("button pressed")
                            
//                            musicOn = true quando button pressed
                            if chapterOneView == true{
                                musicOn = true
                            }
                          
                      
                            
                            
                        }){
                            Text("Press Me")
                        }
                        .opacity(0.1)
                        
                        Button(action:{
                            self.audioPlayer1.play()
                            print("button pressed")
                            
//                            musicOn = true quando button pressed
                            if chapterOneView == true{
                                musicOn = true
                            }
                          
                      
                            
                            
                        }){
                            Text("Press Me")
                        }
                        .opacity(0.1)
                        
                        
                        HStack{
//                          sx
                            Button {
                                xValue -= 20
                                if xValue < 25 {
                                    self.audioPlayer.stop()
                                    self.audioPlayer1.play()
                                }
                                if xValue > 25 {
                                    self.audioPlayer1.stop()
                                    self.audioPlayer.play()
                                }
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView = true
                                   
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                   
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(90))
                            
//                          dx
                            Button {
                                xValue += 20
                                if xValue < 25 {
                                    self.audioPlayer.stop()
                                    self.audioPlayer1.play()
                                }
                                if xValue > 25 {
                                    self.audioPlayer1.stop()
                                    self.audioPlayer.play()
                                }
                                if xValue == -95.0 && yValue == 23.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView = true
                                   
                                }
                                if xValue == 105.0 {
                                    chapterOneView = false
                                    self.audioPlayer.pause()
                                    changeView2 = true
                                   
                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-90))
                        }
                        
                        
                        
                        .offset(x:100, y:-125)
                        
                        .onTapGesture {
                            changeView = true
                            self.audioPlayer.pause()
                        }
                    }
                    .opacity(0.2)
                    
                    ZStack{
                        Image(uiImage: (UIImage(named: "Schermata22")!))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y:-50)
                        
                        Image(uiImage: UIImage(named: "ginepro.png")!)
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .topLeading)
                            .offset(x:xValue, y:yValue)
                    }
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
        
        .onAppear(){
            let sound = Bundle.main.path(forResource: "Tec", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
        .onAppear(){
            let sound = Bundle.main.path(forResource: "rock", ofType: "mp3")
            self.audioPlayer1 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }

    }
}

// MARK : CHAPTER 3.1

struct Chapter31View : View{
    
        @State private var changeView: Bool = false
        @State private var changeView2: Bool = false
        @State private var xValue: Double = 150
        @State private var yValue: Double = -22.0
        @State public var audioPlayer: AVAudioPlayer!
        @State public var musicOn = false
        @State public var chapterOneView = true
        
        public var body: some View{
            NavigationView{
                ZStack{
                    VStack{
                        
                        Text("After following the footsteps he stumbled in a three-heads corgi with human shoes. It seemed really friendly but after socializing, the corgi attacked and devoured him.")
                                .font(.system(size: 19, design: .serif))
                                .frame(width: 250.0, height: 250.0, alignment: .top)
                                .offset(y:-100)
//                            navigation link problem,wrong pattern
                        NavigationLink("",
                                       destination: EndingCorgi(),
                                       isActive:$changeView)
                  
//
//                        NavigationLink("",
//                                       destination: Chapter34View(),
//                                       isActive:$changeView2)
//
                        ZStack{
                            VStack{
                                Button {
                                    yValue -= 20
                                    if xValue == 10 {
                                        chapterOneView = true
//                                        self.audioPlayer.pause()
                                        changeView = true
                                        
                                    }
//                                    if xValue == 0 {
//                                        chapterOneView = true
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            .rotationEffect(.degrees(-180))
                                
                                Button {
                                    yValue += 20
                                    if xValue == 10  {
                                        chapterOneView = true
//                                        self.audioPlayer.pause()
                                        changeView = true
                                        
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            }
                            .offset(x:100, y:-175)
                            
                            Button(action:{
                                self.audioPlayer.play()
                                print("button pressed")
                                
    //                            musicOn = true quando button pressed
                                if chapterOneView == true{
                                    musicOn = true
                                }
                              
                          
                                
                                
                            }){
                                Text("Press Me")
                            }
                            .opacity(0.1)
                            
                            
                            
                            HStack{
                                Button {
                                    xValue -= 20
                                    if xValue == 10 {
                                        chapterOneView = true
//                                        self.audioPlayer.pause()
                                        changeView = true
                                       
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            .rotationEffect(.degrees(90))
                                
                                Button {
                                    xValue += 20
                                    if xValue == 10  {
                                        chapterOneView = true
//                                        self.audioPlayer.pause()
                                        changeView = true
                                        
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            .rotationEffect(.degrees(-90))
                            }
                            
                            
                            
                            .offset(x:100, y:-175)
                            
                            .onTapGesture {
                                changeView = true
                                self.audioPlayer.pause()
                            }
                        }
                        .opacity(0.2)
                        
                        ZStack{
                            Image(uiImage: (UIImage(named: "Schermata3")!))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .offset(y:-94)
                            
                            Image(uiImage: UIImage(named: "ginepro.png")!)
                                .resizable()
                                .frame(width: 30, height: 40, alignment: .topLeading)
                                .offset(x:xValue, y:yValue)
                        }
                        
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            
//            .onAppear(){
//                let sound = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
//                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//    // se vogliamo che la musica parta in automatico desecommentare questa linea
//                if chapterOneView == true{
//                    self.audioPlayer.play()
//                }else if chapterOneView == false{
//                    self.audioPlayer.pause()
//                }
//    //            self.audioPlayer.play()
//
//            }
        }
    }
    
// MARK: CHAPTER 3.2
//problem on line 927
struct Chapter32View : View{
    
        @State private var changeView: Bool = false
        @State private var changeView2: Bool = false
    @State private var xValue: Double = 130.0
        @State private var yValue: Double = -22.0
        @State public var audioPlayer: AVAudioPlayer!
        @State public var musicOn = false
        @State public var chapterOneView = true
        
        public var body: some View{
            NavigationView{
                ZStack{
                    VStack{
                        
                        Text("He decided to make a little stop to eat some chocolate because he was starving… but while exaggerating with chocolate he had a fatal stomachache.")
                                .font(.system(size: 19, design: .serif))
                                .frame(width: 250.0, height: 250.0, alignment: .top)
                                .offset(y:-90)
                            
                        NavigationLink("",
                                       destination: EndingIndigestion(),
                                       isActive:$changeView)
                  
                        
//                        NavigationLink("",
//                                       destination: Chapter34View(),
//                                       isActive:$changeView2)
                        
                        ZStack{
                            VStack{
                                Button {
                                    yValue -= 20
                                    if xValue == 110 {
                                        chapterOneView = false
//                                        self.audioPlayer.pause()
                                        changeView = true
                                        
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            .rotationEffect(.degrees(-180))
                                
                                Button {
                                    yValue += 20
                                    if xValue == 110 {
                                        chapterOneView = false
//                                        self.audioPlayer.pause()
                                        changeView = true
                                        
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            }
                            .offset(x:100, y:-165)
                            
                            Button(action:{
                                self.audioPlayer.play()
                                print("button pressed")
                                
    //                            musicOn = true quando button pressed
                                if chapterOneView == true{
                                    musicOn = true
                                }
                              
                          
                                
                                
                            }){
                                Text("Press Me")
                            }
                            .opacity(0.1)
                            
                            
                            
                            HStack{
                                Button {
                                    xValue -= 20
                                    if xValue == 110 {
                                        chapterOneView = false
//                                        self.audioPlayer.pause()
                                        changeView = true
                                       
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            .rotationEffect(.degrees(90))
                                
                                Button {
                                    xValue += 20
                                    if xValue == 110 {
                                        chapterOneView = false
//                                        self.audioPlayer.pause()
                                        changeView = true
                                        
                                    }
//                                    if xValue == 105.0 {
//                                        chapterOneView = false
//                                        self.audioPlayer.pause()
//                                        changeView2 = true
//
//                                    }
                                }
                            label: {
                                Image(uiImage: (UIImage(named: "controller.png")!))
                                    .resizable()
                                    .frame(width: 22.5, height: 30)
                            }
                            .rotationEffect(.degrees(-90))
                            }
                            
                            
                            
                            .offset(x:100, y:-165)
                            
                            .onTapGesture {
                                changeView = true
//                                self.audioPlayer.pause()
                            }
                        }
                        .opacity(0.2)
                        
                        ZStack{
                            Image(uiImage: UIImage(named: "Schermata32.jpeg")!)
//                            Image(uiImage: (UIImage(named: "Schermata32")!))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .offset(y:-90)
                            

                            Image(uiImage: UIImage(named:"Gineprocioc")!)
                                .resizable()
                                .frame(width: 30, height: 40, alignment: .topLeading)
                                .offset(x:xValue, y:yValue)
                        }
                        
                    }
                }
            }.navigationBarBackButtonHidden(true)
            
//            .onAppear(){
//                let sound = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
//                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//    // se vogliamo che la musica parta in automatico desecommentare questa linea
//                if chapterOneView == true{
//                    self.audioPlayer.play()
//                }else if chapterOneView == false{
//                    self.audioPlayer.pause()
//                }
//    //            self.audioPlayer.play()
//
//            }
        }
    }
// MARK: CHAPTER 3.3
//
struct Chapter33View : View{
    
    @State private var changeView: Bool = false
    @State private var changeView2: Bool = false
    @State private var xValue: Double = 120
    @State private var yValue: Double = -22.0
    @State public var audioPlayer: AVAudioPlayer!
    @State public var musicOn = false
    @State public var chapterOneView = true
    @State var currentDate = Date()
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()

    public var body: some View{
        NavigationView{
            ZStack{
                VStack{
                    
                    Text("He stumbled in a unicorns’ rave. Nonetheless it turned out to be the best decision to go over there, because these unicorns had a superpower: they could jump! And for being helpful they throw him outside of the forest.")
                            .font(.system(size: 19, design: .serif))
                            .frame(width: 250.0, height: 250.0, alignment: .top)
                            .offset(y:-95)
                        
                    NavigationLink("",
                                   destination: EndingCity(),
                                   isActive:$changeView)
              
//
//                    NavigationLink("",
//                                   destination: EndingCity(),
//                                   isActive:$changeView2)
                    
                    ZStack{
                        VStack{
                            Button {
                                yValue -= 20
                                if xValue == 40 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
////                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-180))
                            
                            Button {
                                yValue += 20
                                if xValue == 40 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
////                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        }
                        .offset(x:100, y:-170)
                        
                        Button(action:{
                            self.audioPlayer.play()
                            print("button pressed")
                            
//                            musicOn = true quando button pressed
                            if chapterOneView == true{
                                musicOn = true
                            }
                          
                      
                            
                            
                        }){
                            Text("Press Me")
                        }
                        .opacity(0.1)
                        
                        
                        
                        HStack{
                            Button {
                                xValue -= 20
                                if xValue == 40 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                   
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
////                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(90))
                            
                            Button {
                                xValue += 20
                                if xValue == 40 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
////                                    self.audioPlayer.pause()
//                                    changeView2 = true
//                                    
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-90))
                        }
                        
                        
                        
                        .offset(x:100, y:-170)
                        
                        .onTapGesture {
                            changeView = true
//                            self.audioPlayer.pause()
                        }
                    }
                    .opacity(0.2)
                    
                    ZStack{
                        Image(uiImage: (UIImage(named: "Schermata33")!))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y:-95)
                        
                        Image(uiImage: UIImage(named: "ginepro.png")!)
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .topLeading)
                            .offset(x:xValue, y:yValue)
                    }
////                   it should pass to the image selected
//                    Image(uiImage: UIImage(named: "SchermataCity")!)
//                        .onReceive(timer) { input in
//                            currentDate = input
//                        }
                }
            }
        }.navigationBarBackButtonHidden(true)
        
        .onAppear(){
            let sound = Bundle.main.path(forResource: "Tec", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
// se vogliamo che la musica parta in automatico desecommentare questa linea
            if chapterOneView == true{
                self.audioPlayer.play()
            }else if chapterOneView == false{
                self.audioPlayer.pause()
            }
//            self.audioPlayer.play()

        }
    }
}


// MARK: CHAPTER 3.4
//
struct Chapter34View : View{
    
    @State private var changeView: Bool = false
    @State private var changeView2: Bool = false
    @State private var xValue: Double = 100
    @State private var yValue: Double = -22.0
    @State public var audioPlayer: AVAudioPlayer!
    @State public var musicOn = false
    @State public var chapterOneView = true
    
    public var body: some View{
        NavigationView{
            ZStack{
                VStack{
                    
                    Text("He reached a rocker meeting. They were having a tea and they invited him to suit himself. But the tea was poisoned and he died.")
                            .font(.system(size: 19, design: .serif))
                            .frame(width: 250.0, height: 250.0, alignment: .top)
                            .offset(y:-95)
                        
                    NavigationLink("",
                                   destination: EndingPoisoned(),
                                   isActive:$changeView)
              
                    
//                    NavigationLink("",
//                                   destination: Chapter32View(),
//                                   isActive:$changeView2)
                    
                    ZStack{
                        VStack{
                            Button {
                                yValue -= 20
                                if xValue == -60{
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
//                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-180))
                            
                            Button {
                                yValue += 20
                                if xValue == -60 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
//                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        }
                        .offset(x:100, y:-165)
                        
                        Button(action:{
                            self.audioPlayer.play()
//                            print("button pressed")
                            
//                            musicOn = true quando button pressed
                            if chapterOneView == true{
                                musicOn = true
                            }
                          
                      
                            
                            
                        }){
                            Text("Press Me")
                        }
                        .opacity(0.1)
                        
                        
                        
                        HStack{
                            Button {
                                xValue -= 20
                                if xValue == -60 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                   
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
//                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(90))
                            
                            Button {
                                xValue += 20
                                if xValue == -60 {
                                    chapterOneView = false
//                                    self.audioPlayer.pause()
                                    changeView = true
                                    
                                }
//                                if xValue == 105.0 {
//                                    chapterOneView = false
//                                    self.audioPlayer.pause()
//                                    changeView2 = true
//
//                                }
                            }
                        label: {
                            Image(uiImage: (UIImage(named: "controller.png")!))
                                .resizable()
                                .frame(width: 22.5, height: 30)
                        }
                        .rotationEffect(.degrees(-90))
                        }
                        
                        
                        
                        .offset(x:100, y:-165)
                        
                        .onTapGesture {
                            changeView = true
                            self.audioPlayer.pause()
                        }
                    }
                    .opacity(0.2)
                    
                    ZStack{
                        Image(uiImage: (UIImage(named: "Schermata34")!))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y:-95)
                        
                        Image(uiImage: UIImage(named: "ginepro.png")!)
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .topLeading)
                            .offset(x:xValue, y:yValue)
                    }
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
    
//        this last onAppear will repeat the song...better comment out
//        .onAppear(){
//            let sound = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
////// se vogliamo che la musica parta in automatico desecommentare questa linea
//            if chapterOneView == true{
//                self.audioPlayer.play()
//            }else if chapterOneView == false{
//                self.audioPlayer.pause()
//            }
////            self.audioPlayer.play()
//
        }
    }
//}
    
   
// MARK: EndingView1

struct EndingIndigestion : View{
    
    var body: some View{
        NavigationView{
            VStack{
                Text("This is The End...")
                    .font(.system(size: 39, design: .serif))
                    .offset(y:-200)
                
                Image(uiImage: UIImage(named: "endingChocolate")!)
    //                .aspectRatio( contentMode: .fit)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y:-10)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
// MARK: EndingView2

struct EndingCity : View{
        
    var body: some View{
        NavigationView{
            VStack{
                Text("This is The End...")
                    .font(.system(size: 39, design: .serif))
                    .offset(y:-200)
                
            Image(uiImage: UIImage(named: "SchermataCity")!)
//                .aspectRatio( contentMode: .fit)
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
    

// MARK: EndingView3

struct EndingPoisoned : View{
    
    var body: some View{
        NavigationView{
            VStack{
                Text("This is The End...")
                    .font(.system(size: 39, design: .serif))
                    .offset(y:-200)
                
            Image(uiImage: UIImage(named: "EndingPoisoned")!)
//                .aspectRatio( contentMode: .fit)
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
   
// MARK: EndingView4

struct EndingCorgi: View{
    
    var body: some View{
        NavigationView{
            VStack{
                Text("This is The End...")
                    .font(.system(size: 39, design: .serif))
                    .offset(y:-200)
                
            Image(uiImage: UIImage(named: "EndingCorgi")!)
//                .aspectRatio( contentMode: .fit)
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

PlaygroundPage.current.setLiveView(ChapterOneView())


