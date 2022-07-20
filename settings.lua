Config = {

    -- NOTE: These CANNOT be relative paths, e.g:
    -- no: ~/luvaudiodl/config,
    -- yes: /home/${USER}/luvaudiodl/config

    config_path = 'audio_config.json',
    default_config_path = 'defaults/default_audio_config.json',

    error_color = "\27[1;31m%s\27[0m",
    warn_color = "\27[1;33m%s\27[0m",
    bold_color = "\27[1;37m%s\27[0m",

    _welcome_message = [[Welcome to LuvAudioDL, type 'help' to get help.]],
    _goodbye_message = [[See ya]],

    _command_invalid_format = [[Command %s invalid]],
    _subcommand_invalid_format = [[Sub-command %s invalid]],

    _file_error = [[Can't %s file, error: %s]],
    _error_format = "[ERROR] Command failed with error: \n%s",
    _warn_format = "[WARNING] %s",

    _prompt_message = "",

    _command_gmatch = "%S+",

    _flag_symbol = "-",
    _option_symbol = "--",

    _commands_map = {

        q = "exit",
        quit = "exit",
        exit = "exit",

        help = "help",
        h = "help",

        playlist = "playlist",
        lists = "playlist"

    },

    _help_map = {

        exit = [[Exits the prompt, if you're in one.
        
        --silent: no goodbye message :c
        ]],

        help = [[Shows this command.]],
        playlist = [[Manages your playlists. 
        
        make:
                Makes playlists. 
                
                --force: ignores things like duplication checks and writes anyway. 
                            
        remove:
                Removes playlists.
        list:
                Lists your playlists
        ]]
    },

    _help_format = "%s\n%s"
}


function Config.errorify(Message)
    local Base = Config._error_format:format(Message)

    return Config.error_color:format(Base)
end

function Config.warnify(Message)
    local Base = Config._warn_format:format(Message)

    return Config.warn_color:format(Base)
end

function Config.boldify(Message)
    return Config.bold_color:format(Message)
end

return Config