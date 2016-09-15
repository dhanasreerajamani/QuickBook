
#!/usr/local/bin/perl

use Tk;
use warnings;
use Tk::Photo;


my @marks_ui1;

my $main = new MainWindow;
$main -> geometry ("1500x1500");
$main->title("RAILWAY RESERVATION");



my $l1 = $main -> Label(-text=>"Username:") -> pack();
my $username = $main -> Entry() -> pack();
my $l2 = $main -> Label(-text=>"Password:") -> pack();
my $pwd = $main -> Entry(-show => '*') -> pack();
my $button1 = $main->Button( -text  => "SUBMIT",
             -command    =>\&push_button
  )->pack(   -side       => 'top',
             -ipadx      => 40
);


my $b2=$main->Button(
	-text=> "Not a member ?",
	-command=>\&newUser)
->pack();


sub push_button {
#check for null values
#	if ($username eq null && $pwd eq null)
#	{
#		print "Fields cannot be empty ";
#	}
#check for valid user

 $main->withdraw();
        my $main = new MainWindow;
        $main -> geometry ("1000x1000");
	my $source = $main -> Label(-text=>"Source:") -> pack();
	my $username = $main -> Entry() -> pack();
	my $dest = $main -> Label(-text=>"Destination:") -> pack();
	my $pwd = $main -> Entry() -> pack();
	my $button1 = $main->Button( -text  => "Check Trains",
	-command =>\&checkTrain
  )->pack(   -side       => 'top',
             -ipadx      => 40

);


}

sub newUser {
	$main->withdraw();
	$main =new MainWindow;
	$main->geometry("1500x1500");
	my $l3=$main->Label(-text => "UserName")->pack();

	my $user1=$main->Entry()->pack;

	my $l4=$main->Label(-text => "Password")->pack();

	my $pass=$main->Entry()->pack;

	my $ok=$main->Button(
        	-text=> "OK",
	        -command=>\&writeFile  )->pack();
}

sub checkTrain {

	$main->withdraw();
        $main =new MainWindow;
        $main->geometry("1500x1500");
	my %wb;
	my $top = MainWindow->new(-title => 'Radiobutton');
	foreach my $label (qw/WestCoast CheranExpress Nilgiri KovaiExpress ChennaiExpress/) {
    	my $lower = lc $label;
    	$wb{$lower} = $top->Radiobutton(
        	-text        => $label,
	        -relief      => 'flat',
        	-value       => $lower,
	        -indicatoron => 0,
        	-width       => 20,
	        -background  => 'Red',
        	-command     => [\&cb_rbutton, $lower],
	    )->pack;
}
}
Tk::MainLoop();

sub cb_rbutton {
    my $rb = shift;
    print ucfirst($rb), " is on\n";
    return;
}

#	my $rdb_t1=$main->Radiobutton(-text=>"West Coast",
#			-value=>"West Coast");
#	my $rdb_t2=$main->Radiobutton(-text=>"Cheran Express",
 #                       -value=>"Cheran Express");
#	my $rdb_t3=$main->Radiobutton(-text=>"Niligiri (Blue Mountain Express)",
 #                       -value=>"Nilgiri (Blue Mountain Express)");
#	my $rdb_t4=$main->Radiobutton(-text=>"Kovai Express",
 #                       -value=>"Kovai Express");
#	my $rdb_t5=$main->Radiobutton(-text=>"Chennai Express",
 #                       -value=>"Chennai Express");

sub checkSeats {

	$main->withdraw();
        $main =new MainWindow;
        $main->geometry("1500x1500");
	my $check=$main->Button (
		-text=> "BookNow",
		-command=>\&book)->pack();

}

sub book {
	$main->withdraw();
        $main =new MainWindow;
        $main->geometry("1500x1500");
        my $check=$main->Button (
                -text=> "MakePayment",
		-command=>\&pay)->pack();
	
}

sub pay {
	exit;	
}

sub writeFile {
#print "Put it into files";
#	$uname=$user1->get();
#	open(DATA,"+>>users.txt") or die "Couldn't open file file.txt, $!";
#       	print DATA $uname;
#      close(DATA);
}

MainLoop;


