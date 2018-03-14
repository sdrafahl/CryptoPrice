#!/usr/bin/perl -w

use CryptoConnection "/CryptoConnection.pm";

use POSIX qw/strftime/;

sub say {print @_, "\n"}

$neblioConnection = new CryptoConnection("Neblio");

my $valueSincePriceChange = $neblioConnection->getPrice();

say strftime('%Y-%m-%d %R',localtime) . " Price USD: " . $valueSincePriceChange;

while (1) {
    my $currentValue = $neblioConnection->getPrice();

    if($valueSincePriceChange != $currentValue) {
        say strftime('%Y-%m-%d %R',localtime) . " Price USD: " . $currentValue;
        $valueSincePriceChange = $currentValue;
    }
    sleep(5);
}
