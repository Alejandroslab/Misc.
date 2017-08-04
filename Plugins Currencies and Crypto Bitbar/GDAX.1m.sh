#!/bin/bash
# <bitbar.title>Coinbase.com Bitcoin Prices</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Charles Lehnert</bitbar.author>
# <bitbar.author.github>CLL80</bitbar.author.github>
# <bitbar.desc>It displays the current Bitcoin spot price in the menu bar as per Coinbase.com and omits the decimals for a compact view. Buy and sell prices can be seen by clicking.</bitbar.desc>
# <bitbar.image>https://raw.github.com/CLL80/bitbar-bitcoin-coinbase-ticker/master/screen.png</bitbar.image>

bitcoin_icon='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'

spot_price=$(curl -s "https://api.coinbase.com/v2/prices/BTC-EUR/spot" -H "CB-VERSION: 2017-04-16" | egrep -o '{"data":{"amount":"[0-9]+(\.)?' | sed 's/{"data":{"amount"://'  | sed 's:^.\(.*\).$:\1:')

buy_price=$(curl -s "https://api.coinbase.com/v2/prices/BTC-EUR/buy" -H "CB-VERSION: 2017-04-16" | egrep -o '{"data":{"amount":"[0-9]+(\.)?' | sed 's/{"data":{"amount"://'  | sed 's:^.\(.*\).$:\1:')

sell_price=$(curl -s "https://api.coinbase.com/v2/prices/BTC-EUR/sell" -H "CB-VERSION: 2017-04-16" | egrep -o '{"data":{"amount":"[0-9]+(\.)?' | sed 's/{"data":{"amount"://'  | sed 's:^.\(.*\).$:\1:')

bitfinex=$(curl -s "https://api.bitfinex.com/v2/tickers?symbols=tBTCUSD")

btckraken=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=BTCEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)


btcgemini=$(curl -s "https://api.gemini.com/v1/pubticker/btcusd" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)

btcbitstamp=$(curl -s "https://www.bitstamp.net/api/v2/ticker/btcusd/" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)



echo "$spot_price | templateImage=$bitcoin_icon"
echo "---"
echo "Coinbase | size=13"
echo "Spot price:  €$spot_price"
echo "Buy price:    €$buy_price"
echo "Sell price:    €$sell_price"
echo "Spread: €(($buy_price-$sell_price))"
echo "---"
echo "$(printf "Kraken € %.2f \n" "$btckraken") | size=13"
echo "---"
echo "USD"
echo "Bitfinex: €$bitfinex"
echo "$(printf "Gemini $ %.2f \n" "$btcgemini") | size=13"
echo "$(printf "Bistamp $ %.2f \n" "$btcbitstamp") | size=13"



# to make a submenu use :echo "--------"

