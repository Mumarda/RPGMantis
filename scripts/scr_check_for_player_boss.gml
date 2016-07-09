/// scr_check_for_player
if (instance_exists(obj_player))
{
    var dis = point_distance(x,y, obj_player.x,obj_player.y)
    if (dis < sight)
    {
        state = scr_boss_chase_state;
        targetx = obj_player.x;
        targety = obj_player.y;
    }
    else
    {
        scr_boss_choose_next_state();
    }
} 
else
{
    scr_boss_choose_next_state();
}

