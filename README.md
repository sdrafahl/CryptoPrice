# CryptoPrice

This is a simple Perl script that will retrieve the price for a given crypto currency and return the price and then update you whenever the price changes.

## Getting Started

To get started you will first need to install Perl. After Perl is installed on a Unix machine make the main.pl executable.

```
chmod +x main.pl
```
Then execute

```
./main.pl <Coin Name>
```

You will need to enter a coin you would like to track. For example this command would work.

```
./main.pl Neblio
```

## JSON Example

`
[
    {
        "id": "neblio",
        "name": "Neblio",
        "symbol": "NEBL",
        "rank": "103",
        "price_usd": "12.2411",
        "price_btc": "0.00146371",
        "24h_volume_usd": "2247560.0",
        "market_cap_usd": "156524547.0",
        "available_supply": "12786804.0",
        "total_supply": "13532116.0",
        "max_supply": null,
        "percent_change_1h": "3.73",
        "percent_change_24h": "-12.2",
        "percent_change_7d": "-40.87",
        "last_updated": "1517786360"
    }
]
`
