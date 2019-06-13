use strict;
use warnings;

use Data::Dumper;

my $bars = "-"x30;

my $replay = 'TRUE';

print "\n$bars\n";

print "\nWhat is your name?\n\n>";
my $name = <STDIN>;
chomp $name;

while ($replay eq 'TRUE') {
    print "\n$bars\n";
    print "I understand you like unicorns...I can draw one for you!\n\n";
    print "\nIs that true?(Type yes or no)\n>";
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

    $replay = replayPrompt();
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

sub replayPrompt {
    print "Do you want to run this again?\n>";
    my $runAgain = <STDIN>;
    chomp $runAgain;

    if ($runAgain eq "yes" or
        $runAgain eq "YES" or
        $runAgain eq "Y" or
        $runAgain eq "y") {
        $runAgain = 'TRUE';
    } else {
        $runAgain = 'FALSE';
    }
    return $runAgain
}

sub exitProgram {
    print "\n\nNot bad huh?";
    print "\n\nGotta go....BYE!\n\n\n\n\n";

    exit 0;
}