// Debug the raw async_load ds_map
show_debug_message("\n\nAsync msg\n\n");
show_debug_message(async_load);
show_debug_message("Async msg end\n\n");

// Check for 'status' first to ensure HTTP was successful
if (ds_map_exists(async_load, "status")) {
    var status = ds_map_find_value(async_load, "status");
    show_debug_message("HTTP Status: " + string(status));
    
    if (status == 0) { // success
        if (ds_map_exists(async_load, "result")) {
            var result_raw = ds_map_find_value(async_load, "result");
            show_debug_message("Full result: " + result_raw);
            
            var result_struct = json_parse(result_raw);
            
            if (is_struct(result_struct)) {
                if (variable_struct_exists(result_struct, "response")) {
                    var reply = result_struct.response;
                    show_debug_message("Ollama replied: " + reply);
                } else {
                    show_debug_message("Parsed result has no 'response' key.");
                }
            } else {
                show_debug_message("Failed to parse JSON to struct.");
            }
        } else {
            show_debug_message("Key 'result' not found in async_load.");
        }
    } else {
        show_debug_message("Error from Ollama: " + string(status));
    }
} else {
    show_debug_message("No 'status' key in async_load.");
}
