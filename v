#!/bin/bash

# Bird Names (English to Hindi)
declare -a bird_names=(
"Pigeon - कबूतर" "Peacock - मोर" "Sparrow - गौरैया" "Parrot - तोता" "Crow - कौवा"
"Eagle - चील" "Owl - उल्लू" "Duck - बत्तख" "Swan - हंस" "Kingfisher - राम चिरैया"
"Cuckoo - कोयल" "Hawk - बाज" "Woodpecker - कठफोड़वा" "Flamingo - राजहंस" "Penguin - पेंगुइन"
"Seagull - समुद्री ब gull" "Hornbill - धनेश पक्षी" "Turkey - टर्की" "Stork - सारस" "Crane - क्रेन"
"Robin - रॉबिन" "Hummingbird - गुंजन पक्षी" "Magpie - नीलकंठ" "Dove - फाख्ता" "Vulture - गिद्ध"
# Add remaining 75 bird names
)

# Pet Animals (English to Hindi)
declare -a pet_animals=(
"Dog - कुत्ता" "Cat - बिल्ली" "Rabbit - खरगोश" "Hamster - चूहा" "Guinea Pig - गिनी पिग"
"Goldfish - सुनहरी मछली" "Parrot - तोता" "Turtle - कछुआ" "Canary - कैनरी पक्षी" "Lovebird - लवबर्ड"
"Budgerigar - बजरीगर" "Horse - घोड़ा" "Cow - गाय" "Goat - बकरी" "Sheep - भेड़"
"Duck - बत्तख" "Chicken - मुर्गी" "Pigeon - कबूतर" "Fish - मछली" "Frog - मेंढक"
"Llama - लामा" "Ferret - फेर्रेट" "Gecko - छिपकली" "Snake - सांप" "Pig - सूअर"
# Add remaining 25 pet animals
)

# Wild Animals (English to Hindi)
declare -a wild_animals=(
"Tiger - बाघ" "Lion - शेर" "Elephant - हाथी" "Leopard - तेंदुआ" "Cheetah - चीता"
"Bear - भालू" "Wolf - भेड़िया" "Deer - हिरण" "Fox - लोमड़ी" "Zebra - ज़ेब्रा"
"Giraffe - जिराफ़" "Rhinoceros - गेंडा" "Crocodile - मगरमच्छ" "Hippopotamus - दरियाई घोड़ा"
"Kangaroo - कंगारू" "Panda - पांडा" "Hyena - लकड़बग्घा" "Jackal - सियार" "Otter - ऊदबिलाव"
"Chimpanzee - चिंपांज़ी" "Orangutan - वनमानुष" "Koala - कोआला" "Antelope - मृग"
"Armadillo - आर्माडिलो" "Sloth - आलसी प्राणी" "Badger - बेजर" "Porcupine - साही"
"Wild Boar - जंगली सूअर" "Bison - जंगली सांड" "Buffalo - भैंस" "Jaguar - जैगुआर"
# Add remaining 20 wild animals
)

# Function to display main menu
function show_menu() {
    echo "Select an option:"
    echo "1. Birds (English to Hindi)"
    echo "2. Pet Animals (English to Hindi)"
    echo "3. Wild Animals (English to Hindi)"
    echo "4. Exit"
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
        echo "Bird Names (English to Hindi):"
        display_data "${bird_names[@]}"
        ;;
    2)
        echo "Pet Animals (English to Hindi):"
        display_data "${pet_animals[@]}"
        ;;
    3)
        echo "Wild Animals (English to Hindi):"
        display_data "${wild_animals[@]}"
        ;;
    4)
        echo "Exiting the program. Goodbye!"
        break
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
    esac
done
        
