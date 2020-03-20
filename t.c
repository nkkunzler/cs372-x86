#include <ncurses.h>

int main() {
	initscr();
	printw("Hello World THIS IS A TEST!!!");
	refresh();
	getch();
	endwin();
	return 0;
}
