# Hangman Game in Ruby

## 📌 Overview
This is a simple yet challenging Hangman game implemented in Ruby. The player must guess the hidden word by suggesting letters within a limited number of attempts. The game provides feedback on correct and incorrect guesses and ends when the player successfully guesses the word or runs out of attempts.

## 🚀 Features
- Randomly selects a word from a predefined list.
- Displays the current state of the word with underscores for unguessed letters.
- Tracks guessed letters and prevents duplicate guesses.
- Limits the number of incorrect attempts before ending the game.
- Provides feedback on wins and losses.

## 🛠️ Installation
### Prerequisites
- Ruby installed on your system (Recommended: Ruby 3.0 or higher).

### Steps
1. Clone this repository:
   ```sh
   git clone https://github.com/DragonKzwy/Hangman.git
   cd Hangman
   ```
2. Run the game:
   ```sh
   ruby Hangman.rb
   ```

## 🎮 How to Play
1. The game randomly selects a word and hides it with underscores.
2. You enter one letter per turn to guess the word.
3. If the letter is correct, it replaces the corresponding underscores.
4. If the letter is incorrect, an attempt is deducted.
5. The game ends when you either guess the word correctly or use up all your attempts.

## 📷 Example Output
```
Word: _ _ _ _ _ _
Attempts left: 6
Guessed letters:
Enter a letter: e
Correct!
Word: _ e _ e _ _
Attempts left: 6
Guessed letters: e
...
```

## 📜 License
This project is open-source and available under the MIT License.

---

💡 Feel free to contribute by submitting pull requests or reporting issues! 😊

