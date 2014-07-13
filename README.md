PrivateKeyRecoverer
===================

These two tiny scripts can be used to dump a set of private keys from a wallet and then import them into a new wallet.

Useful to recover coins that have been spent on forked block chains.

Moving private keys to a new wallet can be done manually quite easily on small wallets. However on large pool wallets for example where there are hundreds or thousands of unique addresses in the wallet it would not be feasible to do manually.

Be aware importing large amounts of private keys into a new wallet can take a LONG time. (I had one set of private keys (dumped from a wallet on a forked block chain) that took over 24 hours to import into a new wallet!)

How to Use
==========

1 - Start coin daemon with old wallet.

2 - perl DumpPrivateKeys.pl

3 - Stop coin daemon.

4 - Backup and move old wallet.dat file.

5 - Start the coin daemon again (so that a new wallet.dat is generated)

6 - Run ImportPrivateKeys.pl

7 - Wait for the script to finish.

8 - Delete privkeys.txt
