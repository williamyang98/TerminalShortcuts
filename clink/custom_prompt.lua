-- Process git branch command to get branch name
function get_git_branch()
    local file = io.popen("git branch 2>nul")
    for line in file:lines() do
	local m = line:match("%* (.+)$")
	if m then
	    return string.format("(%s)", m)
	end
    end
    return ""
end

-- Get username from whoami command
function get_user()
    local file = io.popen("whoami")
    local output = file:read("*line")
    local username = output:match("\\(%w+)")
    if username then
        return username
    else
        return output
    end
end

-- Create custom prompt string
local custom_prompt = clink.promptfilter(1)
function custom_prompt:filter()
    local user_and_host_color = "\x1b[01;32m"
    local user_and_host = os.getenv("USERNAME")

    local cwd_color = "\x1b[01;34m"
    local cwd = clink.get_cwd()
    local home_dir = os.getenv("HOME")
    cwd = cwd:gsub(home_dir, "~")

    local git_branch_color = "\x1b[31m"
    local git_branch = get_git_branch() 

    local prompt_tail = "\x1b[31m\n>"
    local last_color = "\x1b[00m"

    return string.format(
        "%s%s %s%s %s%s%s%s ", 
        user_and_host_color, user_and_host,
        cwd_color, cwd, 
        git_branch_color, git_branch, 
        prompt_tail, last_color)
end
