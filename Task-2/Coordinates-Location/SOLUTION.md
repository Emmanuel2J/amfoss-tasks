Step 1: mkdir Coordiantes-Location and then I changed to it by using cd Coordinates-Location
Step 2: I made a directory called North mkdir North and then I found the answers to the questions and then I used echo command to put it in NDegree.txt file, echo ans GREATER THAN SYMBOL NDegree.txt
STEP 2(Part 2): I did the exact same for this one minus the file names and the answers. And also for getting the degree symbol I pressed ctrl+shift+U and then 00b0 and pressed Enter
STEP 2(PArt 3) : I again did the same thing by using echo command to write the answer into the file NSeconds.txt(echo 'ans' > NSeconds.txt)
Step 2(Part 4) : I used cat command to combine the previous txt files into one file called NorthCoordinate.txt(cat N* > NorthCoordinate.txt)
Step 2(Part 5): Then I used cd command to go back to Coordinates-Location dir (cd ..) then I used cp command to copy the files to this dir (cp North/NorthCoordinates.txt .)
Then I renamed the copied file by using the mv command(mv NorthCoordinates.txt North.txt) and then I used the rm command to remove the orginal NorthCoordinates.txt(rm North/NorthCoordinates.txt)
Step 3: I was already in the Coordinates-Location I didnt need to do anything
Step 4: Since step 4 is just step 2 with different file names I will just write the commands to do it here
mkdir East

cd East
echo 'ans' > EDegree.txt
echo 'ans' > EMinutes.txt
echo 'ans' > ESeconds.txt
cat E* EastCoordinate.txt
oops there was a > like this cat E* > EastCoordinate.txt
cd ..
cp East/EastCoordinate.txt .
mv EastCoordinate.txt East.txt
rm East/EastCoordinate.txt
Step 5: After that I combined the north and east txt by cat North.txt East.txt > Location-Coordinate.txt
STEP 8: First a login onto my account in the terminal by using config command (git config --global user.name Emmanuel2J and git config --global user.email Myemail@example.com) and to confirm I logged in I used cat .git/config
After that I created a dir called COMP167 using mkdir COMP167 and then I cloned my repo by using a http link and the command git clone the_url
Then I moved the Coordinates-Location folder to Task-2 Folder by using mw command (mv ../../../Desktop/Coordinates-Location .)
After that was done I used git add . command to stage my changes then to commit it I typed git commit -m "Add existing file"
And then finally I used git push orgin main command to put it in my repo
