#!/usr/bin/perl -w

use LWP::UserAgent();
use JSON::XS;

my $ua = LWP::UserAgent->new;
$ua->timeout(10);
$ua->env_proxy;

sub say {print @_, "\n"}

$data = $ua->get("https://api.coinmarketcap.com/v1/ticker/neblio/");

my $parsed = JSON::XS::decode_json($data->decoded_content)->[0];
