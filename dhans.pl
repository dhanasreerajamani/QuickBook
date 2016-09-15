#!/usr/bin/perl
use Tk;

use strict;

use warnings;

use Tk::Photo;

use DBI;

my $main = MainWindow->new();

$main -> geometry ("600x600");



$main -> title("WELCOME");



my $label = $main -> Label(-text=>"\nOnline Bus Ticket Reservation System",-font=>"Verdana 18 bold",-background => 'yellow') -> pack;

my $driver = "mysql";

my $database = "ticket";

my $dsn = "DBI:$driver:database=$database";

my $userid = "root";

my $password = "dhans123";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;


my $name= $main -> Label(-text=>"Name")->pack();
my $na=$main ->Entry() ->pack();
my $age= $main -> Label(-text=>"AGE")->pack();
my $ge=$main ->Entry() ->pack();
my $gender= $main -> Label(-text=>"Gender")->pack();
my $ga=$main ->Entry() ->pack();

my $button4 = $main->Button( -text       => "Make payment",
            -font       => 'Courier 12 bold',
          

   -background => 'Green',
 
   -command =>sub{

	my $userName=$na->get();
	my $age=$ge->get();
	my $gen=$ga->get();
	print $userName;
	print $age;
	print $gen;
	my $sth = $dbh ->prepare("INSERT INTO User (name, age,gender)

                values(?,?,?) ");
$sth ->execute($userName,$age,$gen )

        or die  $DBI::errstr;

$sth->finish();
}
)->pack();


MainLoop;

