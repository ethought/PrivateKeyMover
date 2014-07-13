#!/usr/bin/perl

print "Enter the client dameon executable (eg. megacoind if in /usr/bin/ or full path e.g. /home/me/coins/megacoin/src/megacoind): ";
chomp(my $client = <>);

my @addresses = `$client listaddressgroupings`;
chomp(@addresses);

open FILE, ">", "privkeys.txt" or die $!;

foreach my $line (@addresses){
	($content) = $line =~ m/\"(.*?)\"/;
	print "$content\n";
	if($content ne ""){
		$privkey = `$client dumpprivkey $content`;
		if($privkey =~ m/error/){
			print "Not a private key, skipping...\n";
		} else {
			print $privkey."\n";
			print FILE $privkey;
		}
	}
}
