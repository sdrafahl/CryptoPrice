use LWP::UserAgent();
use JSON::XS;

package CryptoConnection;

sub new {
    my $class = shift;

    my $ua = LWP::UserAgent->new;
    $ua->timeout(10);
    $ua->env_proxy;

    my $self = {
        _coinName => "https://api.coinmarketcap.com/v1/ticker/" . shift . "/",
        _ua => $ua,
    };
    bless $self, $class;
    return $self;
}

sub getPrice {
    my ($self) = @_;
    $data = $self->{_ua}->get($self->{_coinName});
    return JSON::XS::decode_json($data->decoded_content)->[0]->{"price_usd"};
}

1;
