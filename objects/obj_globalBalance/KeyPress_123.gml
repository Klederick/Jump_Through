if (room = room_menu) {if (show_question("Do you want to delete your custom levels?")) {

directory_destroy(global.customleveldirectory);
directory_create(global.customleveldirectory);

}}