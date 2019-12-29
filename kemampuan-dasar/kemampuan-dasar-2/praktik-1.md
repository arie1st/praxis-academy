F:\Courses\Praxis>mkdir rhymes

F:\Courses\Praxis>cd rhymes

F:\Courses\Praxis\rhymes>git init
Initialized empty Git repository in F:/Courses/Praxis/rhymes/.git/

F:\Courses\Praxis\rhymes>copy NUL README.txt
        1 file(s) copied.

F:\Courses\Praxis\rhymes>git add README.txt
F:\Courses\Praxis\rhymes>git commit -m 'First commit.'
F:\Courses\Praxis\rhymes>git diff

F:\Courses\Praxis\rhymes>git add README.txt

F:\Courses\Praxis\rhymes>git commit -m "added project overview to README.txt"
On branch master
Untracked files:
        txt

nothing added to commit but untracked files present

F:\Courses\Praxis\rhymes>

F:\Courses\Praxis\rhymes>wget https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
SYSTEM_WGETRC = c:/progra~1/wget/etc/wgetrc
syswgetrc = C:\Program Files (x86)\GnuWin32/etc/wgetrc
--2019-12-29 11:10:19--  https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
Resolving www.acquia.com... 104.16.117.45, 104.16.118.45
Connecting to www.acquia.com|104.16.117.45|:443... connected.
OpenSSL: error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version
Unable to establish SSL connection.

F:\Courses\Praxis\rhymes>wget https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
SYSTEM_WGETRC = c:/progra~1/wget/etc/wgetrc
syswgetrc = C:\Program Files (x86)\GnuWin32/etc/wgetrc
--2019-12-29 11:10:37--  https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
Resolving www.acquia.com... 104.16.117.45, 104.16.118.45
Connecting to www.acquia.com|104.16.117.45|:443... connected.
OpenSSL: error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version
Unable to establish SSL connection.


F:\Courses\Praxis\rhymes>git commit -m 'Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt'
error: pathspec 'old-mother-hubbard.txt,' did not match any file(s) known to git
error: pathspec 'twinkle-twinkle.txt,' did not match any file(s) known to git
error: pathspec 'hokey-pokey.txt'' did not match any file(s) known to git

F:\Courses\Praxis\rhymes>git log
commit 6c88b40166b83533a57173713ccd48daf2cdb227 (HEAD -> master)
Author: Arie <arie1st_fx@yahoo.com>
Date:   Sun Dec 29 10:51:42 2019 +0700

    commit
    
F:\Courses\Praxis\rhymes>git log --oneline
6c88b40 (HEAD -> master) commit


F:\Courses\Praxis\rhymes>git log -p
commit 6c88b40166b83533a57173713ccd48daf2cdb227 (HEAD -> master)
Author: Arie <arie1st_fx@yahoo.com>
Date:   Sun Dec 29 10:51:42 2019 +0700

    commit

diff --git a/README.txt b/README.txt
new file mode 100644
index 0000000..e69de29


F:\Courses\Praxis\rhymes>git clone https://github.com/bryanhirsch/rhymes.git
Cloning into 'rhymes'...
remote: Enumerating objects: 23, done.
remote: Total 23 (delta 0), reused 0 (delta 0), pack-reused 23
Unpacking objects: 100% (23/23), done.

F:\Courses\Praxis\rhymes\rhymes>git checkout -b hickory-dickory
Switched to a new branch 'hickory-dickory'

F:\Courses\Praxis\rhymes\rhymes>wget https://www.acquia.com/sites/default/files/blog/hickory-dickory-dock.txt
SYSTEM_WGETRC = c:/progra~1/wget/etc/wgetrc
syswgetrc = C:\Program Files (x86)\GnuWin32/etc/wgetrc
--2019-12-29 11:16:53--  https://www.acquia.com/sites/default/files/blog/hickory-dickory-dock.txt
Resolving www.acquia.com... 104.16.117.45, 104.16.118.45
Connecting to www.acquia.com|104.16.117.45|:443... connected.
OpenSSL: error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version
Unable to establish SSL connection.


F:\Courses\Praxis\rhymes\rhymes>
F:\Courses\Praxis\rhymes\rhymes>git commit -m 'Added hickory-dickory-dock.txt.'
error: pathspec 'hickory-dickory-dock.txt.'' did not match any file(s) known to git


F:\Courses\Praxis\rhymes\rhymes>git push origin hickory-dickory
remote: Permission to bryanhirsch/rhymes.git denied to arie1st.
fatal: unable to access 'https://github.com/bryanhirsch/rhymes.git/': The requested URL returned error: 403


F:\Courses\Praxis\rhymes>git push origin hickory-dickory
error: src refspec hickory-dickory does not match any
error: failed to push some refs to 'origin'

F:\Courses\Praxis\rhymes>git remote

F:\Courses\Praxis\rhymes>git remote -v

F:\Courses\Praxis\rhymes>
F:\Courses\Praxis\rhymes>git branch -a
* master


