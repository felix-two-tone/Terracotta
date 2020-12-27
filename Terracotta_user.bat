:: ______    ___  ____   ____    ____    __   ___   ______  ______   ____ 
::|      |  /  _]|    \ |    \  /    |  /  ] /   \ |      ||      | /    |
::|      | /  [_ |  D  )|  D  )|  o  | /  / |     ||      ||      ||  o  |
::|_|  |_||    _]|    / |    / |     |/  /  |  O  ||_|  |_||_|  |_||     |
::  |  |  |   [_ |    \ |    \ |  _  /   \_ |     |  |  |    |  |  |  _  |
::  |  |  |     ||  .  \|  .  \|  |  \     ||     |  |  |    |  |  |  |  |
::  |__|  |_____||__|\_||__|\_||__|__|\____| \___/   |__|    |__|  |__|__|
::
::Automate Radegast Login en Mass
::
::
::"When the enemy is relaxed, make them toil. When full, starve them. When settled, make them move."
::        												― Sun Tzu, The Art of War
::
::With this template you can open as many radagast instance as you want with accounts in a single executable
::
::
::just configure how you like and run
::
::
::Simply replace <USER> with the user name of your bot (i.e. first.last or username) and the <PASSWORD> with your ::passwords. 
::
::
::You can add as many lines as you like as well and even add more options such as locations as well.

set /p exit=Load how many users?:
:loadid
if %exit%==0 (exit)
set /a "exit=%exit%-1"
set /p user=What user?:
set /p pass=What password?:

:loaduser
Start ""  "C:\Program Files (x86)\Radegast\Radegast.exe" -u %user% -a -p %pass%
goto :loadid


::OPTION	FLAG	      DESCRIPTION OF OPTION
::--username	-u	      Username, use quotes to supply "Firstname Lastname"
::--autologin	-a	      Automatically login with provided user credentials
::--grid	    -g	      Grid ID to connect to, try --list-grids to see IDs used for this parameter
::--help		          Display these options
::--list-grids		      List grid IDs consumed by --grid option
::--location	-l	      Login location: home, last, or region name. Region name can also be in format regionname/x/y/x
::--loginuri		      Use this URI to login (cannot be used with --grid)
::--no-sound		      Disable sound
::--password	-p	      Account password
::--version		          Display version information
