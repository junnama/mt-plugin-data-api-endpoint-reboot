package DataAPIReboot::Endpoint;
use strict;
use warnings;

sub _reboot {
    my ( $app, $endpoint ) = @_;
    if ( $app->do_reboot ) {
        my $res = { reboot => 1 };
        return $res;
    } else {
        return $app->error( 500 );
    }
}

1;