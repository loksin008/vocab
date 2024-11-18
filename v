#!/bin/bash

# Vocabulary data
declare -a hindi_opposites=("अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा")
declare -a hindi_synonyms=("अच्छा - श्रेष्ठ" "सुंदर - मनमोहक" "तेज़ - शीघ्र" "साहस - हिम्मत" "ज्ञान - विद्या")
declare -a english_opposites=("Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow")
declare -a english_synonyms=("Good - Excellent" "Beautiful - Lovely" "Fast - Quick" "Brave - Courageous" "Knowledge - Wisdom")

# Function to display menu
function show_menu() {
    echo "Select an option:"
    echo "1. Hindi Vocabulary"
    echo "2. English Vocabulary"
    echo "3. Exit"
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

# Function to display words
function display_words() {
    local array=("$@")
    for word in "${array[@]}"; do
        echo "$word"
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
                display_words "${hindi_opposites[@]}"
                ;;
            2)
                echo "Hindi Synonyms:"
                display_words "${hindi_synonyms[@]}"
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
                display_words "${english_opposites[@]}"
                ;;
            2)
                echo "English Synonyms:"
                display_words "${english_synonyms[@]}"
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
        echo "Exiting the program. Goodbye!"
        break
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
    esac
done
