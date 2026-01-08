while true; do
cel=$(termux-battery-status  |jq ".level" )
token="6525813731:AAEJil50I34ryLumR5BoHjt5E-CaQe7uIuU"
curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" \
-F chat_id="5161080750" \
-F text="🔋bateria $cel%"

termux-tts-speak "sua bateria esta em $cel%"
sleep 30
done
