#!/bin/bash

# Vocabulary data
declare -a hindi_opposites=(
"अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा"
"शांत - शोर" "धन - गरीबी" "उज्ज्वल - अंधकार" "जीवन - मृत्यु" "सच - झूठ"
# Add remaining 90 pairs
)

declare -a hindi_synonyms=(
"अच्छा - श्रेष्ठ" "सुंदर - मनमोहक" "तेज़ - शीघ्र" "साहस - हिम्मत" "ज्ञान - विद्या"
"पथ - रास्ता" "खुशी - आनंद" "प्यार - मोहब्बत" "धन - संपत्ति" "शक्ति - बल"
# Add remaining 90 pairs
)

declare -a english_opposites=(
"Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow"
"Bright - Dark" "Friend - Enemy" "Love - Hate" "Victory - Defeat" "Rich - Poor"
# Add remaining 90 pairs
)

declare -a english_synonyms=(
"Good - Excellent" "Beautiful - Lovely" "Fast - Quick" "Brave - Courageous" "Knowledge - Wisdom"
"Happy - Joyful" "Sad - Melancholy" "Strong - Powerful" "Bright - Radiant" "Hard - Tough"
# Add remaining 90 pairs
)

# Hindi writers and books
declare -a hindi_writers_books=(
"मुंशी प्रेमचंद - गोदान" "महादेवी वर्मा - यामा" "हरिवंश राय बच्चन - मधुशाला" 
"रामधारी सिंह दिनकर - रश्मिरथी" "सूरदास - सूरसागर"
"जयशंकर प्रसाद - कामायनी" "सुभद्रा कुमारी चौहान - झाँसी की रानी"
"निराला - सरोज स्मृति" "बालकृष्ण भट्ट - हास्य तरंग" "धर्मवीर भारती - गुनाहों का देवता"
# Add remaining 90 writers and books
)

# English writers and books
declare -a english_writers_books=(
"William Shakespeare - Hamlet" "Jane Austen - Pride and Prejudice" "Charles Dickens - Great Expectations"
"Mark Twain - The Adventures of Tom Sawyer" "J.K. Rowling - Harry Potter Series"
"George Orwell - 1984" "Ernest Hemingway - The Old Man and the Sea"
"F. Scott Fitzgerald - The Great Gatsby" "Leo Tolstoy - War and Peace" "Emily Bronte - Wuthering Heights"
# Add remaining 90 writers and books
)

# Function to display main menu
function show_menu() {
    echo "Select an option:"
    echo "1. Hindi Vocabulary"
    echo "2. English Vocabulary"
    echo "3. Hindi Writers and Books"
    echo "4. English Writers and Books"
    echo "5. Exit"
}

# Function for Hindi sub-menu
function hindi_menu() {
    echo "Select an option for Hindi:"
    echo "1. 100 Opposites"
    echo "2. 100 Synonyms"
    echo "3. Back"
}

# Function for English sub-menu
function english_menu() {
    echo "Select an option for English:"
    echo "1. 100 Opposites"
    echo "2. 100 Synonyms"
    echo "3. Back"
}

# Function to display words or data
function display_data() {
    local array=("$@")
    for item in "${array[@]}"; do
        echo "$item"
    done
}

# Main program loop
while true; do
    show_menu
    read -p "Enter your choice: " choice

    case $choice in
    1)
        while true; do
            hindi_menu
            read -p "Enter your choice: " hindi_choice
            case $hindi_choice in
            1)
                echo "Hindi Opposites:"
                display_data "${hindi_opposites[@]}"
                ;;
            2)
                echo "Hindi Synonyms:"
                display_data "${hindi_synonyms[@]}"
                ;;
            3)
                break
                ;;
            *)
                echo "Invalid choice. Please try again."
                ;;
            esac
        done
        ;;
    2)
        while true; do
            english_menu
            read -p "Enter your choice: " english_choice
            case $english_choice in
            1)
                echo "English Opposites:"
                display_data "${english_opposites[@]}"
                ;;
            2)
                echo "English Synonyms:"
                display_data "${english_synonyms[@]}"
                ;;
            3)
                break
                ;;
            *)
                echo "Invalid choice. Please try again."
                ;;
            esac
        done
        ;;
    3)
        echo "Hindi Writers and their Books:"
        display_data "${hindi_writers_books[@]}"
        ;;
    4)
        echo "English Writers and their Books:"
        display_data "${english_writers_books[@]}"
        ;;
    5)
        echo "Exiting the program. Goodbye!"
        break
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
    esac
done
                
