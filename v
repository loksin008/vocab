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

# Masculine to Feminine (English to Hindi)
declare -a masculine_feminine=(
"Actor - अभिनेत्री" "King - रानी" "Prince - राजकुमारी" "Father - माँ" "Brother - बहन"
"Husband - पत्नी" "Man - महिला" "Boy - लड़की" "Son - बेटी" "Uncle - आंटी"
"Grandfather - दादी" "Nephew - भांजी" "Grandson - पोती" "Male - महिला" "Gentleman - महिला"
"God - देवी" "Hero - हीरोइन" "Host - मेज़बान" "Bridegroom - दुल्हन" "Bachelor - कुंवारी"
"Father-in-law - सास" "Son-in-law - बहू" "Master - मालकिन" "Lord - देवी" "King - रानी"
"Emperor - साम्राज्ञी" "Steward - सेविका" "Brahmin - ब्राह्मणी" "Chairman - अध्यक्षा" "Shopkeeper - दुकानदार"
"Customer - ग्राहक" "Teacher - शिक्षिका" "Doctor - डॉ. महिला" "Scientist - वैज्ञानिक महिला" "Leader - नेतृ"
"Kingdom - रानी की भूमि" "Politician - महिला नेता" "Warrior - योद्धा महिला" "Scholar - विदुषी" "Writer - लेखिका"
"Author - लेखिका" "Patriarch - मातृप्रधान" "Partner - सहायक महिला" "Manager - महिला प्रबंधक" "Minister - महिला मंत्री"
)

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
"Finger - अंगुली" "Thumb - अंगूठा" "Knee - घुटना" "Elbow - कोहनी" "Shoulder - कंधा"
"Neck - गर्दन" "Chest - छाती" "Back - पीठ" "Waist - कमर" "Hip - नितंब"
"Thigh - जांघ" "Calf - पिंडली" "Ankle - टखना" "Toe - पैर की अंगुली" "Forehead - माथा"
"Cheek - गाल" "Chin - ठोड़ी" "Lips - होंठ" "Palm - हथेली" "Wrist - कलाई"
"Heel - एड़ी"
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

# Colors (English to Hindi)
declare -a colors=(
"Red - लाल" "Blue - नीला" "Green - हरा" "Yellow - पीला" "Black - काला"
"White - सफेद" "Pink - गुलाबी" "Orange - नारंगी" "Purple - बैंगनी" "Brown - भूरा"
"Gray - धूसर" "Golden - सुनहरा" "Silver - चांदी" "Beige - बेज" "Violet - बैंगनी"
"Indigo - नील" "Turquoise - फिरोजी" "Magenta - मैजेंटा" "Maroon - महरून" "Olive - जैतून"
)

# Vegetables (English to Hindi)
declare -a vegetables=(
"Potato - आलू" "Onion - प्याज" "Tomato - टमाटर" "Carrot - गाजर" "Cucumber - खीरा"
"Spinach - पालक" "Cauliflower - फूलगोभी" "Cabbage - बंदगोभी" "Peas - मटर" "Pumpkin - कद्दू"
"Brinjal - बैंगन" "Bottle Gourd - लौकी" "Radish - मूली" "Bitter Gourd - करेला" "Sweet Potato - शकरकंद"
"Beans - बीन्स" "Lettuce - सलाद" "Garlic - लहसुन" "Ginger - अदरक" "Chili - मिर्च"
"Okra - भिंडी" "Corn - मक्का" "Mushroom - मशरूम" "Zucchini - तोरी" "Turnip - शलजम"
)

# Fruits (English to Hindi)
declare -a fruits=(
"Apple - सेब" "Banana - केला" "Mango - आम" "Grapes - अंगूर" "Orange - संतरों"
"Pineapple - अनानास" "Peach - आड़ू" "Plum - आलूबुखारा" "Watermelon - तरबूज" "Papaya - पपीता"
"Guava - अमरूद" "Pomegranate - अनार" "Lychee - लीची" "Apricot - खुबानी" "Cherries - चेरी"
"Strawberry - स्ट्रॉबेरी" "Dragon Fruit - ड्रैगन फ्रूट" "Raspberry - रास्पबेरी" "Blackberry - जामुन"
"Jackfruit - कटहल" "Coconut - नारियल" "Tamarind - इमली" "Lemon - नींबू"
"Pear - नाशपाती" "Cranberry - क्रैनबेरी" "Gooseberry - आंवला"
)

