// Update menu shop selection
var player = argument[0];
var shop = argument[1];

var x_value = 0;
var y_value = 0;
var validate = false;
var cancel = false;
if(player.m_controller == KEYBOARD)
{
    if(keyboard_check_pressed(vk_left))
    {
        x_value = -1;
    }
    else if(keyboard_check_pressed(vk_right))
    {
        x_value = 1;
    }
    
    if(keyboard_check_pressed(vk_up))
    {
        y_value = -1;
    }
    else if(keyboard_check_pressed(vk_down))
    {
        y_value = 1;
    }
    
    if(keyboard_check_pressed(vk_enter))
    {
        validate = true;
    }
    else if(keyboard_check_pressed(vk_escape))
    {
        cancel = true;
    }
}
else
{    
    if(gamepad_axis_value(player.m_controller, gp_axislh) < -DEAD_ZONE or gamepad_button_check_pressed(player.m_controller, gp_padl))
    {
        if(!shop.m_player_lstick_x_on[index])
        {
            x_value = -1;
        }
        
        shop.m_player_lstick_x_on[index] = true;        
    }
    else if(gamepad_axis_value(player.m_controller, gp_axislh) > DEAD_ZONE or gamepad_button_check_pressed(player.m_controller, gp_padr))
    {
        if(!shop.m_player_lstick_x_on[index])
        {
            x_value = 1;
        }
        
        shop.m_player_lstick_x_on[index] = true;
    }
    else
    {
        shop.m_player_lstick_x_on[index] = false;
    }
    
    if(gamepad_axis_value(player.m_controller, gp_axislv) < -DEAD_ZONE or gamepad_button_check_pressed(player.m_controller, gp_padu))
    {
        if(!shop.m_player_lstick_y_on[index])
        {
            y_value = -1;
        }
        
        shop.m_player_lstick_y_on[index] = true;        
    }
    else if(gamepad_axis_value(player.m_controller, gp_axislv) > DEAD_ZONE or gamepad_button_check_pressed(player.m_controller, gp_padd))
    {
        if(!shop.m_player_lstick_y_on[index])
        {
            y_value = 1;
        }
        
        shop.m_player_lstick_y_on[index] = true;
    }
    else
    {
        shop.m_player_lstick_y_on[index] = false;
    }
    
    if(gamepad_button_check_pressed(player.m_controller, gp_face1))
    {
        validate = true;
    }
    if(gamepad_button_check_pressed(player.m_controller, gp_face2))
    {
        cancel = true;
    }
}


/*
SHOP: item array
0 1 2      7  8  9
3 4 5      10 11 12
6          13
*/
if(x_value > 0)
{
    if(shop.m_current_selection == 2)
    {
        shop.m_current_selection = 7;
    }
    else if(shop.m_current_selection == 9)
    {
        shop.m_current_selection = 0;
    }
    else if(shop.m_current_selection == 5)
    {
        shop.m_current_selection = 10;
    }
    else if(shop.m_current_selection == 12)
    {
        shop.m_current_selection = 3;    
    }
    else if(shop.m_current_selection == 6)
    {
        shop.m_current_selection = 13;
    }
    else if(shop.m_current_selection == 13)
    {
        shop.m_current_selection = 6;
    }
    else
    {
        shop.m_current_selection++;
    }
}
else if(x_value < 0)
{
    if(shop.m_current_selection == 0)
    {
        shop.m_current_selection = 9;
    }
    else if(shop.m_current_selection == 7)
    {
        shop.m_current_selection = 2;
    }
    else if(shop.m_current_selection == 10)
    {
        shop.m_current_selection = 5;
    }
    else if(shop.m_current_selection == 3)
    {
        shop.m_current_selection = 12;
    }
    else if(shop.m_current_selection == 13)
    {
        shop.m_current_selection = 6;
    }
    else if(shop.m_current_selection == 6)
    {
        shop.m_current_selection = 13;
    }
    else
    {
        shop.m_current_selection--;
    }
}

if(y_value > 0)
{
    if(shop.m_current_selection == 6)
    {
        shop.m_current_selection = 0;
    }
    else if(shop.m_current_selection == 4)
    {
        shop.m_current_selection = 1;
    }
    else if(shop.m_current_selection == 5)
    {
        shop.m_current_selection = 2;
    }
    else if(shop.m_current_selection == 13)
    {
        shop.m_current_selection = 7;
    }
    else if(shop.m_current_selection == 11)
    {
        shop.m_current_selection = 8;
    }
    else if(shop.m_current_selection == 12)
    {
        shop.m_current_selection = 9;
    }
    else
    {
        shop.m_current_selection += 3;
    }
}
else if(y_value < 0)
{
    if(shop.m_current_selection == 0)
    {
        shop.m_current_selection = 6;
    }
    else if(shop.m_current_selection == 1)
    {
        shop.m_current_selection = 4;
    }
    else if(shop.m_current_selection == 2)
    {
        shop.m_current_selection = 5;
    }
    else if(shop.m_current_selection == 7)
    {
        shop.m_current_selection = 13;
    }
    else if(shop.m_current_selection == 8)
    {
        shop.m_current_selection = 11;
    }
    else if(shop.m_current_selection == 9)
    {
        shop.m_current_selection = 12;
    }
    else
    {
        shop.m_current_selection -= 3;
    }
}
 

if(validate)
{
    return true; // end of selection.
}

return false;
