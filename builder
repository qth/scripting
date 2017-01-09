#!/bin/ksh

bail() {
    print "$1: bailing out\n"
    exit 1
}

usage() {
    print "$0: requires certificate file with name format: user@domain.pem"
    exit 1
}

[ -z $1 ] && usage

BASECN=${1%%.pem}
BASENAME=${1%%@*.pem}
mkdir $BASENAME || bail "couldn't make tmp dir"

#cp $1 ./$BASENAME/${1%%.pem}
cp $1 ./$BASENAME/$BASECN
cd $BASENAME || bail "couldn't switch to ${BASENAME}"
#splitpem.pl ${1%%.pem} && rm ${1%%.pem}
openssl x509 -in ${BASECN} -out ${BASECN}.pem
openssl rsa -aes256 -in ${BASECN} -out ${BASECN}.key && rm ${BASECN}
sed "s|user@example.com|${BASECN}|" ../client.conf >> ./client.conf
cp client.conf client.ovpn
cp ../cacert.pem ./
cd ..
zip -9r ./$BASENAME.zip ./$BASENAME && rm -rf ./$BASENAME
