## FILES ###################################

vim <file>
vim, :e <file>
:wq : write file and quit
:wa : write all changed files
:xa : save all and exit

## PEN TO PAGE #############################

i - Enter insert mode at cursor
I - Enter insert mode at first non-blank character
s - Delete character under cursor and enter insert mode
S - Delete line and begin insert at beginning of same line
a - Enter insert mode _after_ cursor
A - Enter insert mode at the end of the line
o - Enter insert mode on the next line
O - enter insert mode on the above line
C - Delete from cursor to end of line and begin insert

## MOTIONS ##################################

w - Forward to the beginning of next word
W - Forward to the beginning of the next WORD
b - Backward to the next beginning of a word
B - Backward to the next beginning of a WORD
e - Forward to the next end of word
E - Forward to the next end of WORD

C-E : scroll the window down
C-Y : scroll the window up
C-F : scroll down one page
C-B : scroll up one page

gg : go to the top of the file
G  : go to the bottom of the file
0  : go to the beginning of the line
$  : go to the end of the line
^  : go the first non-whitescape character character of the line
_  : go the first non-whitescape character character of the line

[n]f<o> - Forward until (nth) (o)  (Inclusive)
[n]F<o> - Backward until (nth) (o) (Inclusive)
[n]t<o> - Forward until (nth) (o)  (Exclusive)
[n]T<o> - Backward until (nth) (o) (Exclusive)


## SEARCHING ################################

/  - Forward
?  - Backward
*  - Word under cursor - forward  (bounded)
g* - Word under cursor - forward  (unbounded)
#  - Word under cursor - backward (bounded)
g# - Word under cursor - backward (unbounded)
n  - Next result, forward
N  - Next result, backward
:g// : list all lines containing the last search pattern

## COPY & PASTE ############################

y - Yank. Example: yw (yank word)
p - paste after cursor
P - paste before cursor

## COMMON EDIT COMMANDS ###################

d - Delete: [range]d<motion>
dd  - delete current line
dj  - delete current and next line (j = down)
2dj - delete current and 2 lines downward
da" - delete around "

c - Change (Same as d but put me in insert mode)
cw - change word
ci( - change inside parenthesis
cc = S - Delete current line and enter insert mode	
2cw - Delete 2 words and enter insert mode

~  - Toggle the case of character under cursor
g~ - Toggle case of [motion]
g~w - Toggle case of cursor -> end of word
tr|ue -> g~w -> trUE
g~iw - Toggle case of entire word under cursor
tr|ue -> g~iw -> TRUE

p - Paste 

## WINDOWS ####################################	

C - W s : split the current window horizontally, loading the same file in the new window
C - W v : split the current window vertically, loading the same file in the new window
:sp[lit] filename : split the current window horizontally, loading filename in the new window
:vsp[lit] filename : split the current window vertically, loading filename in the new window

:q[uit] : close the currently active window
:on[ly] : close all windows except the currently active one

C - W + : increase height by 1 line
C - W - : decrease height by 1 line
C - W _ : maximize height
C - W | : maximize width

C - W r : rotate all windows
C - W x : exchange with neighbor
C - W H : move to the far left
C - W J : move to bottom
C - W K : move to top
C - W L : move right

## TABS ######################################

:tabnew : open a new tab with given filename (or empty file)
:tabe[dit] filename : open file in new tab
C-W T : move current split to its own tab
:tabc[lose] : close the current tab page and all its windows
:tabo[nly] : close all tabs but the currently active one

gt : move to next tab
gT : move to previous tab
#gt : move to tab number #

:tabm[ove] : move current tab to the end
:tabmove 0 : move current tab to the beginning
:tabmove 1: move current tab to become the 2nd tab

## INDENTATIONS ##############################

:le : remove indentations in visual selection
> : shift right by 'shiftwidth'
< : shift left by 'shiftwidth'

## search & replace ##########################
:%s/foo/bar/g : find and replace 'foo' with 'bar' in all lines
:s/foo/bar/g : find and replace 'foo' with 'bar'
:5,12s/foo/bar/g : find and replace 'foo' with 'bar' for all lines from line 5 to line 12 (inclusive)
:'a','bs/foo/bar/g : find and replace 'foo' with 'bar' in between mark 'a' and mark 'b' (inclusive)
:.,$s/foo/bar/g : find and replace 'foo' with 'bar' for all lines from the current line (.) to the last line ($) (inclusive)
:g/^foobar/s/foo/bar/g : find and replace 'foo' with 'bar' in each line starting with 'foobar'
:%s/foo/bar/gc : find and replace 'foo' with 'bar' in all lines with confirmation request

## SESSIONS ##################################

:mks ~/.vim/sessions/this_session.vim : create session file 'this_session.vim' in given path
:source ~/.vim/sessions/this_session.vim : load saved session 'this_session.vim'
vim -S ~/.vim/sessions/this_session.vim : load saved session 'this_session.vim' upon vim startup

## COMMENTARY ###############################
gcc : comment line
gc + motion : comment motion
gcap : comment paragraph

## RECURSIVELY DELETE SWP FILES #############
find ./ -type f -name "\.*sw[klmnop]" -delete

## SELECT TO MATCHING BRACKET AND surround with quotes
v% visually select to next matching character
S" surrounds visual selection with '"' (surround.vim)
