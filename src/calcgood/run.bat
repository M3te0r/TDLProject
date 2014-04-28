win_bison -y -d min.y
win_flex min.l
gcc -c y.tab.c lex.yy.c
gcc y.tab.o lex.yy.o minnode.c -o min.exe

pause
min in.txt
pause