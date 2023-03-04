-- Function to prompt the user for login information
local function promptLogin()
    io.write("Username: ")
    local username = io.read()
  
    io.write("Password: ")
    local password = io.read("*line")
  
    return username, password
  end
  
  -- Function to check if a user is registered and their credentials are valid
  local function login()
    local username, password = promptLogin()
  
    if checkCredentials(username, password) then
      print("Login successful!")
      -- Call the function to perform further actions for the logged-in user
      -- For example: chat, send messages, etc.
    else
      print("Invalid username or password.")
    end
  end
promptLogin()
print("Login secessfull!")
