#!/usr/bin/perl -w

use CryptoConnection "/CryptoConnection.pm";

use POSIX qw/strftime/;

sub say {print @_, "\n"}

$neblioConnection = new CryptoConnection("Neblio");

while (1) {
    sleep(10);
    say strftime('%Y-%m-%d %R',localtime) . " Price USD: " . $neblioConnection->getPrice();
}
