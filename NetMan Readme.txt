Jamesosoft NetMan
---------------------------------------
Developed and Programmed by James Ricketts
Dec 2002
---------------------------------------

******NB. You Must compile the DIJpg.dll or download the compiled version from "www.disoft.com" and put it into the windows\system32 folder on your computer in order for the screen capturing to function.****

---------------------------------------

This software is split into 2 parts. The Client and the Server. The Client runs on all the machines in a network, and communicate with the server which runs on the Network Administrators machine. This program is meant for for use as a Network Administration Tool. It is not intended for use as an invasion of privacy on the administrators behalf. It allows the Network Administrator to have Full control over the client machines. 

The Client is INVISIBLE and is hidden from the Ctrl/Alt/Del menu. However in Windows 2000 and Windows XP it can be seen in the Processes list under the name of the client executable. The Client should be run at the startup of all the client machines. The easiest way to do this is put it inside the Startup folder of windows although this is very simple for a user with limited computer knowledge to remove and hence disable it. I find the best way is putting it into the registry under: 

"HKLM\Software\Microsoft\Windows\CurrentVersion\Run" and create a string value containing the path of the client executable.

The Network administrator can perform the following actions on the client machine:

**Screen Capture**  -  Allows the Administrator to view the screen of the client computer
	
**Send Mouse/Keyboard commands**  -  On the screenshot the Administrator can click, doubleclick, drag/drop, and type commands which will be sent and performed directly on the client machine.
	
**Send a Message**  -  The Administrator can send a message to the client machine which will display on the client machine for a short period of time.
	
**Freeze/Unfreeze**  -  This Completely disables the client machine and displays a Black screen informing the user that their comtrol of the machine has been disabled. This prevents the user from using even the Ctrl/Alt/Del keys in ALL windows Versions.
	
**Shutdown/LogOff**  -  Forces the client machine to be shutdown / logged off. This is useful if the Network Administrator is away from the machine but wishes to shut it down without having to get to the machine

**Show/Hide/End the Client**  -  Self Explanatory.


----------
Client:
----------
	The Client requires an external Dll File to allow it to convert a captured Bitmap image into a Compressed JPEG file which is significantly smaller and therefore much quicker to transport across a network. This DLL is called DIJpg.dll and is developed by DISOFT (www.disoft.com/about.htm). The source code for this DLL is included in this package and can be downloaded from the internet site above along with the complied DLL file. The DLL needs to be installed into the "\Windows\System32" directory for the client to work. I was relectant to use this external DLL file but finding code that will sit inside a VB project and perform the same function is very difficult!

	When the client is first run it asks for an IP address/Computer name to connect to. In this input box input the Ip address or Computer name of the computer running the Server program, (It does NOT have to be running the server at the time of starting up the client.) If you wish to change the IP address/Name of the computer running the server then there are a couple of methods to doing so:
	
1. Delete the file "Connection.dat" which is Created by the client when it first runs and accompanys the Client executable in the same path. This will cause the Client next time it is started to request an Ip/Name as it did the first time it started.

2. Run the Client and Server and once the 2 are connected, Send the command SHOWCLIENT. This will bring up the Client program on the machine running the Client. Goto that machine, and press Disconnect on the Client Form. Then change the IP/Name of the server it should connect to and press Connect. This will automatically update the "Connection.dat" file. 

3. Open the Connection.dat file in notepad and you will see the following text written into the file:
"Server IP/Name: 10.1.10.100" (or similar). Change the IP address or Name to whatever the IP/Name of the computer running the server is and SAVE the file. Then restart the client.

----------
Server:
----------
	The Server only requires the VB runtime files and the Microsoft Windows Common Controls VB6.0 (sp4) which should be installed if you have VB6 on your computer. Using the server is very self explanatory and all you need to know is:

The default AUTHORISATION PASSWORD which is "BOB". 

All user information is stored in a file that accompanys the server "Login.dat". It would be safer if you set the destination path for this file somewhere in the windows directory so it is harder for someone to locate if they were trying to get into the program unauthorised. However I have created a measure against this eventuality. All usernames and passwords and extra info related to each users settings in the program are stored inside this file ENCRYPTED. So it would be difficult for someone to find out your password. However when there are no usernames stored the program will prompt you upon logging in to Create a new user. It will also ask for the AUTHORISATION PASSWORD. This stops a "hacker" from simply deleting the Login.dat file and creating a new user as he would have to know the authorisation password. The PATH for the Login.dat file can be changed in the LOAD procedure of the Password screen, and the Authorisation Password can be simply altered by changing the constant in the mod_login.bas module of the source code.	

The server Looks best when Accompanied by a SERVER.EXE.MANIFEST file which is simply a file that changes the look of the Server.exe File to that of a Windows XP program.(Hence the Program will only look like this if you are running it on WindowsXP, on other versions it will simply look normal).
---------------------------------------
---------------------------------------

There are LOTS of different things you will find out by using the program that I have not mentioned that make it more interesting and Functional. For instance:

The Freeze screen can be deactivated on the client machine BY THE USER of the client machine by simply typing the following keyboard sequence: "BOB" (what a surprise I used that code again!).This is a "secret exit" which the adminsitrator can use if he froze a machine and wants to enable it by being at it without sending the command: Unfreeze to the client.

The little box which appears on the client machine when it is captured which notifies the User he/she is under observation can be moved by drag/dropping it, OR if they RIGHT CLICK on it they can send a Message to the Administrator.

Say you froze a machine and left for a while and forgot which machine it was you froze and need to unfreeze it, then just click on all the users and look at the LAST COMMAND SENT label at the bottom right of the server form.

There are 2 SERVER INTERFACES (Original/Traditional). The traditional is the interface I started off using but got bored of. However I have kept it as it is probably easier to use than the Modern Interface when you have LOTS of computers connected. 

You can change the length of time that you wait until you update the Client machines screenshot when you press "autorefresh" in the menu of the Screenshots form, aswell as arrange the windows.

And I'm sure there are other functionalities that I can not readily reacall aswell!

---------------------------------------
---------------------------------------

Thanks for your time and I hope that you like the program and make good use of it.
Please send any suggestions to "Jimarick@hotmail.com"

James Ricketts