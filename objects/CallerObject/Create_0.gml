// Create a prompt
var prompt_text = "Give me a quest idea for a fantasy RPG.";

// API URL
var url = "http://127.0.0.1:11434/api/generate";

// Headers
var headers = ds_map_create();
ds_map_add(headers, "Content-Type", "application/json");

// Body as a GML struct (auto converts fine in GMS2.3+)
var body = {
    model: "llama3",
    prompt: prompt_text,
    stream: false
};

// Convert body to JSON
var json_body = json_stringify(body);

// Send HTTP request
http_request(url, "POST", headers, json_body);

// Optional log
show_debug_message("\n\nSent request to Ollama: " + json_body+"\n\n");
// Sample JSON response as a string
