#!/usr/bin/perl

use Tk;
use strict;
use warnings;
use Tk::Photo;

my $main = MainWindow->new();
$main -> geometry ("600x600");

$main -> title("WELCOME");

my $label = $main -> Label(-text=>"\nOnline Bus Ticket Reservation System",-font=>"Verdana 18 bold",-background => 'yellow') -> pack;


$label = $main -> Label(-text=>"\n") -> pack;



$label = $main -> Label(-text=>"\n") -> pack;


$label = $main -> Label(-text=>"Username:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_name = $main -> Entry() -> pack;


$label = $main -> Label(-text=>"\n") -> pack;


$label = $main -> Label(-text=>"Password:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_pass = $main -> Entry(-show => '*') -> pack;

$label = $main -> Label(-text=>"\n") -> pack;



my $button1 = $main->Button( -text       => "Sign In",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_1button
  
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);


$label = $main -> Label(-text=>"\n") -> pack;



my $button2 = $main->Button( -text       => "Register",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_2button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);

MainLoop;

sub push_1button 
{

$ent_name = $ent_name->get();

$ent_pass = $ent_pass->get();



 if (( $ent_name eq "dhanasree" ) && ($ent_pass eq "dhan12"))
                     {
	
                      $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("1200x1200");
          $label = $main -> Label(-text=>"\n") -> pack;

 
         my $label = $main->Label( -text  => "Welcome!Select an option",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );

                $label->focus();
          $label = $main -> Label(-text=>"\n") -> pack;


	  my $button1 = $main->Button( -text => "     book ticket    ",
      
	          -font => 'Courier 14 bold',
    
	            -background => 'Green',
        
	        -command =>\&push_1but
	
)->pack(        -side =>'top',
            
		    -ipadx => 40

	);
          $label = $main -> Label(-text=>"\n") -> pack;


	  my $button2 = $main->Button( -text => "     view booked tickets    ",
      
	          -font => 'Courier 14 bold',
    
	            -background => 'Green',
        
	        -command =>\&push_2but
	
)->pack(        -side =>'top',
            
		    -ipadx => 40

	);
          $label = $main -> Label(-text=>"\n") -> pack;


	  my $button3 = $main->Button( -text => "     view my profile    ",
      
	          -font => 'Courier 14 bold',
    
	            -background => 'Green',
        
	        -command =>\&push_3but
	
)->pack(        -side =>'top',
            
		    -ipadx => 40

	);
          $label = $main -> Label(-text=>"\n") -> pack;


	  my $button4 = $main->Button( -text => "     cancel a ticket    ",
      
	          -font => 'Courier 14 bold',
    
	            -background => 'Green',
        
	        -command =>\&push_4but
	
)->pack(        -side =>'top',
            
		    -ipadx => 40

	);
}
	else
              
	  {
	  
		$main->messageBox(-message=> "Invalid Username/Password.....");

      
          }

}


MainLoop;

sub push_1but{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "book your ticket here",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"Passenger Details:",-font=>"Verdana 16 bold", -background => 'pink') -> pack;


$label = $main -> Label(-text=>"\nName:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_name2 = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"age:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_age = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"gender:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_gen = $main -> Entry() -> pack;
 
my $button4 = $main->Button( -text       => "Make payment",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_4button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);


#my @user=("$ent_name2","$ent_age","$ent_gen");
#push( @user,$ent_name2);
#push( @user,$ent_age);
#push( @user,$ent_gen);
#open(DATA,"+>nivi1.txt")or die "Couldn'topen file,$!";
#print DATA @user;
#close(DATA);
#exit;

}
MainLoop;

sub push_4button{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "Make payment",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"Bank account Details:",-font=>"Verdana 16 bold", -background => 'pink') -> pack;


$label = $main -> Label(-text=>"card type:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_card = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"card number:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_cnum = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"account number:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_anum = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"pin number:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_pnum = $main -> Entry() -> pack;

 #my @acc=("$ent_card","$ent_cnum","$ent_anum","$ent_pnum");
#push( @user,$ent_name2);
#push( @user,$ent_age);
#push( @user,$ent_gen);
#open(DATA,"+>acc.txt")or die "Couldn'topen file, $!";
#print DATA @acc;
#close(DATA);
#exit;
           
my $button5 = $main->Button( -text       => "done",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_5button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);    
}
MainLoop;

sub push_5button{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "Ticket booked",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"Your ticket has been booked successfully :",-font=>"Verdana 16 bold", -background => 'pink') -> pack;


my $button6 = $main->Button( -text       => "exit",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_6button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);    
}
MainLoop;

sub push_2button{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "Register with our Website",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"\n") -> pack;



$label = $main -> Label(-text=>"\nName:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_name1 = $main -> Entry() -> pack;


$label = $main -> Label(-text=>"Date of birth:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_dob = $main -> Entry() -> pack;


$label = $main -> Label(-text=>"Gender:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_gen = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"city:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_city = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"email ID:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_id = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"user name:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;

my $ent_name = $main -> Entry() -> pack;

$label = $main -> Label(-text=>"password:",-font=>"Verdana 14 bold", -background => 'violet') -> pack;
my $ent_pass = $main -> Entry(-show => '*') -> pack;


$label = $main -> Label(-text=>"\n") -> pack;


my $button3 = $main->Button( -text       => "Submit",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_3button
  
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);


my $button4 = $main->Button( -text       => "Reset",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_4button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);

$label = $main -> Label(-text=>"\n") -> pack;



}
MainLoop;

sub push_2but{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "booked tickets",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"Booked Tickets History:",-font=>"Verdana 16 bold", -background => 'pink') -> pack;

          
my $button7 = $main->Button( -text       => "ok",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_7button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);    
}
MainLoop;

sub push_3but{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "user profile",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"view your profile here:",-font=>"Verdana 16 bold", -background => 'pink') -> pack;

          
my $button8 = $main->Button( -text       => "ok",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_8button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);    
}
MainLoop;

sub push_4but{
 $main->withdraw();
       
                      $main = new MainWindow;

                      $main ->geometry("900x900");
                      $label = $main -> Label(-text=>"\n") -> pack;

 
                     my $label = $main->Label( -text  => "cancel ticket",

                        -width      => 55,
                        
			-font       => 'Adobe_Caslon_Pro_Bold 20 bold',
	
                -background => 'Blue',

                        -relief     =>'groove',
     
           )->pack( -ipadx => 35 );


$label = $main -> Label(-text=>"select the ticket u want to cancel:",-font=>"Verdana 16 bold", -background => 'pink') -> pack;

          
my $button9 = $main->Button( -text       => "cancel",
            -font       => 'Courier 12 bold',
          
   -background => 'Green',
 
   -command    =>\&push_9button
 
  )->pack(   -side       => 'top',
    
         -ipadx      => 20

);    
}
MainLoop;

sub push_9button{
  
		$main->messageBox(-message=> "Your Ticket Has been Cancelled!");

 
}
MainLoop;