#!/usr/bin/perl -i.bak

$pfx = $ARGV[0];
$pfx = $1 if $pfx =~ m!([^/]+)\.md$!;

while (<>) {
    print,next unless /(IMG_\d+)\.(jpe?g)/i;
    ($img,$ext) = ($1,$2);
    
    # get caption line?
    if (($line = <>) =~ /^\| ([^|]+) \|/) {
        ($cap = $1) =~ s/'/&raquo;/g;
        print "<figure><img src='/assets/img/$pfx/${img}.jpeg' alt='$cap'/><figcaption>$1</figcaption></figure>\n";
    } else {
        print "<figure><img src='/assets/img/$pfx/${img}.jpeg' alt=''></figure>\n";
        print $line;
    }
    
};
