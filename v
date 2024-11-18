#!/bin/bash

# Vocabulary data
declare -a hindi_opposites=(
"अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा"
"शांत - शोर" "धन - गरीबी" "उज्ज्वल - अंधकार" "जीवन - मृत्यु" "सच - झूठ"
"सूरज - चाँद" "आग - पानी" "प्रेम - नफरत" "नया - पुराना" "प्रकाश - अंधेरा"
"आसान - कठिन" "दिन - रात" "प्यार - घृणा" "स्वास्थ्य - बीमारी" "शांति - युद्ध"
"जीत - हार" "अमीर - गरीब" "धनी - निर्धन" "दोस्त - दुश्मन" "स्वर्ग - नरक"
"खुशबू - बदबू" "लंबा - छोटा" "मजबूत - कमजोर" "ठंडा - गरम" "शक्ति - कमजोरी"
"सपना - हकीकत" "सकारात्मक - नकारात्मक" "बाहर - अंदर" "उजाला - अंधेरा" "धूप - छाँव"
"सच - झूठ" "पहाड़ - घाटी" "जल्दी - देरी" "उच्च - निम्न" "लाभ - हानि"
"शक्ति - दुर्बलता" "स्वच्छ - गंदा" "कठिन - सरल" "जन्म - मृत्यु" "बुद्धिमान - मूर्ख"
"सर्दी - गर्मी" "मधुर - कड़वा" "प्रेमी - घृणास्पद" "निर्मल - अशांत" "शुद्ध - अशुद्ध"
)

declare -a english_opposites=(
"Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow"
"Quiet - Noisy" "Rich - Poor" "Bright - Dark" "Life - Death" "True - False"
"Sun - Moon" "Fire - Water" "Love - Hate" "New - Old" "Light - Darkness"
"Easy - Hard" "Day - Night" "Love - Hate" "Health - Illness" "Peace - War"
"Win - Lose" "Rich - Poor" "Wealthy - Poor" "Friend - Enemy" "Heaven - Hell"
"Sweet - Sour" "Tall - Short" "Strong - Weak" "Cold - Hot" "Power - Weakness"
"Dream - Reality" "Positive - Negative" "Outside - Inside" "Light - Dark" "Sunshine - Shade"
"True - False" "Mountain - Valley" "Early - Late" "High - Low" "Profit - Loss"
"Strength - Weakness" "Clean - Dirty" "Hard - Soft" "Birth - Death" "Wise - Foolish"
"Cold - Warm" "Sweet - Bitter" "Lover - Hater" "Pure - Impure"
)

# Function to update a vocabulary list
function update_list() {
    local list_name=$1
    local -n list=$2
    echo "Current entries in $list_name:"
    for i in "${!list[@]}"; do
        echo "$i. ${list[$i]}"
    done

    read -p "Enter the index number of the word you want to update: " index
    if [ "$index" -ge 0 ] && [ "$index" -lt "${#list[@]}" ]; then
        read -p "Enter the new word/phrase: " new_word
        list[$index]="$new_word"
        echo "$list_name updated successfully!"
    else
        echo "Invalid index!"
    fi
}

# Function to display main menu
function show_menu() {
    echo "Select an option:"
    echo "1. Hindi Vocabulary (Opposites)"
    echo "2. English Vocabulary (Opposites)"
    echo "3. Pots Names (English to Hindi)"
    echo "4. Flowers (English to Hindi)"
    echo "5. Parts of the Body (English to Hindi)"
    echo "6. Days of the Week (English to Hindi)"
    echo "7. Months of the Year (English to Hindi)"
    echo "8. Update Vocabulary List"
    echo "9. Exit"
}

# Function to display data
function display_data() {
    local array=("$@")
    for item in "${array[@]}"; do
        echo "$item"
    done
}

# Pots Names (English to Hindi)
declare -a pots_names=(
"Flower Pot - फूल का बर्तन" "Clay Pot - मिट्टी का बर्तन" "Terracotta Pot - टेराकोटा बर्तन" "Plastic Pot - प्लास्टिक का बर्तन"
"Metal Pot - धातु का बर्तन" "Hanging Pot - झूलता बर्तन" "Ceramic Pot - सिरेमिक बर्तन" "Stone Pot - पत्थर का बर्तन"
"Garden Pot - बगिया का बर्तन" "Decorative Pot - सजावटी बर्तन"
)

