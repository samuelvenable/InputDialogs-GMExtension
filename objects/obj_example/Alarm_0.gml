/// @description  open the extension in resource tree for the full list of functions

// set owner window; ensure dialog stays attached
dialog_owner(window_handle());

// set the font size of textbox
dialog_fontsize(32);

// show dialog caption and set its text
dialog_caption(false, "Multiline Input Box");

// The default is dialog_buttons("OK", "Cancel") so don't panic!
dialog_buttons("Okay!", "Nevermind..."); // use localization if you want!

// set dialog size
dialog_size(window_get_width(), window_get_height());

// display multiline input dialog box
Result = dialog_inputbox("Enter text below:", "Hello World!", true);

// always do this after displaying a dialog box
keyboard_clear(keyboard_lastkey);

// always do this after displaying a dialog box
mouse_clear(mouse_lastbutton);

// show text entered, if any
if (Result != "") show_message("Result = \"" + string_replace_all(Result, "\"", "\\\"") + "\"");

// check cancel button
if (dialog_cancelled()) show_message("Cancel was pressed!");

// close the game
game_end();

