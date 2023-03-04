-- Define a table of messages
local messages = {
    "Hello!",
    "How's it going?",
    "Nice to see you.",
    "How have you been?",
    "What's new?",
    "What's up?",
    "Hey there!",
    "Long time no see.",
    "How's your day?",
    "Hope you're doing well.",
    "Good to hear from you.",
    "What brings you here?",
    "What's on your mind?",
    "I'm glad we connected.",
    "What have you been up to?",
    "How's the weather?",
    "Have you seen any good movies lately?",
    "Do you have any exciting plans for the weekend?",
    "What's your favorite hobby?",
    "What is your favorite food?",
    "What is your favorite beverage?",
    "Whats your favorite API",
    "npm git install",
    "nodejs",
    "CLI",
    "Do you have a fornite card?",

}

local function message()
    print("")
    print("DM")
  
    io.write("User that you would like to DM: ")
    local userToDM = io.read()

    io.write("Message: ")
    local message = io.read()
    local randomIndex = math.random(#messages)
    local messageContents = messages[randomIndex]
  
    print("Message contents: " .. messageContents)
  
    repeat
        io.write("Message: ")
        local newMessage = io.read()
        if newMessage ~= "exit" then
            print("Message contents: " .. messages[math.random(#messages)])
        end
    until newMessage == "exit"
end
message()
