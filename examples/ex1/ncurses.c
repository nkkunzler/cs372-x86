#include <ncurses.h>

int main() {
	initscr();
	refresh();

	mvaddch(10,10,'c');

	getch();
	endwin();
	return 0;
}
