
// Project: RockPaperScissors 
// Created: 2020-09-30
// Author: Michael Tang

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Rock Paper Scissors" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


// --- Code Starts here -- //
do	
	// Inputs //
	do
	   // Title //

		Print( "Welcome to Rock Paper Scissors" )
		Print( "Press '1' for Rock, '2' for Paper, and '3' for Scissors")
		if GetRawKeyPressed(49) = 1 // If '1' is pressed
			player = 1
			Print("You chose ROCK!")
			exit // breaks out of current loop
		else
			if GetRawKeyPressed(50) = 1 // If '2' is pressed
				player = 2
				Print("You chose PAPER!")
				exit
			else
				if GetRawKeyPressed(51) = 1 // If '3' is pressed
					player = 3
					Print("You chose SCISSORS!")
					exit
				endif
			endif
		endif
		//Print(player)		
		Sync()
	loop // For input
	// Processing
	// Computer choses
	computer = Random(1,3) // Chooses 1, 2, 3
	if computer = 1
		Print("Computer chooses ROCK")
	else
		if computer = 2
			Print("Computer chooses PAPER")
		else
			if computer = 3
				Print("Computer chooses SCISSORS")
			endif
		endif
	endif
	
	// Who wins?
	
	result = player - computer // calculation
	
	//Outputs
	 if result = 0 // tie 
		 Print("You tied!")
	 else 
		if result = -2
			Print("You won!")
		else
			if result = 1
				Print("You won!")
			else
				Print("You lose!")
			endif
		endif
	endif
	// Play again?
	Print("Want to play again? (y) for yes or (n) for no")
	Sync()
	do
		if GetRawKeyPressed(89) = 1 // 'y' is pressed
			Clearscreen() // erases the screen
			exit // starts loop all over again
		else
			if GetRawKeyPressed(78) = 1 // 'n' is pressed
				end // ends program
			endif
		endif	
	loop
loop
