use strict;
use warnings;

use Data::Dumper;

my $bars = "-"x30;

my $replay = 'TRUE';

print "\n$bars\n";

print "\nWhat is your name?\n\n>";
my $name = <STDIN>;
chomp $name;
print "\n$bars\n";

while ($replay eq 'TRUE') {
    my $menuSelection = menuPrompt($name);

    if ($menuSelection eq undef or $menuSelection < 1 or $menuSelection >5){
        printDragon();
    } else {
        printUnicorn()  if $menuSelection == 1;
        printHorse()    if $menuSelection == 2;
        printFairy()    if $menuSelection == 3;
        printPrincess() if $menuSelection == 4;
        printPeacock()  if $menuSelection == 5;
    }

    $replay = replayPrompt();
}

exitProgram();

#----------------------------
# subroutines
#----------------------------
sub menuPrompt {
    my $name = shift;

    print "
           Welcome $name!!

           ______________________________
         /                               \
        |   |      YE OLDE MENU          |
         __ |                            |
            |                            |
            | Please maketh thine choice!|
            |                            |
            | 1:  Draw Unicorn           |
            | 2:  Draw Horse             |
            | 3:  Draw Fairy             |
            | 4:  Draw Princess          |
            | 5:  Draw Peacock           |
            |                            |
            |   _________________________|___
            |  /                            /
            \_/____________________________/
    >";
    my $choice = <STDIN>;
    chomp $choice;
    return $choice;
}

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

sub printHorse {
    print qq" 
                                     |\    /|
                                  ___| \,,/_/
                               ---__/ \/    \
                              __--/     (D)  \
                              _ -/    (_      \
                             // /       \_ /  -\
       __-------_____--___--/           / \_ O o)
      /                                 /   \__/
     /                                 /
    ||          )                   \_/\
    ||         /              _      /  |
    | |      /--______      ___\    /\  :
    | /   __-  - _/   ------    |  |   \ \
     |   -  -   /                | |     \ )
     |  |   -  |                 | )     | |
      | |    | |                 | |    | |
      | |    < |                 | |   |_/
      < |    /__\                <  \
      /__\                       /___\

    ";
}

sub printPrincess {
    print qq|
                         __
                        /__`.
                       / \ `\\
                      /   \  `\
                     /     \   \
                    /_______\  /\
                    (((( ))))
                   (((' . ')))
                   (((\_-_/)))
                   (((_) (_)))
                  /((( \ / )))\
                 / (((  ^  ))) \
                / / ((  ^  )) \ \
               ( (   \  ^  /   ) )
                \ \   )www(   / /
                 `\\ /     \ //'
                   /'       `\
                  /           \
                 /             \
                /               \
               /                 \
              /                   \
             /                     \
            /                       \
           /                         \
          /                           \
         I                             I
          `-----......_____......-----'

    |;
}

sub printPeacock {
    print qq[
                    _   _
                 __/o'V'o\__
              __/o \  :  / o\__
             /o `.  \ : /  .' o\
            _\    '. /"\ .'    /_
           /o `-._  '\v/'  _.-` o\
           \_     `-./ \.-`     _/
          /o ``---._/   \_.---'' o\
          \_________\   /_________/
                    '\_/'
                    _|_|_
     ];
}

sub printDragon {
    print qq{


        !!!BAD CHOICE!  HERE COMES THE DRAGON!!!
    


           (  )   /\   _                 (     
            \ |  (  \ ( \.(               )                      _____
          \  \ \  `  `   ) \             (  ___                 / _   \
         (_`    \+   . x  ( .\            \/   \____-----------/ (o)   \_
        - .-               \+  ;          (  O                           \____
                                  )        \_____________  `              \  /
        (__                +- .( -'.- <. - _  VVVVVVV VV V\                 \/
        (_____            ._._: <_ - <- _  (--  _AAAAAAA__A_/                  |
          .    /./.+-  . .- /  +--  - .     \______________//_              \_______
          (__ ' /x  / x _/ (                                  \___'          \     /
         , x / ( '  . / .  /                                      |           \   /
            /  /  _/ /    +                                      /              \/
           '  (__/                                             /                  \
    };
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