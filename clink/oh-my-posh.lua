local user_profile_dir = os.getenv("USERPROFILE")
local pwsh_ext = '/OneDrive/Documents/WindowsPowerShell'
local pwsh_dir = user_profile_dir .. pwsh_ext
local theme_dir = pwsh_dir .. "/custom_themes"

local omp_exec = pwsh_dir .. "/Modules/oh-my-posh/oh-my-posh.exe"
local theme_filepath = theme_dir .. "/custom_theme.omp.json"

local cmd_str = string.format('%s --config="%s" --init --shell cmd', omp_exec, theme_filepath)

load(io.popen(cmd_str):read("*a"))()
