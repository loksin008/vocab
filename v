#!/bin/bash

# Vocabulary data

# Hindi Vocabulary
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

declare -a hindi_synonyms=(
"अच्छा - श्रेष्ठ" "सुंदर - मनमोहक" "तेज़ - शीघ्र" "साहस - हिम्मत" "ज्ञान - विद्या"
"पथ - रास्ता" "खुशी - आनंद" "प्यार - मोहब्बत" "धन - संपत्ति" "शक्ति - बल"
"सूरज - रवि" "पवन - वायु" "नदी - सरिता" "जल - पानी" "भूमि - धरती"
"अन्न - भोजन" "भविष्य - काल" "सफर - यात्रा" "तप - साधना" "विद्या - शिक्षा"
"देवता - भगवान" "मित्र - साथी" "घर - निवास" "हवा - समीर" "शांति - सुकून"
"चाँद - चंद्रमा" "पहाड़ - पर्वत" "सपना - स्वप्न" "प्रेम - प्यार" "अज्ञान - मूर्खता"
"रात्रि - रात" "प्रकाश - रोशनी" "कुशाग्र - तीव्र" "सरल - आसान" "स्वस्थ - तंदुरुस्त"
"जगह - स्थान" "शब्द - वचन" "आकाश - गगन" "धरती - भूमि" "आशा - उम्मीद"
"आग - अग्नि" "नवीन - नया" "पुराना - प्राचीन" "बुद्धि - ज्ञान" "शक्ति - बल"
"साहस - वीरता" "रंग - वर्ण" "सौंदर्य - रूप" "मित्र - दोस्त" "प्रार्थना - विनती"
)

# English Vocabulary
declare -a english_opposites=(
"Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow"
"Bright - Dark" "Friend - Enemy" "Love - Hate" "Victory - Defeat" "Rich - Poor"
"Smart - Foolish" "Strong - Weak" "Hard - Soft" "Clean - Dirty" "Hot - Cold"
"Day - Night" "Light - Heavy" "Safe - Dangerous" "Empty - Full" "Dry - Wet"
"Sharp - Dull" "Deep - Shallow" "Wide - Narrow" "Early - Late" "Up - Down"
"Yes - No" "High - Low" "Start - Stop" "Open - Close" "Fast - Slow"
"Happy - Unhappy" "Kind - Cruel" "Near - Far" "Soft - Hard" "Above - Below"
"Right - Wrong" "Right - Left" "Male - Female" "Push - Pull" "Long - Short"
"Thick - Thin" "Weak - Strong" "Healthy - Sick" "Love - Hate" "Win - Lose"
"Bright - Dim" "Light - Dark" "Cold - Hot" "Safe - Unsafe" "Friend - Foe"
)

declare -a english_synonyms=(
"Good - Excellent" "Beautiful - Gorgeous" "Fast - Quick" "Strong - Powerful" "Smart - Intelligent"
"Light - Bright" "Brave - Courageous" "Weak - Feeble" "Big - Huge" "Happy - Joyful"
"Rich - Wealthy" "Sad - Unhappy" "Important - Significant" "Clean - Neat" "Nice - Kind"
"Safe - Secure" "Friendly - Amiable" "Important - Vital" "Loud - Noisy" "Quiet - Silent"
"Hard - Tough" "Soft - Gentle" "Easy - Simple" "Strong - Sturdy" "Large - Enormous"
"Healthy - Fit" "Noble - Honorable" "Loyal - Faithful" "Poor - Impoverished" "Brave - Fearless"
"Generous - Giving" "Happy - Cheerful" "Fast - Swift" "Slow - Leisurely" "Tough - Resilient"
)

