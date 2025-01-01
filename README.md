# Guess The Word (SwiftUI)

A simple letter-guessing game built with SwiftUI. As you guess letters, a flower image wilts with each incorrect attempt. You have 8 guesses per word—miss them all, and the flower fully wilts!

## Table of Contents
- [Project Overview](#project-overview)
- [Features](#features)
- [How It Works](#how-it-works)
- [Requirements](#requirements)
- [Usage](#usage)
- [Acknowledgments](#acknowledgments)

---

## Project Overview

This project demonstrates a straightforward approach to creating a guessing game in SwiftUI. It includes:
- State management for game progress.
- A custom image that changes based on remaining guesses.
- Audio feedback for correct or incorrect guesses.
- Textfield and button interactions to capture user input.

By walking through this code, you can get a better grasp of:
- SwiftUI’s state-driven UI updates.
- Basic user input handling.
- Simple audio playback with `AVAudioPlayer`.

---

## Features

- **Multiple Words to Guess**: Each new game cycles through a predefined list of words.
- **Flower Wilting Animation**: Incorrect guesses cause the flower to wilt, adding visual feedback.
- **Audio Feedback**: Correct and incorrect guesses trigger different sound effects.
- **Restart Game Option**: Once all words are guessed or missed, you can restart the game from the beginning.

---

## How It Works

1. **Initial Setup**  
   - The app picks a word from the `wordsToGuess` array.
   - `revealedWord` masks the letters with underscores.

2. **Gameplay**  
   - When you enter a letter in the text field, the code checks if it’s in the hidden word.
   - Correct guesses reveal the letter(s); incorrect guesses decrement `guessesRemaining`.
   - The flower image updates each time you lose a guess.

3. **Game States**  
   - **Correct Word**: Displays a success message, adds to `wordsGuessed`, and prompts for a new word.
   - **Out of Guesses**: Displays a fail message, increments `wordsMissed`, and prompts for a new word.
   - **All Words Attempted**: Offers a restart option once you’ve either guessed or missed all words.

4. **Audio Playback**  
   - Uses `AVAudioPlayer` and bundled sound files (`correct`, `incorrect`, `word-guessed`, `word-not-guessed`).

---

## Requirements

- **Swift**: 5.0+
- **Xcode**: 14+ (Recommended)
- **iOS Deployment Target**: iOS 15.0 or later (Adjust to match your setup)
- **AVAudioPlayer**: Requires audio files in `.xcassets` or the project bundle.

---

## Usage

1. **Clone or Download** this repository.
2. **Open the Project** in Xcode.
3. **Run** on a simulator or physical device running iOS 15.0+.
4. **Guess Letters** in the text field and press **Guess a Letter**.
5. **Watch** the flower wilt on incorrect attempts and reveal letters on correct guesses.
6. **Continue** until you’ve guessed or run out of attempts. Restart if you want another round.

---

## Acknowledgments

- **Professor’s YouTube Tutorials**  
  This project was inspired by tutorials from the following YouTube playlist:  
  [SwiftUI Course Playlist](https://www.youtube.com/playlist?list=PL9VJ9OpT-IPSM6dFSwQCIl409gNBsqKTe)  

Special thanks to my professor for the guidance and resources used to learn SwiftUI techniques.

---

Feel free to explore the code, experiment with new features, or integrate more words. Have fun and happy coding!