F:\Courses\Praxis\rhymes>git checkout -b hickory-dickory bob/hickory-dickory
fatal: 'bob/hickory-dickory' is not a commit and a branch 'hickory-dickory' cannot be created from it


F:\Courses\Praxis\rhymes>git diff master -- hickory-dickory

F:\Courses\Praxis\rhymes>git log -1 -p
commit 613c7afc3fe2cb23ad9c9247093929b9f631b289 (HEAD -> master)
Author: Arie <arie1st_fx@yahoo.com>
Date:   Sun Dec 29 11:19:13 2019 +0700

    commit

diff --git a/txt b/txt
new file mode 100644
index 0000000..9c8b35a
--- /dev/null
+++ b/txt
@@ -0,0 +1 @@
+        1 file(s) copied.


F:\Courses\Praxis\rhymes>git merge hickory-dickory
merge: hickory-dickory - not something we can merge


F:\Courses\Praxis\rhymes>git branch -D hickory-dickory
error: branch 'hickory-dickory' not found.

F:\Courses\Praxis\rhymes>git remote
alice

F:\Courses\Praxis\rhymes>git remote -v
alice   https://github.com/bryanhirsch/rhymes.git (fetch)
alice   https://github.com/bryanhirsch/rhymes.git (push)

F:\Courses\Praxis\rhymes>git remote add alice https://github.com/bryanhirsch/rhymes.git

F:\Courses\Praxis\rhymes>git remote
alice

F:\Courses\Praxis\rhymes>git remote -v
alice   https://github.com/bryanhirsch/rhymes.git (fetch)
alice   https://github.com/bryanhirsch/rhymes.git (push)

F:\Courses\Praxis\rhymes>git remote update
Fetching alice
warning: no common commits
remote: Enumerating objects: 23, done.
remote: Total 23 (delta 0), reused 0 (delta 0), pack-reused 23
Unpacking objects: 100% (23/23), done.
From https://github.com/bryanhirsch/rhymes
 * [new branch]      master     -> alice/master

F:\Courses\Praxis\rhymes>git checkout master
Already on 'master'

F:\Courses\Praxis\rhymes>git merge alice/master
fatal: refusing to merge unrelated histories

F:\Courses\Praxis\rhymes>git diff alice/master
diff --git a/README.txt b/README.txt
index c83e022..e69de29 100644
--- a/README.txt
+++ b/README.txt
@@ -1 +0,0 @@
-This repo is a collection of my favorite nursery rhymes.
diff --git a/all-around-the-mulberry-bush.txt b/all-around-the-mulberry-bush.txt
deleted file mode 100644
index b77d989..0000000
--- a/all-around-the-mulberry-bush.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-All around the mulberry bush
-The monkey chased the weasel.
-The monkey thought 'twas all in fun.
-Pop! goes the weasel.
-
-A penny for a spool of thread,
-A penny for a needle.
-That's the way the money goes.
-Pop! goes the weasel.
-
-Up and down the City Road,
-In and out of the Eagle,
-That's the way the money goes.
-Pop! goes the weasel.
-
-Half a pound of tuppenney rice,
-Half a pound of treacle,
-Mix it up and make it nice,
-Pop! goes the weasel.
diff --git a/hickory-dickory-dock.txt b/hickory-dickory-dock.txt
deleted file mode 100644
index a337f4c..0000000
--- a/hickory-dickory-dock.txt
+++ /dev/null
@@ -1,5 +0,0 @@
-Hickory, dickory, dock,
-The mouse ran up the clock.
-The clock struck one,
-The mouse ran down!
-Hickory, dickory, dock.
diff --git a/hokey-pokey.txt b/hokey-pokey.txt
deleted file mode 100644
index 97f425b..0000000
--- a/hokey-pokey.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-You put your right foot in,
-You put your right foot out;
-You put your right foot in,
-And you shake it all about.
-You do the Hokey-Pokey,
-And you turn yourself around.
-That's what it's all about!
-
-You put your left foot in...
-You put your right hand in...
-You put your right side in...
-You put your nose in...
-You put your tail in...
-You put your head in...
-You put your whole self in...
-
diff --git a/jack-and-jill.txt b/jack-and-jill.txt
deleted file mode 100644
index 1596bce..0000000
--- a/jack-and-jill.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Jack and Jill
-Went up the hill
-To fetch a pail of water.
-Jack fell down
-And broke his crown
-And Jill came tumbling after.
-Up Jack got
-And home did trot
-As fast as he could caper
-Went to bed
-And plastered his head
-With vinegar and brown paper.
diff --git a/old-mother-hubbard.txt b/old-mother-hubbard.txt
deleted file mode 100644
index c91ff71..0000000
--- a/old-mother-hubbard.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Old Mother Hubbard
-Went to the cupboard
-To fetch her poor dog a bone;
-But when she came there
-The cupboard was bare,
-And so the poor dog had none.
-She took a clean dish
-To get him some tripe;
-But when she came back
-He was smoking a pipe.
-She went to the grocer's
-To buy him some fruit;
-But when she came back
-He was playing the flute.
-
-She went to the baker's
-To buy him some bread;
-But when she came back
-The poor dog was dead.
-
-She went to the undertaker's
-To buy him a coffin;
-But when she came back
-The poor dog was laughing.
-
-She went to the hatter's
-To buy him a hat;
-But when she came back
-He was feeding the cat.
-
-The dame made a curtsey,
-The dog made a bow;
-The dame said, "Your servant."
-The dog said, "Bow wow!"
diff --git a/roses-are-red.txt b/roses-are-red.txt
deleted file mode 100644
index efba165..0000000
--- a/roses-are-red.txt
+++ /dev/null
@@ -1,8 +0,0 @@
-Roses are red
--------------
-
-Roses are red
-Violets are blue
-Nobody loves GitHub
-More than government agencies do!
-
diff --git a/twinkle-twinkle.txt b/twinkle-twinkle.txt
deleted file mode 100644
index 5585462..0000000
--- a/twinkle-twinkle.txt
+++ /dev/null
@@ -1,6 +0,0 @@
-Twinkle, twinkle, little star,
-How I wonder what you are.
-Up above the world so high,
-Like a diamond in the sky.
-Twinkle, twinkle, little star,
-How I wonder what you are.
diff --git a/txt b/txt
new file mode 100644
index 0000000..9c8b35a
--- /dev/null
+++ b/txt
@@ -0,0 +1 @@
+        1 file(s) copied.
                                                                                                                        --- a/roses-are-red.txt                                                                                                 --- a/roses-are-red.txt                                                                                                 +++ /dev/null
