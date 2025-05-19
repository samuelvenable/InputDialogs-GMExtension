/// @description  open the extension in resource tree for the full list of functions

dpi = 96;
if (os_type == os_windows) dpi = 96; 
if (os_type == os_macosx) dpi = 72;
if (os_type == os_linux) dpi = 72;

// calculate dpi x-scaling
display_get_dpi_xscale = display_get_dpi_x() / dpi;

// calculate dpi y-scaling
display_get_dpi_yscale = display_get_dpi_y() / dpi;

// scale game relative to current dpi settings
window_set_size(640 * display_get_dpi_xscale, 480 * display_get_dpi_yscale);   
window_set_min_width(640 * display_get_dpi_xscale);
window_set_min_height(480 * display_get_dpi_yscale);
window_center();
                    
// execute part of the code ten steps after create event
alarm[0] = 10;

