range=$(( ( RANDOM % 7 ) + 1 ))
talk=("FUS RO DAH!" "YOL TOOR SHUL" "WULD NA KEST" "LOK VAH KOOR" "MUL QAH DIIV" "FO KRAH DIIN" "STRUN BAH QO" "ZUL MEY GUT")

cowsay -f dragon "${talk[$range]}"

