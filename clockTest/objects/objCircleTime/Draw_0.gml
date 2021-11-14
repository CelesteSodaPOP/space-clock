// this is the digital clock
draw_self();

// draw hours hand
// get theta
var hourTheta = -((current_hour-3)*30) - (current_minute/60)*6 - (current_second/360)*6;
draw_line_width_color(x, y, x+lengthdir_x(150, hourTheta), y+lengthdir_y(150, hourTheta), 20, c_white, c_white);

// draw minutes hand
// get theta
var minTheta = -((current_minute-15)*6) - (current_second/60)*6;
draw_line_width_color(x, y, x+lengthdir_x(250, minTheta), y+lengthdir_y(250, minTheta), 10, c_white, c_white);

// draw seconds hand
// get theta
var secTheta = -((current_second-15)/60)*360;
draw_line_width_color(x, y, x+lengthdir_x(225, secTheta), y+lengthdir_y(225, secTheta), 5, c_red, c_red);

// draw date
// find the weekday shoutouts to gms2 manual
var xScale = 4;
var day;
switch(current_weekday)
   {
   case 0: day = "Sun"; break;
   case 1: day = "Mon"; break;
   case 2: 
		day = "Tues"; 
		xScale = 3.7;
		break;
   case 3: day = "Wed"; break;
   case 4: 
		day = "Thur"; 
		xScale = 3.7;
		break;
   case 5: day = "Fri"; break;
   case 6: day = "Sat"; break;
}
var drawDate = day + ", " + string(current_month) + "/" + string (current_day) + "/" + string(current_year);
draw_text_transformed(x+(sprite_width*-0.5), y+(sprite_height*0.5), drawDate, xScale*image_xscale, 4*image_yscale, image_angle)