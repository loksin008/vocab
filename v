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
# Add remaining 95 writers and books
)

# English writers and books
declare -a english_writers_books=(
"William Shakespeare - Hamlet" "Jane Austen - Pride and Prejudice" "Charles Dickens - Great Expectations"
"Mark Twain - The Adventures of Tom Sawyer" "J.K. Rowling - Harry Potter Series"
# Add remaining 95 writers and books
)

# Countries and capitals
declare -a countries_capitals=(
"Afghanistan - Kabul" "Albania - Tirana" "Algeria - Algiers" "Andorra - Andorra la Vella" "Angola - Luanda"
"Argentina - Buenos Aires" "Armenia - Yerevan" "Australia - Canberra" "Austria - Vienna" "Azerbaijan - Baku"
# Add remaining 90 pairs
)

# Bird Names (English to Hindi)
declare -a bird_names=(
"Pigeon - कबूतर" "Peacock - मोर" "Sparrow - गौरैया" "Parrot - तोता" "Crow - कौवा"
"Eagle - चील" "Owl - उल्लू" "Duck - बत्तख" "Swan - हंस" "Kingfisher - राम चिरैया"
# Add remaining 90 bird names
)

# Pet Animals (English to Hindi)
declare -a pet_animals=(
"Dog - कुत्ता" "Cat - बिल्ली" "Rabbit - खरगोश" "Hamster - चूहा" "Guinea Pig - गिनी पिग"
"Goldfish - सुनहरी मछली" "Parrot - तोता" "Turtle - कछुआ" "Canary - कैनरी पक्षी" "Lovebird - लवबर्ड"
# Add remaining 40 pet animals
)

# Wild Animals (English to Hindi)
declare -a wild_animals=(
"Tiger - बाघ" "Lion - शेर" "Elephant - हाथी" "Leopard - तेंदुआ" "Cheetah - चीता"
"Bear - भालू" "Wolf - भेड़िया" "Deer - हिरण" "Fox - लोमड़ी" "Zebra - ज़ेब्रा"
# Add remaining 40 wild animals
)

# Function to display main menu
function show_menu() {
    echo "Select an option:"
    echo "1. Hindi Vocabulary"
    echo "2. English Vocabulary"
    echo "3. Hindi Writers and Books"
    echo "4. English Writers and Books"
    echo "5. Countries and Capitals"
    echo "6. Birds (English to Hindi)"
    echo "7. Pet Animals (English to Hindi)"
    echo "8. Wild Animals (English to Hindi)"
    echo "9. Exit"
}

# Function to display data
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
        echo "Hindi Vocabulary Options:"
        echo "1. Opposites"
        echo "2. Synonyms"
        read -p "Enter your choice: " subchoice
        if [ "$subchoice" -eq 1 ]; then
            echo "Hindi Opposites:"
            display_data "${hindi_opposites[@]}"
        elif [ "$subchoice" -eq 2 ]; then
            echo "Hindi Synonyms:"
            display_data "${hindi_synonyms[@]}"
        else
            echo "Invalid choice."
        fi
        ;;
    2)
        echo "English Vocabulary Options:"
        echo "1. Opposites"
        echo "2. Synonyms"
        read -p "Enter your choice: " subchoice
        if [ "$subchoice" -eq 1 ]; then
            echo "English Opposites:"
            display_data "${english_opposites[@]}"
        elif [ "$subchoice" -eq 2 ]; then
            echo "English Synonyms:"
            display_data "${english_synonyms[@]}"
        else
            echo "Invalid choice."
        fi
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
        echo "Countries and Capitals:"
        display_data "${countries_capitals[@]}"
        ;;
    6)
        echo "Bird Names (English to Hindi):"
        display_data "${bird_names[@]}"
        ;;
    7)
        echo "Pet Animals (English to Hindi):"
        display_data "${pet_animals[@]}"
        ;;
    8)
        echo "Wild Animals (English to Hindi):"
        display_data "${wild_animals[@]}"
        ;;
    9)
        echo "Exiting the program. Goodbye!"
        break
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
    esac
done
        
