# Git Demo

## Windows
First, create a bare local git repository on the PC

		$ git init --bare demo.git

This creates a `git` folder.  This is simulating our main git server.

Now we clone the server to get a working copy

		git clone demo.git pc-demo-clone

Now, create a readme file, and add it to the index:

		touch readme.txt
		git add readme.txt

Now, we need to commit our changes

		git commit -m "First commit." 

Now we need to push to our "server"

		git push origin master

The 'origin' specifies the remote we are pushing to.  It is called 'origin' because we cloned from this repository.  'Master represents the branch'

## Mac 
Now, the mac user will clone this repository using SCM Manager:

		git clone http://gituser:arturia123@192.168.1.136/scm/git/demo.git mac-demo-clone

Modify the readme on the mac:

		vim readme.txt

commit our changes

		git commit -m "Fixed Adrien's english"

Now lets push to our "server"

		git push origin master

Notice we don't need to specify the remote or the branch.

Now, let's add a new file.

		touch private-test.txt
		git add private-test.txt
		git commit -a -m"added a new file private-test.txt"

## Windows

Now, let's look at john's new file by looking directly at his repository.

List see what remotes we currently have:

		git remote

First, add john's repo as a remote

		git remote add jrmac http://gituser:arturia123@192.168.1.152:8080/scm/git/mac-demo-clone
		git remote

Now, pull from john's repo

		git pull jrmac master

Now, we want to push johns modification to the server (origin)

		git push origin master

## Mac

John will try to make changes and push to origin.  This will ask him to pull and merge first.

John pulls.

		git pull origin master

# Branching

## PC

Branches are local.

		git branch my-great-feature
		git branch
		git checkout my-great-feature


hes.
## Mac

Pulling from origin will not display Adrien's branch.

		git fetch origin
		

## PC

		git push origin my-great-feature

## MAC

		git pull origin my-great-feature:my-great-feature

It is the same than doing

		git fetch origin
		git checkout -b my-great-feature origin/my-great-feature

# Rebase and Merge

## Mac

[Not in presentation]

Let's merge  `my-great-feature` into the `master` branch.

		git checkout master
		git merge my-great-feature
		git branch -d my-great-feature


		git checkout -b my-great-feature2
		vim readme.txt
		git commit -m "edited readme for rebase and merge"
		git checkout master
		git rebase my-great-feature2	


# Git Flow
Demonstration



