#!/usr/bin/env perl

use 5.20.1;
use warnings;

sub main {

    my $number;

    say "Write fizzbuzz limit ";
    chomp($number = <STDIN>);
    fizzbuzz($number);
    fizzbuzz_exclusive($number);
}

sub fizzbuzz_exclusive {
   my $limit = shift;
   say "\n####fizzbuzz_exclusive####";
   foreach my $n (1..$limit) {
        ($n % 3 == 0) ? say "fizz" : (($n % 5 == 0) ? say 'buzz' : say $n);
   }
}

sub fizzbuzz {
   say "\n####fizzbuzz####";
   my $limit = shift;

   foreach my $n (1..$limit) {
	 if ( $n % 15 == 0 ) { say "fizzbuzz"; }
         elsif ( $n % 3 == 0) { say "fizz";} 
	 elsif ( $n % 5 == 0) { say "buzz"; }
         else { say $n };  
   }

}


main();

exit();


