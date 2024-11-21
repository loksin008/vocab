#!/bin/bash

# Vocabulary data

# Opposites
declare -a hindi_opposites=(
"अच्छा - बुरा" "बड़ा - छोटा" "खुश - दुखी" "सुंदर - कुरूप" "तेज़ - धीमा"
"शांत - शोर" "धन - गरीबी" "उज्ज्वल - अंधकार" "जीवन - मृत्यु" "सच - झूठ"
)
declare -a english_opposites=(
"Good - Bad" "Big - Small" "Happy - Sad" "Beautiful - Ugly" "Fast - Slow"
"Quiet - Noisy" "Rich - Poor" "Bright - Dark" "Life - Death" "True - False"
)

# Masculine to Feminine
declare -a masculine_feminine=(
"Boy - Girl" "King - Queen" "Lion - Lioness" "Actor - Actress" "Man - Woman"
"Father - Mother" "Brother - Sister" "Husband - Wife" "Son - Daughter" "Prince - Princess"
)

# Pots Names
declare -a pots_names=(
"कुल्हड़ - Kulhad" "घड़ा - Ghada" "मटका - Matka" "सुराही - Surahi" "हंडा - Handa"
)

# Flowers
declare -a flowers=(
"Rose - गुलाब" "Lotus - कमल" "Marigold - गेंदा" "Jasmine - चमेली" "Hibiscus - गुड़हल"
)

# Body Parts
declare -a body_parts=(
"Hand - हाथ" "Leg - पैर" "Head - सिर" "Eye - आँख" "Ear - कान"
"Nose - नाक" "Mouth - मुँह" "Fingers - उंगलियाँ" "Stomach - पेट" "Heart - हृदय"
)

# Days of the Week
declare -a days=(
"Sunday - रविवार" "Monday - सोमवार" "Tuesday - मंगलवार" "Wednesday - बुधवार" 
"Thursday - गुरुवार" "Friday - शुक्रवार" "Saturday - शनिवार"
)

# Months of the Year
declare -a months=(
"January - जनवरी" "February - फरवरी" "March - मार्च" "April - अप्रैल" 
"May - मई" "June - जून" "July - जुलाई" "August - अगस्त" 
"September - सितंबर" "October - अक्टूबर" "November - नवंबर" "December - दिसंबर"
)

# Colors
declare -a colors=(
"Red - लाल" "Blue - नीला" "Green - हरा" "Yellow - पीला" "White - सफेद"
"Black - काला" "Pink - गुलाबी" "Orange - नारंगी" "Purple - बैंगनी" "Brown - भूरा"
)

# Clothes
declare -a clothes=(
"Shirt - शर्ट" "Pants - पैंट" "T-shirt - टी-शर्ट" "Jeans - जींस" "Jacket - जैकेट"
"Sweater - स्वेटर" "Coat - कोट" "Dress - पोशाक" "Skirt - स्कर्ट" "Saree - साड़ी"
"Kurta - कुर्ता" "Pyjama - पायजामा" "Blouse - ब्लाउज" "Suit - सूट" "Tie - टाई"
"Scarf - दुपट्टा" "Cap - टोपी" "Hat - हैट" "Shoes - जूते" "Sandals - चप्पल"
"Slippers - स्लीपर" "Socks - मोजे" "Gloves - दस्ताने" "Belt - बेल्ट" "Shorts - हाफ पैंट"
"Vest - बनियान" "Overcoat - ओवरकोट" "Raincoat - रेनकोट" "Lehenga - लहंगा" "Sherwani - शेरवानी"
)

# Add rest of the arrays and menu functions...

# Run the script
show_main_menu