# Pots Names (50 total)
declare -a pots_names=(
"Clay Pot - मिट्टी का घड़ा" "Flower Pot - गमला" "Cooking Pot - खाना पकाने का बर्तन"
"Water Pot - पानी का घड़ा" "Brass Pot - पीतल का बर्तन" "Ceramic Pot - चीनी मिट्टी का बर्तन"
"Pressure Cooker - प्रेशर कुकर" "Steel Pot - स्टील का बर्तन" "Copper Pot - तांबे का बर्तन"
"Earthen Pot - मिट्टी का बर्तन" "Iron Pot - लोहे का बर्तन" "Aluminum Pot - एल्युमीनियम का बर्तन"
"Tea Pot - चायदान" "Coffee Pot - कॉफी का बर्तन" "Milk Pot - दूध का बर्तन"
"Sugar Pot - चीनी का डिब्बा" "Soup Pot - सूप का बर्तन" "Glass Pot - कांच का बर्तन"
"Plastic Pot - प्लास्टिक का गमला" "Wooden Pot - लकड़ी का बर्तन" "Antique Pot - प्राचीन घड़ा"
"Large Pot - बड़ा बर्तन" "Small Pot - छोटा बर्तन" "Decorative Pot - सजावटी गमला"
"Garden Pot - बगीचे का गमला" "Storage Pot - भंडारण बर्तन" "Vase - फूलदान"
"Herb Pot - जड़ी-बूटी का गमला" "Oil Pot - तेल का बर्तन" "Honey Pot - शहद का बर्तन"
"Medicine Pot - दवाई का बर्तन" "Casserole Pot - पुलाव का बर्तन" "Deep Fryer - डीप फ्रायर"
"Mixing Pot - मिलाने का बर्तन" "Fermentation Pot - खमीर का बर्तन" "Cooking Wok - कड़ाही"
"Pickling Jar - अचार का मर्तबान" "Planter Pot - पौधे का गमला" "Ash Pot - राख का बर्तन"
"Candle Pot - मोमबत्ती का बर्तन" "Incense Pot - धूप का बर्तन" "Soup Bowl - सूप कटोरा"
"Pitcher - सुराही" "Porridge Pot - दलिया का बर्तन" "Steamer Pot - स्टीमर का बर्तन"
"Salt Pot - नमक का बर्तन" "Rice Cooker Pot - चावल पकाने का बर्तन" "Milk Boiler - दूध का उबालक"
"Stock Pot - स्टॉक बर्तन"
)

# Flowers (30 total)
declare -a flowers=(
"Rose - गुलाब" "Lotus - कमल" "Marigold - गेंदा" "Sunflower - सूरजमुखी"
"Hibiscus - गुड़हल" "Jasmine - चमेली" "Tulip - कंद पुष्प" "Orchid - ऑर्किड"
"Daisy - गुलबहार" "Lavender - लैवेंडर" "Lily - कुमुदनी" "Daffodil - नरगिस"
"Peony - गुलबकावली" "Chrysanthemum - गुलदाउदी" "Bluebell - नीला बेल"
"Iris - इरिस" "Poppy - खसखस" "Primrose - बसंत पुष्प" "Carnation - लौंग फूल"
"Violet - बैंगनी फूल" "Amaryllis - अमारिलिस" "Petunia - पेटुनिया"
"Morning Glory - प्रातः बेला" "Magnolia - चम्पा" "Dahlia - डेहलिया"
"Geranium - गेरियम" "Hydrangea - हाइड्रेंजिया" "Snowdrop - हिम कमल"
"Lilac - बकाइन" "Freesia - फ्रीसिया"
)

# Parts of the Body (50 total)
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
"Biceps - बाजू" "Triceps - त्रिशूल मांसपेशी" "Eyelid - पलक" "Eyebrow - भौं"
"Rib - पसली" "Spine - रीढ़ की हड्डी" "Nail - नाखून" "Jaw - जबड़ा"
"Temple - कनपटी" "Ear Lobe - कान का लब"
)

# Function to display main menu
function show_menu() {
    echo "Select an option:"
    echo "1. Hindi Vocabulary (Opposites)"
    echo "2. English Vocabulary (Opposites)"
    echo "3. Pots Names (English to Hindi)"
    echo "4. Flowers (English to Hindi)"
    echo "5. Parts of the Body (English to Hindi)"
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
        echo "Exiting the program. Goodbye!"
        break
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
    esac
done
        
