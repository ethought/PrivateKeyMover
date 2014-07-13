#!/usr/bin/perl

print "Enter the client dameon executable (eg. megacoind if in /usr/bin/ or full path e.g. /home/me/coins/megacoin/src/megacoind):";
chomp(my $client = <>);

open FILE, "privkeys.txt" or die $!;

while(<FILE>){
	chomp(my $key = $_);
	system `$client importprivkey $key ""`;
	print "$key imported\n";
}
print "Finished importing private keys.\n";