# Birds (English to Hindi)
declare -a birds=(
"Eagle - गरुड़" "Parrot - तोता" "Sparrow - गौरैया" "Peacock - मोर" "Crow - कौआ"
"Hen - मुर्गी" "Duck - बतख" "Owl - उल्लू" "Pigeon - कबूतर" "Flamingo - फ्लेमिंगो"
"Kingfisher - मछली मारनेवाला पक्षी" "Woodpecker - कठफोड़वा" "Pelican - पेलेकन" "Vulture - गिद्ध" "Swallow - स्वालो"
"Hummingbird - हमिंगबर्ड" "Seagull - सीगल" "Robin - रॉबिन" "Cuckoo - कोयल" "Swift - स्विफ्ट"
"Wren - व्रेन" "Blackbird - काला पक्षी" "Magpie - मैगपाई" "Starling - स्टार्लिंग" "Raven - कौआ"
"Turkey - टर्की" "Peafowl - तीतर" "Cock - मुर्गा" "Cuckoo - कोयल" "Titmouse - माउस पक्षी"
)

# Classroom Things (English to Hindi)
declare -a classroom_things=(
"Pen - कलम" "Pencil - पेंसिल" "Book - किताब" "Notebook - नोटबुक" "Eraser - रबर"
"Chalk - चॉक" "Board - बोर्ड" "Desk - डेस्क" "Chair - कुर्सी" "Ruler - रूलर"
"Bag - बैग" "Sharpener - शार्पनर" "Clock - घड़ी" "Map - नक्शा" "Globe - ग्लोब"
"Scissors - कैंची" "Stapler - स्टेपलर" "Paper - कागज" "Folder - फोल्डर" "Calculator - कैलकुलेटर"
)

# Clothes (English to Hindi)
declare -a clothes=(
"Shirt - शर्ट" "Pant - पैंट" "Dress - ड्रेस" "Skirt - स्कर्ट" "T-shirt - टी-शर्ट"
"Jeans - जींस" "Jacket - जैकेट" "Sweater - स्वेटर" "Coat - कोट" "Socks - मोजे"
"Cap - टोपी" "Scarf - स्कार्फ" "Shoes - जूते" "Slippers - चप्पल" "Tie - टाई"
"Kurta - कुर्ता" "Sari - साड़ी" "Lehenga - लहंगा" "Chudidar - चूड़ीदार" "Blouse - ब्लाउज"
"Shorts - शॉर्ट्स" "Blazer - ब्लेज़र" "Raincoat - रेनकोट" "Sweatshirt - स्वेटशर्ट" "Pajama - पजामा"
"Shawl - शॉल" "Belt - बेल्ट" "Hoodie - हुडी" "Boots - बूट्स" "Gloves - दस्ताने"
)

# Food Grains (English to Hindi)
declare -a food_grains=(
"Rice - चावल" "Wheat - गेहूं" "Barley - जौ" "Maize - मक्का" "Oats - जई"
"Millet - बाजरा" "Ragi - रागी" "Chickpeas - चने" "Lentils - दाल" "Kidney Beans - राजमा"
"Pulses - दलहन" "Soybeans - सोयाबीन" "Peas - मटर" "Pigeon Pea - तुअर दाल" "Black Beans - काले बीन्स"
"Green Beans - हरे बीन्स" "Red Lentils - लाल मसूर" "Basmati Rice - बासमती चावल" "Brown Rice - भूरे चावल" "White Rice - सफेद चावल"
"Black Gram - उड़द दाल" "Green Gram - मूँग दाल" "Mustard Seeds - सरसों के बीज" "Fenugreek Seeds - मेथी के बीज" "Coriander Seeds - धनिया के बीज"
"Sesame Seeds - तिल के बीज" "Flax Seeds - अलसी के बीज" "Poppy Seeds - खसखस के बीज" "Sorghum - जो" "Amaranth - राजगीर"
)

