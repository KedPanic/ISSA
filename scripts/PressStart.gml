// waiting for press start event.
if( keyboard_check_pressed(vk_enter) )
{
    // player creation.
    CreatePlayer(KEYBOARD);

    // goto next room    
    instance_destroy();    
    room_goto(r_selection);
}
else
{
    for(var index = 0; index < 4; index++)
    {
        if(gamepad_is_connected(index) and gamepad_button_check_pressed(index, gp_start))        
        {  
            // player creation.
            CreatePlayer(GAMEPAD_1 + index);
                
            // goto next room
            instance_destroy();            
            room_goto(r_selection);
        }
    }
}