@@ -1,8 +0,0 @@
-Roses are red
--------------
-
-Roses are red
-Violets are blue
-Nobody loves GitHub
-More than government agencies do!
-
diff --git a/twinkle-twinkle.txt b/twinkle-twinkle.txt
deleted file mode 100644
index 5585462..0000000
--- a/twinkle-twinkle.txt
+++ /dev/null
@@ -1,6 +0,0 @@
-Twinkle, twinkle, little star,
-How I wonder what you are.
-Up above the world so high,
-Like a diamond in the sky.
-Twinkle, twinkle, little star,
-How I wonder what you are.
diff --git a/txt b/txt
new file mode 100644
index 0000000..9c8b35a
--- /dev/null
+++ b/txt
@@ -0,0 +1 @@
+        1 file(s) copied.
(END)                    

F:\Courses\Praxis\rhymes>git push bob master
remote: Permission to bryanhirsch/rhymes.git denied to arie1st.
fatal: unable to access 'https://github.com/bryanhirsch/rhymes.git/': The requested URL returned error: 403


F:\Courses\Praxis\rhymes>git checkout -b bobs-changes
Switched to a new branch 'bobs-changes'

F:\Courses\Praxis\rhymes>wget https://www.acquia.com/sites/default/files/blog/jack-be-nimble.txt
SYSTEM_WGETRC = c:/progra~1/wget/etc/wgetrc
syswgetrc = C:\Program Files (x86)\GnuWin32/etc/wgetrc
--2019-12-29 11:33:12--  https://www.acquia.com/sites/default/files/blog/jack-be-nimble.txt
Resolving www.acquia.com... 104.16.118.45, 104.16.117.45
Connecting to www.acquia.com|104.16.118.45|:443... connected.
OpenSSL: error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version
Unable to establish SSL connection.



F:\Courses\Praxis\rhymes>git add jack-be-nimble.txt
fatal: pathspec 'jack-be-nimble.txt' did not match any files


F:\Courses\Praxis\rhymes>
F:\Courses\Praxis\rhymes>git commit -m 'Added jack-be-nimble.txt.'
error: pathspec 'jack-be-nimble.txt.'' did not match any file(s) known to git

F:\Courses\Praxis\rhymes>wget https://www.acquia.com/sites/default/files/blog/mother-goose.txt
SYSTEM_WGETRC = c:/progra~1/wget/etc/wgetrc
syswgetrc = C:\Program Files (x86)\GnuWin32/etc/wgetrc
--2019-12-29 11:34:06--  https://www.acquia.com/sites/default/files/blog/mother-goose.txt
Resolving www.acquia.com... 104.16.118.45, 104.16.117.45
Connecting to www.acquia.com|104.16.118.45|:443... connected.
OpenSSL: error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version
Unable to establish SSL connection.


F:\Courses\Praxis\rhymes>git add mother-goose.txt
fatal: pathspec 'mother-goose.txt' did not match any files


F:\Courses\Praxis\rhymes>git commit -m 'Added mother-goose.txt.'
error: pathspec 'mother-goose.txt.'' did not match any file(s) known to git


F:\Courses\Praxis\rhymes>git commit -am 'Updated README.txt.'
fatal: paths 'README.txt.' ...' with -a does not make sense


F:\Courses\Praxis\rhymes>git diff --word-diff

F:\Courses\Praxis\rhymes>git commit -am 'Fixed typo in README.txt.'
fatal: paths 'typo ...' with -a does not make sense

Courses\Praxis\rhymes>git log --oneline
613c7af (HEAD -> bobs-changes, master) commit
6c88b40 commit




