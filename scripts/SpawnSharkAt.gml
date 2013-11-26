///x,y,type


switch(argument[2])
{
    case 5:
    {
        var s = instance_create(argument[0],argument[1],o_bishark);
        break;
    }
    case 4:
    {
        var s = instance_create(argument[0],argument[1],o_ghostshark);
        break;
    }
    case 3:
    {
        var s = instance_create(argument[0],argument[1],o_super_kamishark);
        break;
    }
    case 2:
    {
        var s = instance_create(argument[0],argument[1],o_drunkshark);
        break;
    }
    case 1:
    {
        var s = instance_create(argument[0],argument[1],o_kamishark);
        break;
    }
    default:
    {
        break;
    }
}
show_debug_message("Shark type n° "+string(argument[2])+" spawned at ("+string(argument[0])+","+string(argument[0]));
