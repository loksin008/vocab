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
"Bahamas - Nassau" "Bahrain - Manama" "Bangladesh - Dhaka" "Barbados - Bridgetown" "Belarus - Minsk"
"Belgium - Brussels" "Belize - Belmopan" "Benin - Porto-Novo" "Bhutan - Thimphu" "Bolivia - Sucre"
"Bosnia and Herzegovina - Sarajevo" "Botswana - Gaborone" "Brazil - Brasília" "Brunei - Bandar Seri Begawan"
"Bulgaria - Sofia" "Burkina Faso - Ouagadougou" "Burundi - Gitega" "Cambodia - Phnom Penh" "Cameroon - Yaoundé"
"Canada - Ottawa" "Cape Verde - Praia" "Central African Republic - Bangui" "Chad - N'Djamena"
"Chile - Santiago" "China - Beijing" "Colombia - Bogotá" "Comoros - Moroni" "Congo - Brazzaville"
"Costa Rica - San José" "Croatia - Zagreb" "Cuba - Havana" "Cyprus - Nicosia" "Czech Republic - Prague"
"Denmark - Copenhagen" "Djibouti - Djibouti" "Dominica - Roseau" "Dominican Republic - Santo Domingo"
"Ecuador - Quito" "Egypt - Cairo" "El Salvador - San Salvador" "Equatorial Guinea - Malabo"
"Eritrea - Asmara" "Estonia - Tallinn" "Eswatini - Mbabane" "Ethiopia - Addis Ababa" "Fiji - Suva"
"Finland - Helsinki" "France - Paris" "Gabon - Libreville" "Gambia - Banjul" "Georgia - Tbilisi"
"Germany - Berlin" "Ghana - Accra" "Greece - Athens" "Grenada - St. George's" "Guatemala - Guatemala City"
"Guinea - Conakry" "Guinea-Bissau - Bissau" "Guyana - Georgetown" "Haiti - Port-au-Prince"
"Honduras - Tegucigalpa" "Hungary - Budapest" "Iceland - Reykjavik" "India - New Delhi" "Indonesia - Jakarta"
"Iran - Tehran" "Iraq - Baghdad" "Ireland - Dublin" "Israel - Jerusalem" "Italy - Rome"
"Jamaica - Kingston" "Japan - Tokyo" "Jordan - Amman" "Kazakhstan - Nur-Sultan" "Kenya - Nairobi"
"Kiribati - Tarawa" "Kuwait - Kuwait City" "Kyrgyzstan - Bishkek" "Laos - Vientiane" "Latvia - Riga"
"Lebanon - Beirut" "Lesotho - Maseru" "Liberia - Monrovia" "Libya - Tripoli" "Liechtenstein - Vaduz"
"Lithuania - Vilnius" "Luxembourg - Luxembourg City" "Madagascar - Antananarivo" "Malawi - Lilongwe"
"Malaysia - Kuala Lumpur" "Maldives - Malé" "Mali - Bamako" "Malta - Valletta" "Marshall Islands - Majuro"
"Mauritania - Nouakchott"
# Add remaining 5 pairs to complete the 100
)

# Function to display main menu
function show_menu() {
    echo "Select an option:"
    echo "1. Hindi Vocabulary"
    echo "2. English Vocabulary"
    echo "3. Hindi Writers and Books"
    echo "4. English Writers and Books"
    echo "5. Countries and Capitals"
    echo "6. Exit"
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
        echo "Hindi Vocabulary"
        ;;
    2)
        echo "English Vocabulary"
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
        echo "Exiting the program. Goodbye!"
        break
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
    esac
done
        
