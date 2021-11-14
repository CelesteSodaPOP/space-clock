// this is the digital clock
draw_self();

// draw hours and minutes
// set the font
draw_set_font(fontHrMin);

// draw the text of the time
var drawHour = string_format(current_hour, 2, 0);
draw_text_transformed(x+(sprite_width*0.1), y, drawHour, 8*image_xscale, 8*image_yscale, image_angle);
var drawMinute = string_replace(string_format(current_minute, 2, 0), " ", "0");
draw_text_transformed(x+(sprite_width*0.5), y, drawMinute, 8, 8, image_angle)

// draw seconds
// set the font
draw_set_font(fontDateSex);

var drawSex = string_replace(string_format(current_second, 2, 0), " ", "0") + "s";
draw_text_transformed(x+(sprite_width*0.75), y+(sprite_height*0.7), drawSex, 4*image_xscale, 4*image_yscale, image_angle);

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
draw_text_transformed(x+(sprite_width*0.08), y+(sprite_height*0.7), drawDate, xScale*image_xscale, 4*image_yscale, image_angle)