# Tournament Results Python

#### unzip File Folder

- tournament.sql (set up you data schema)

- tournament. py (used to provide access to your database via a library of
functions which can add, delete or query data in your database to
another python program ;a client program)

- tournament_test (run test your implementation of functions in
tournament. py)

#### Set up

## install  virtualbox 

https://www.virtualbox.org/wiki/Downloads

## install vagrant

https://www.vagrantup.com/downloads

# Clone respiratory 
 fork the fullstack-nanodegree-vm repository so that you have a version of your own within your Github account.
 
Next clone your fullstack-nanodegree-vm repo to your local machine.

Now, let’s explore the starter code for this project provided within the VM: cd into /vagrant/tournament where you will see there all files you have to work with on this project:

- tournament.sql
- tournament.py
- tournament_test.py
- Vagrant file
- pg_config.sh

# Start Vagrant Box
$ vagrant up
$ vagrant ssh

# Enter Tournament 
$cd/ vagrant
$cd/ tournament

# Connect to database 
$psql
tournament => \i tournament.sql
tournament => \q

# Run Unit test

$pytthon tournament_test.py

#Results

1. Old matches can be deleted.
2. Player records can be deleted.
1. countPlayers() returns 0 after initial deletePlayers() execution.
3. countPlayers() returns 1 after one player is registered.
3. countPlayers() returns 2 after two players are registered.
4. countPlayers() returns zero after registered players are deleted.
5. Player records successfully deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After match deletion, player standings are properly reset.
9. Matches are properly deleted.
10. After one match, players with one win are properly paired.
Success!  All tests pass!


As result each match has a winner, loser, or draw outcome  in a Swiss style bracket tournament.





