#!/usr/bin/perl -w

use CryptoConnection "/CryptoConnection.pm";

sub say {print @_, "\n"}

$neblioConnection = new CryptoConnection("Neblio");

say "Price USD: " . $neblioConnection->getPrice();
