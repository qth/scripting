skript
=========

This repository should hold scripts that are useful.  That being said, your mileage may vary.

## Functional Descriptions:
* audio-only
  > Extract audio from a video file
* backup-remote-host
  > Backup a remote host using SSH, dump, and gpg
* bestcompress
  > Use brute force to find the most effective compression method.  This utility is slow and uses quite a bit of disk space for even moderately large files, but it lets one squeeze the last few bytes out.
* bind-bad-zones
  > generate authoritative DNS zone entries for those zones you'd like to block
* builder
  > create zip file package with user certificate, CA certificate, and OpenVPN configuration.  Can be deployed to Linux NetworkManager, OS X Tunnelblick, OpenVPN official client, and Viscosity users.
* clk
  > Use this bash script to set the time of your Evil Mad Scientist Labs Alpha Clock Five to your computer's local time.  set $SERIAL to the appropriate device manually if you're not using an FTDI based USB to serial adapter, or, if you've got more than one FTDI USB to serial adapter connected to your machine.  Otherwise, it should automatically detect which /dev/ttyUSB? your clock is connected to.  Works on Fedora 28, probably on Ubuntu, CentOS, RHEL, and others.
* countdigraphs.pl
  > I used this to help with some cryptography homework at some point; the name is also the funcitonal description.
* flac-to-mp3
  > wrapper script to make mp3s from multiple flac files
* fogbugz-to-pdf
  > Need to print out multiple FogBugz tickets to PDF format?  I had to print a lot one year, did it manually, then said not next year.  :^)  You have to log in, save your cookies somewhere, and edit to the format specified in the help.  It's meant to be called from a simple loop from a shell.
* genpw
  > simple random password generator
* motion-process
  > reencodes output from the "motion" motion detection software to VP8 or VP9; needs work
* plainrsa.pl
  > I didn't write this, but absolutely don't want to lose it.  Converts RSA keys from the format used by Racoon to others.  You can use this to exchange RSA public keys between OpenBSD and Brocade vRouter / Vyatta, for example.
* prunr
  > You can use this script to keep only the most recent RPMs in your yum cache.
* spfresolve
  > This has been obsoleted, I think, by new releases from the best Canadian operating system.  However, you can still use it to gather information about a domain's SPF and TXT DNS records.
* splitpem.pl
  > meh
* vigy
  > Want a simple Vigenere crypto tool?  This is that.
* virt-bridge-tally
  > How many VMs are on each bridge IF?
* virt-disk-image-info-to-csv
  > gather information about your VMs disk images then output to CSV
* virt-ram-info-per-vm
  > gather information about how much RAM is allocated to each VM, then output to CSV
* xml-background-generator
  > Makes a background slideshow, works with Fedora Mate
  
