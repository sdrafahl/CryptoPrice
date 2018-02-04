#!/usr/bin/perl -w

use LWP::Simple;

sub say {print @_, "\n"}

$data = get("https://api.coinmarketcap.com/v1/ticker/neblio/");

say $data;