# Flowers (English to Hindi)
declare -a flowers=(
"Rose - गुलाब" "Tulip - ट्यूलिप" "Lily - लिली" "Sunflower - सूरजमुखी" "Daffodil - डैफोडिल"
"Orchid - ऑर्किड" "Chrysanthemum - गुलदाउदी" "Marigold - गेंदे का फूल" "Jasmine - चमेली" "Lotus - कमल"
)

# Parts of the Body (English to Hindi)
declare -a body_parts=(
"Head - सिर" "Eye - आंख" "Nose - नाक" "Ear - कान" "Mouth - मुंह"
"Hand - हाथ" "Leg - पैर" "Arm - भुजा" "Foot - पैर का पंजा" "Heart - हृदय"
"Lungs - फेफड़े" "Liver - यकृत" "Stomach - पेट" "Brain - मस्तिष्क" "Teeth - दांत"
"Tongue - जीभ" "Hair - बाल" "Skin - त्वचा" "Bone - हड्डी" "Blood - रक्त"
"Finger - अंगुली" "Thumb - अंगूठा" "Knee - घुटना" "Elbow - कोहनी"
"Shoulder - कंधा" "Neck - गर्दन" "Chest - छाती" "Back - पीठ"
"Waist - कमर" "Hip - नितंब" "Thigh - जांघ" "Calf - पिंडली" "Ankle - टखना"
"Toe - पैर की अंगुली" "Forehead - माथा" "Cheek - गाल" "Chin - ठोड़ी"
"Lips - होंठ" "Palm - हथेली" "Wrist - कलाई" "Heel - एड़ी"
)

# Days of the Week (English to Hindi)
declare -a days=(
"Monday - सोमवार" "Tuesday - मंगलवार" "Wednesday - बुधवार" "Thursday - गुरुवार" 
"Friday - शुक्रवार" "Saturday - शनिवार" "Sunday - रविवार"
)

# Months of the Year (English to Hindi)
declare -a months=(
"January - जनवरी" "February - फरवरी" "March - मार्च" "April - अप्रैल"
"May - मई" "June - जून" "July - जुलाई" "August - अगस्त"
"September - सितंबर" "October - अक्टूबर" "November - नवंबर" "December - दिसंबर"
)

# Main program loop
while true; do
    show_menu
    read -p "Enter your choice: " choice

    case $choice in
    1)
        echo "Hindi Opposites:"
        display_data "${hindi_opposites[@]}"
        ;;
    2)
        echo "English Opposites:"
        display_data "${english_opposites[@]}"
        ;;
    3)
        echo "Pots Names (English to Hindi):"
        display_data "${pots_names[@]}"
        ;;
    4)
        echo "Flowers (English to Hindi):"
        display_data "${flowers[@]}"
        ;;
    5)
        echo "Parts of the Body (English to Hindi):"
        display_data "${body_parts[@]}"
        ;;
    6)
        echo "Days of the Week (English to Hindi):"
        display_data "${days[@]}"
        ;;
    7)
        echo "Months of the Year (English to Hindi):"
        display_data "${months[@]}"
        ;;
    8)
        echo "Select the vocabulary list you want to update:"
        echo "1. Hindi Vocabulary (Opposites)"
        echo "2. English Vocabulary (Opposites)"
        echo "3. Pots Names (English to Hindi)"
        echo "4. Flowers (English to Hindi)"
        echo "5. Parts of the Body (English to Hindi)"
        echo "6. Days of the Week (English to Hindi)"
        echo "7. Months of the Year (English to Hindi)"
        read -p "Enter your choice: " update_choice
        
        case $update_choice in
        1)
            update_list "Hindi Vocabulary (Opposites)" hindi_opposites
            ;;
        2)
            update_list "English Vocabulary (Opposites)" english_opposites
            ;;
        3)
            update_list "Pots Names (English to Hindi)" pots_names
            ;;
        4)
            update_list "Flowers (English to Hindi)" flowers
            ;;
        5)
            update_list "Parts of the Body (English to Hindi)" body_parts
            ;;
        6)
            update_list "Days of the Week (English to Hindi)" days
            ;;
        7)
            update_list "Months of the Year (English to Hindi)" months
            ;;
        *)
            echo "Invalid choice!"
            ;;
        esac
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
            
