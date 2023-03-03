local function promptUser()
    print("")
    print("Create MemoChat account:")
    print("")
    
    io.write("Username: ")
    local username = io.read()
    local numbers = ""
    local fullUsername = username
    
    repeat
      io.write("4 numbers after username: ")
      numbers = io.read()
      if string.len(numbers) ~= 4 then
        print("Error: You must enter 4 digits after the username.")
      end
    until string.match(numbers, "%d%d%d%d") ~= nil
    
    fullUsername = fullUsername .. "#" .. numbers
    
    repeat
      io.write("Email: ")
      local signupEmail = io.read()
      
      -- Check if the email matches the pattern
      if signupEmail:match(".+@.+%.com$") or signupEmail:match(".+@.+%.org$") 
      or signupEmail:match(".+@.+%.edu$")
      or signupEmail:match(".+@.+%.net$")
      or signupEmail:match(".+@.+%.io$")
      or signupEmail:match(".+@.+%.me$")
      or signupEmail:match(".+@.+%.ca$")
      or signupEmail:match(".+@.+%.tech$")
      or signupEmail:match(".+@.+%.ai$")
      or signupEmail:match(".+@.+%.studio$")
      or signupEmail:match(".+@.+%.gov$")
      then
        break
      else
        -- Invalid email address
        print("Invalid email address. Please enter a valid email address.")
      end
    until true
    
    io.write("Password: ")
    local password = io.read("*line")
  
    print("")
    print("Do you agree to the Service TOS?")
  
    local input = io.read()
  
    if input == "yes" then
      print("Account created.")
    else
      print("Account creation canceled.")
    end
  end
  
  promptUser()
  
