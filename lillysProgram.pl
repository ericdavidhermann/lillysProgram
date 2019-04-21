use strict;
use warnings;

my $bars = "-"x30;
print "\n$bars\n";

print "\nWhat is your name?\n\n>";
my $name = <STDIN>;
chomp $name;

print "\n\nOh, hello there $name, I am Eric's computer.  Nice to meet you.\n\n";
print "\n$bars\n";
print "I understand you like unicorns...I can draw one for you!\n\n";
print "\nIs that true?(Type yes or no)\n";
my $yesNo = <STDIN>;
chomp $yesNo;

if ($yesNo eq "yes" or
    $yesNo eq "YES" or
    $yesNo eq "Y" or
    $yesNo eq "y") {
    printUnicorn();
} else {
    printFairy();
}

exitProgram();

#----------------------------
# subroutines
#----------------------------
sub printUnicorn {
    return print qq|
                            /
                       ,.. /
                     ,'   ';
          ,,.__    _,' /';  .
         :','  ~~~~    '. '~
        :' (   )         )::,
        '. '. .=----=..-~  .;'
         '  ;'  ::   ':.  '"
           (:   ':    ;)
            \\   '"  ./
             '"      '"
    |;

}

sub printFairy {
    print "\n\nHm, ok, here is a Fairy instead!!\n\n";
    print qq"
        .'.         .'.
        |  \       /  |
        '.  \  |  /  .'
          '. \\|// .'
            '-- --'
            .'/|\'.^
           '..'|'..'
    ";
}

sub exitProgram {
    print "\n\nNot bad huh?";
    print "\n\nGotta go....BYE!\n\n\n\n\n";

    exit 0;
}