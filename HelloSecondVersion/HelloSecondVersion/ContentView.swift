//
//  ContentView.swift
//  HelloSecondVersion
//
//  Created by Olesia Nurislamova on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var greeting:String = "Hello "
    @State var isButtonClicked = false
    //@State var numberOfClicks = 0
    
    let myBgColor = Color(red: 255/255, green: 251/255, blue: 245/255)
    let lightPurple = Color(red: 195/255, green: 172/255, blue: 208/255)
    let darkPurple = Color(red: 48/255, green: 30/255 , blue: 103/255)
        
    
    var body: some View {
            
        VStack {
                ZStack {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundColor(darkPurple)
                        .foregroundColor(.accentColor)
                    VStack(spacing: 15) {
                        Text(greeting)
                        Text("Asado!")
                    }
                }
                .foregroundColor(Color.white)
                .font(.system(size: 110))
                .background(lightPurple)
                .padding()
            
                Spacer()
                
            
            Button(action: {
                getGreeting()
             /*
                numberOfClicks += 1
                print(numberOfClicks)
                if numberOfClicks  % 2 == 0 {
                    greeting = "Hello"
                } else {
                    greeting = "Hi"
                } */
            }, label: {
                Text("Button")
                    .font(.callout)
                     .fontWeight(.heavy)
                     .padding()
                     .foregroundColor(darkPurple)
                     .background(lightPurple)
                
            })
            .padding(.top, 100.0)
   
            Spacer()
      
            }
            myBgColor.ignoresSafeArea()
        }
        
        func getGreeting() {
        
        if isButtonClicked {
            isButtonClicked = !isButtonClicked
            greeting = "Hello"
        } else {
            isButtonClicked = true
            greeting = "Hi"
        }
    }   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
