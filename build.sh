#!/bin/sh
WORKDIR="$PWD"
SOURCE=${SOURCE:-"https://github.com/coredns/coredns.git"}
BUILDDIR=${BUILDDIR:-"build"}
SYSTEM=${SYSTEM:-""}
OUTFILE=${OUTFILE:-"coredns"}
WINDOWS=${WINDOWS:-"0"}

if [ $WINDOWS = "1" ]; then
	SYSTEM="GOOS=windows GOARCH=amd64"
	OUTFILE="coredns.exe"
fi

if [ -d $BUILDDIR ]; then
	rm -rf $BUILDDIR || exit 2
fi

echo "getting the CoreDNS source..."
git clone -b v1.8.6 --depth 1 $SOURCE $BUILDDIR
if [ ! -d $BUILDDIR ]; then
	echo "error: can't get the source code"
	exit 2
fi

echo "building PopuraDNS..."
cd $BUILDDIR
cp $WORKDIR/plugin.cfg .
go get github.com/zhoreeq/coredns-meshname
go get github.com/zhoreeq/coredns-meship
go mod download

echo "building..."
make SYSTEM="$SYSTEM" BINARY=$WORKDIR/$OUTFILE

echo "success! your binary is ready, senpai"
echo "$WORKDIR/$OUTFILE"
