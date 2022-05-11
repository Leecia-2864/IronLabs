
# IronFelicia

# This is my first gitlab excercise

felic@LAPTOP-HUB0AQ1B MINGW64 ~/OneDrive/Desktop/IronFelicia (main)
$ git add about.txt
fatal: pathspec 'about.txt' did not match any files

felic@LAPTOP-HUB0AQ1B MINGW64 ~/OneDrive/Desktop/IronFelicia (main)
$ git add about.txt
warning: LF will be replaced by CRLF in about.txt.
The file will have its original line endings in your working directory

felic@LAPTOP-HUB0AQ1B MINGW64 ~/OneDrive/Desktop/IronFelicia (main)
$ git commit -m "IronFelicia"
[main (root-commit) fe0c343] IronFelicia
 1 file changed, 1 insertion(+)
 create mode 100644 about.txt

felic@LAPTOP-HUB0AQ1B MINGW64 ~/OneDrive/Desktop/IronFelicia (main)
$ git remote add origin
usage: git remote add [<options>] <name> <url>

    -f, --fetch           fetch the remote branches
    --tags                import all tags and associated objects when fetching
                          or do not fetch any tag at all (--no-tags)
    -t, --track <branch>  branch(es) to track
    -m, --master <branch>
                          master branch
    --mirror[=(push|fetch)]
                          set up remote as a mirror to push to or fetch from


felic@LAPTOP-HUB0AQ1B MINGW64 ~/OneDrive/Desktop/IronFelicia (main)
$ git push -u
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 290 bytes | 290.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/Leecia-2864/IronFelicia.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.

felic@LAPTOP-HUB0AQ1B MINGW64 ~/OneDrive/Desktop/IronFelicia (main)
