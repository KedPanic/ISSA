///radius, type

var rAngle = irandom_range(0,360)*pi/180;

switch(argument[1])
{
    case 5:
    {
        var s = instance_create(room_width/2+argument[0]*cos(rAngle),room_height/2+argument[0]*sin(rAngle),o_bishark);
        break;
    }
    case 4:
    {
        var s = instance_create(room_width/2+argument[0]*cos(rAngle),room_height/2+argument[0]*sin(rAngle),o_ghostshark);
        break;
    }
    case 3:
    {
        var s = instance_create(room_width/2+argument[0]*cos(rAngle),room_height/2+argument[0]*sin(rAngle),o_super_kamishark);
        break;
    }
    case 2:
    {
        var s = instance_create(room_width/2+argument[0]*cos(rAngle),room_height/2+argument[0]*sin(rAngle),o_drunkshark);
        break;
    }
    case 1:
    {
        var s = instance_create(room_width/2+argument[0]*cos(rAngle),room_height/2+argument[0]*sin(rAngle),o_kamishark);
        break;
    }
    default:
    {
        break;
    }
}
show_debug_message("Shark type n° "+string(argument[1])+" spawned at ("+string(argument[0]*cos(rAngle))+","+string(argument[0]*sin(rAngle))+") with angle = "+string(rAngle));
