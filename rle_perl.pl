#!/usr/bin/env perl

use 5.20.1;
use warnings;

sub main {

    my $word;

    say "Write something ";
    $word = <STDIN>;
    rle( $word );
}

sub rle {

    my $word = shift;
    if ( defined $word ) {
        my @array = split(//, $word) ;
        my $qtd = 0;
        my $prev_character = '';
        for my $character ( @array ) {
        if ( $prev_character eq $character ) {
            $qtd = $qtd + 1;
        }
        else {
                if ( $qtd > 1 ) {
                print $prev_character . $qtd;
            }
                elsif ( $qtd == 1 ) {
                    print $prev_character;
                }
            $prev_character = $character;
            $qtd = 1;
            }
        } 
        if ( $qtd > 1 ) {
            say $prev_character . $qtd;
        } 
        elsif ( $qtd == 1 ) {
            say $prev_character;
        }
    }

}

main();

exit();
