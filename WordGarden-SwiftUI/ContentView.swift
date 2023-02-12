//
//  ContentView.swift
//  WordGarden-SwiftUI
//
//  Created by Kaneis Zontanos on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"]
    @State private var gameStatusMessage = "How Many Guesses To Uncover the Hidden Word?"
    @State private var currentWord = 0
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = true
    
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading){
                    Text("Words Guessed: \(wordsGuessed)")
                    Text("Words Missed: \(wordsMissed)")
                }
                
                Spacer()
                
                VStack (alignment: .trailing){
                    Text("Words to Guess: \(wordsToGuess.count - (wordsGuessed + wordsMissed))")
                    Text("Words in Guess: \(wordsToGuess.count)")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(gameStatusMessage)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            //TODO: Switch to wordsToGuess[currentWord]
            Text("_ _ _ _ _")
            
            if playAgainHidden {
                HStack{
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    
                    Button("Guess a Letter"){
                        //TODO: Guess a Letter Button action here
                        playAgainHidden = false
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            } else {
                
                Button("Another Word"){
                    //TODO: Another Word Button action here
                    playAgainHidden = true
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
                
            }

            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