# Function to display vocabulary data
display_data() {
    local -n arr=$1
    for i in "${arr[@]}"; do
        echo "$i"
    done
}

# Function to update a list
update_list() {
    local list_name=$1
    local -n arr=$2

    echo "Current $list_name:"
    display_data arr

    echo "Enter the index to update:"
    read index
    if [[ $index -ge 0 && $index -lt ${#arr[@]} ]]; then
        echo "Enter the new value:"
        read new_value
        arr[$index]=$new_value
        echo "$list_name updated successfully!"
    else
        echo "Invalid index!"
    fi
}

# Main program loop
while true; do
    echo "Choose an option:"
    echo "1. View English Vocabulary (Opposites)"
    echo "2. View Hindi Vocabulary (Opposites)"
    echo "3. View Pots Names (English to Hindi)"
    echo "4. View Flowers (English to Hindi)"
    echo "5. View Parts of the Body (English to Hindi)"
    echo "6. View Days of the Week (English to Hindi)"
    echo "7. View Months of the Year (English to Hindi)"
    echo "8. View Colors (English to Hindi)"
    echo "9. View Vegetables (English to Hindi)"
    echo "10. View Fruits (English to Hindi)"
    echo "11. View Birds (English to Hindi)"
    echo "12. View Classroom Things (English to Hindi)"
    echo "13. View Clothes (English to Hindi)"
    echo "14. View Food Grains (English to Hindi)"
    echo "15. View Masculine to Feminine (English to Hindi)"
    echo "16. Update Vocabulary List"
    echo "17. Exit"

    read choice

    case $choice in
        1) display_data english_opposites ;;
        2) display_data hindi_opposites ;;
        3) display_data pots_names ;;
        4) display_data flowers ;;
        5) display_data body_parts ;;
        6) display_data days ;;
        7) display_data months ;;
        8) display_data colors ;;
        9) display_data vegetables ;;
        10) display_data fruits ;;
        11) display_data birds ;;
        12) display_data classroom_things ;;
        13) display_data clothes ;;
        14) display_data food_grains ;;
        15) display_data masculine_feminine ;;
        16)
            echo "Choose which list to update:"
            echo "1. Hindi Vocabulary (Opposites)"
            echo "2. English Vocabulary (Opposites)"
            echo "3. Pots Names (English to Hindi)"
            echo "4. Flowers (English to Hindi)"
            echo "5. Parts of the Body (English to Hindi)"
            echo "6. Days of the Week (English to Hindi)"
            echo "7. Months of the Year (English to Hindi)"
            echo "8. Colors (English to Hindi)"
            echo "9. Vegetables (English to Hindi)"
            echo "10. Fruits (English to Hindi)"
            echo "11. Birds (English to Hindi)"
            echo "12. Classroom Things (English to Hindi)"
            echo "13. Clothes (English to Hindi)"
            echo "14. Food Grains (English to Hindi)"
            echo "15. Masculine to Feminine (English to Hindi)"
            read update_choice
            case $update_choice in
                1) update_list "Hindi Vocabulary (Opposites)" hindi_opposites ;;
                2) update_list "English Vocabulary (Opposites)" english_opposites ;;
                3) update_list "Pots Names (English to Hindi)" pots_names ;;
                4) update_list "Flowers (English to Hindi)" flowers ;;
                5) update_list "Parts of the Body (English to Hindi)" body_parts ;;
                6) update_list "Days of the Week (English to Hindi)" days ;;
                7) update_list "Months of the Year (English to Hindi)" months ;;
                8) update_list "Colors (English to Hindi)" colors ;;
                9) update_list "Vegetables (English to Hindi)" vegetables ;;
                10) update_list "Fruits (English to Hindi)" fruits ;;
                11) update_list "Birds (English to Hindi)" birds ;;
                12) update_list "Classroom Things (English to Hindi)" classroom_things ;;
                13) update_list "Clothes (English to Hindi)" clothes ;;
                14) update_list "Food Grains (English to Hindi)" food_grains ;;
                15) update_list "Masculine to Feminine (English to Hindi)" masculine_feminine ;;
                *) echo "Invalid choice!" ;;
            esac
            ;;
        17) exit 0 ;;
        *) echo "Invalid choice! Please try again." ;;
    esac
done
                
