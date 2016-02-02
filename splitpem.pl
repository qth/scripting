#!/usr/bin/perl

#use strict;
use warnings;

sub usage {
    $0 =~ /([^\/]+)$/;
    my $name = $&;
    print "$name [certfile]
    break off the key from certfile
    write certfile.pem, write certfile.key
    defaults to STDIN and STDOUT\n";
    exit 1;
}

if ( !defined $ARGV[0] ) {
    usage;
}

open (STDI, "$ARGV[0]") or die "Can't open your lame input file: $!";
open (PEMFILE, ">$ARGV[0].pem") or die "Can't open $ARGV[0].pem for output: $!";
open (KEYFILE, ">$ARGV[0].key") or die "Can't open $ARGV[0].pem for output: $!";

my $section=0;

while (<STDI>) {
    if ( $_ =~ m/^-----BEGIN.*PRIVATE KEY-----$/ ) {
	$section=1;
    }
    chomp $_;
#    next if $_ =~ /^\s*$/;
    if ($section == 0) {
	print PEMFILE "$_\n";
    }
    else {
	print KEYFILE "$_\n";
    }
    
}

close PEMFILE;
close KEYFILE;
close STDI;
