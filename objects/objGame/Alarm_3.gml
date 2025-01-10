/// @desc Go to rmGame

if (room == rmStart) 
{
	room_goto(rmGame);
}


if (room == rmWin or room == rmGameover) 
{
	game_restart();
}
