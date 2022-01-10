module CowSay

### Entrance to Farm ###
export CREATURES
export bubble
export creature_combine_bubble
export message_wrap
export cowsay

const CREATURES = Dict(
    "beavis" => raw"""
          \  
            \
             \
                   _------~~-,
                ,'            ,
                /               \\
               /                :
              |                  '
              |                  |
              |                  |
               |   _--           |
               _| =-.     .-.   ||
               o|/o/       _.   |
               /  ~          \\ |
             (____\@)  ___~    |
                |_===~~~.`    |
             _______.--~     |
             \\________       |
                      \\      |
                    __/-___-- -__
                   /            _ \\
    """,
    "daemon" => raw"""
      \         ,        ,
        \       /(        )`
         \      \ \___   / |
                /- _  `-/  '
               (/\/ \ \   /\
               / /   | `    \
               O O   ) /    |
               `-^--'`<     '
              (_.)  _  )   /
               `.___/`    /
                 `-----' /
    <----.     __ / __   \
    <----|====O)))==) \) /====
    <----'    `--' `.__,' \
                 |        |
                  \       /
            ______( (_  / \______
          ,'  ,-----'   |        \
          `--{__________)        \/
    """,
    "cow" => raw"""
        \
          \
           ^__^
           (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
    """,
    "dragon" => raw"""
     \
       \
        \
         \
                              / \\  //\\
               |\\___/|      /   \\//  \\\\
               /0  0  \\__  /    //  | \\ \\
              /     /  \\/_/    //   |  \\  \\
              \@_^_\@'/   \\/_   //    |   \\   \\
              //_^_/     \\/_ //     |    \\    \\
           ( //) |        \\///      |     \\     \\
         ( / /) _|_ /   )  //       |      \\     _\\
       ( // /) '/,_ _ _/  ( ; -.    |    _ _\\.-~        .-~~~^-.
     (( / / )) ,-{        _      `-.|.-~-.           .~         `.
    (( // / ))  '/\\      /                 ~-. _ .-~      .-~^-.  \\
    (( /// ))      `.   {            }                   /      \\  \\
     (( / ))     .----~-.\\        \\-'                 .~         \\  `. \\^-.
                ///.----..>        \\             _ -~             `.  ^-`  ^-_
                  ///-._ _ _ _ _ _ _}^ - - - - ~                     ~-- ,.-~
                                                                     /.-~
    """,
    "ghostbusters" => raw"""       \
             \
              \
                          __---__
                       _-       /--______
                  __--( /     \ )XXXXXXXXXXX\v.
                .-XXX(   O   O  )XXXXXXXXXXXXXXX-
               /XXX(       U     )        XXXXXXX\
             /XXXXX(              )--_  XXXXXXXXXXX\
            /XXXXX/ (      O     )   XXXXXX   \XXXXX\
            XXXXX/   /            XXXXXX   \__ \XXXXX
            XXXXXX__/          XXXXXX         \__---->
    ---___  XXX__/          XXXXXX      \__         /
      \-  --__/   ___/\  XXXXXX            /  ___--/=
       \-\    ___/    XXXXXX              '--- XXXXXX
          \-\/XXX\ XXXXXX                      /XXXXX
            \XXXXXXXXX   \                    /XXXXX/
             \XXXXXX      >                 _/XXXXX/
               \XXXXX--__/              __-- XXXX/
                -XXXXXXXX---------------  XXXXXX-
                   \XXXXXXXXXXXXXXXXXXXXXXXXXX/
                      VXXXXXXXXXXXXXXXXXXV
    """,
    "kitty" => raw"""
     \
       \

        ("`-'  '-/") .___..--' ' "`-._
            ` *_ *  )    `-.   (      ) .`-.__. `)
            (_Y_.) ' ._   )   `._` ;  `` -. .-'
         _.. `--'_..-_/   /--' _ .' ,4
      ( i l ),-''  ( l i),'  ( ( ! .-'
    """,
    "meow" => raw"""
     \
       \ ,   _ ___.--'''`--''//-,-_--_.
          \`"' ` || \\ \ \\/ / // / ,-\\`,_
         /'`  \ \ || Y  | \|/ / // / - |__ `-,
        /@"\  ` \ `\ |  | ||/ // | \/  \  `-._`-,_.,
       /  _.-. `.-\,___/\ _/|_/_\_\/|_/ |     `-._._)
       `-'``/  /  |  // \__/\__  /  \__/ \
            `-'  /-\/  | -|   \__ \   |-' |
              __/\ / _/ \/ __,-'   ) ,' _|'
             (((__/(((_.' ((___..-'((__,'
    """,
    "milk" => raw"""
      \
        \
           ____________
           |__________|
          /           /\
         /           /  \
        /___________/___/|
        |          |     |
        |  ==\ /== |     |
        |   O   O  | \ \ |
        |     <    |  \ \|
       /|          |   \ \
      / |  \_____/ |   / /
     / /|          |  / /|
    /||\|          | /||\/
        -------------|
            | |    | |
           <__/    \__>
    """,
    "pig" => raw"""
      \
        \
                 ,.
                (_|,.
                ,' /, )_______   _
            __j o``-'        `.'-)'
            (")                 \'
            `-j                |
                `-._(           /
                    |_\  |--^.  /
                /_]'|_| /_)_/
                    /_]'  /_]'
    """,
    "stegosaurus" => raw"""
             \
               \
                                         / `.   .' "
                                 .---.  <    > <    >  .---.
                                 |    \  \ - ~ ~ - /  /    |
             _____          ..-~             ~-..-~
            |     |   \~~~\.'                    `./~~~/
           ---------   \__/                        \__/
          .'  O    \     /               /       \  "
         (_____,    `._.'               |         }  \/~~~/
          `----.          /       }     |        /    \__/
                `-.      |       /      |       /      `. ,~~|
                    ~-.__|      /_ - ~ ^|      /- _      `..-'
                         |     /        |     /     ~-.     `-. _  _  _
                         |_____|        |_____|         ~ - . _ _ _ _ _>
    """,
    "stimpy" => raw"""
      \
        \
            .    _  .
           |\_|/__/|
           / / \/ \  \
          /__|O||O|__ \
         |/_ \_/\_/ _\ |
         | | (____) | ||
         \/\___/\__/  //
         (_/         ||
          |          ||
          |          ||\
           \        //_/
            \______//
           __ || __||
          (____(____)
    """,
    "trex" => raw"""
            \
              \
                 .-=-==--==--.
           ..-=="  ,'o`)      `.
         ,'         `"'         \
        :  (                     `.__...._
        |                  )    /         `-=-.
        :       ,vv.-._   /    /               `---==-._
         \/\/\/VV ^ d88`;'    /                         `.
             ``  ^/d88P!'    /             ,              `._
                ^/    !'   ,.      ,      /                  "-,,__,,--'\"\"\"\"-.
               ^/    !'  ,'  \ . .(      (         _           )  ) ) ) ))_,-.\
              ^(__ ,!',"'   ;:+.:%:a.     \:.. . ,'          )  )  ) ) ,\"'    '
              ',,,'','     /o:::":%:%a.    \:.:.:         .    )  ) _,'
               \"\"\"'       ;':::'' `+%%%a._  \%:%|         ;.). _,-\"\"
                      ,-='_.-'      ``:%::)  )%:|        /:._,"
                     (/(/"           ," ,'_,'%%%:       (_,'
                                    (  (//(`.___;        \
                                     \     \    `         `
                                      `.    `.   `.        :
                                        \. . .\    : . . . :
                                         \. . .:    `.. . .:
                                          `..:.:\     \:...\
                                           ;:.:.;      ::...:
                                           ):%::       :::::;
                                       __,::%:(        :::::
                                    ,;:%%%%%%%:        ;:%::
                                      ;,--\"\"-.`\  ,=--':%:%:\
                                     /\"       \"| /-".:%%%%%%%\
                                                     ;,-\"'`)%%)
                                                    /\"      \"|
    """,
    "turkey" => raw"""
             \
               \
                                                 ,+*^^*+___+++_
                                           ,*^^^^              )
                                        _+*                     ^**+_
                                      +^       _ _++*+_+++_,         )
                  _+^^*+_    (     ,+*^ ^          \\+_        )
                 {       )  (    ,(    ,_+--+--,      ^)      ^\\
                { (\@)    } f   ,(  ,+-^ __*_*_  ^^\\_   ^\\       )
               {:;-/    (_+*-+^^^^^+*+*<_ _++_)_    )    )      /
              ( /  (    (        ,___    ^*+_+* )   <    <      \\
               U _/     )    *--<  ) ^\\-----++__)   )    )       )
                (      )  _(^)^^))  )  )\\^^^^^))^*+/    /       /
              (      /  (_))_^)) )  )  ))^^^^^))^^^)__/     +^^
             (     ,/    (^))^))  )  ) ))^^^^^^^))^^)       _)
              *+__+*       (_))^)  ) ) ))^^^^^^))^^^^^)____*^
              \\             \\_)^)_)) ))^^^^^^^^^^))^^^^)
               (_             ^\\__^^^^^^^^^^^^))^^^^^^^)
                 ^\\___            ^\\__^^^^^^))^^^^^^^^)\\\\
                      ^^^^^\\uuu/^^\\uuu/^^^^\\^\\^\\^\\^\\^\\^\\^\\
                         ___) >____) >___   ^\\_\\_\\_\\_\\_\\_\\)
                        ^^^//\\\\_^^//\\\\_^       ^(\\_\\_\\_\\)
                         ^^^ ^^ ^^^ ^
    """,
    "turtle" => raw"""
             \
               \
                                                   ___-------___
                                               _-~~             ~~-_
                                            _-~                    /~-_
                 /^\__/^\         /~  \                   /    \
               /|  O|| O|        /      \_______________/        \
              | |___||__|      /       /                \          \
              |          \    /      /                    \          \
              |   (_______) /______/                        \_________ \
              |         / /         \                      /            \
               \         \^\\         \                  /               \     /
                 \         ||           \______________/      _-_       //\__//
                   \       ||------_-~~-_ ------------- \ --/~   ~\    || __/
                     ~-----||====/~     |==================|       |/~~~~~
                      (_(__/  ./     /                    \_\      \.
                             (_(___/                         \_____)_)
    """,
    "tux" => raw"""
         \
           \
            .--.
           |o_o |
           |:_/ |
          //   \ \
         (|     | )
        /'\_   _/`\
        \___)=(___/
    """
)


"""
    bubble(msg_v::Vector)

Creates a message bubble.
"""
function bubble(msg_v::Vector)
    result = []
    longest_string = maximum(msg_v .|> length)
    if length(msg_v) == 1
        result = " $(strip(msg_v[1])) "
        dashes = length(result) - 4 ≤ 0 ? "\b---" : "-"^(length(result) - 2)
        return "  $dashes\n<$result>\n  $dashes\n"
    else
        for i in 1:length(msg_v)
            if i == 1
                spaces = " "^(longest_string - length(msg_v[i]) + 1)
                a = string("/ ", strip(msg_v[i]), spaces, "\\\n")
                push!(result, a)
            elseif i == length(msg_v)
                spaces = " "^(longest_string - length(msg_v[i]) + 1)
                a = string("\\ ", strip(msg_v[i]), spaces, "/")
                push!(result, a)
            else
                spaces = " "^(longest_string - length(msg_v[i]) + 1)
                a = string("| ", strip(msg_v[i]), spaces, "|\n")
                push!(result, a)
            end
        end

        dashes = "-"^(longest_string + 2)
        return " $dashes\n$(join(result))\n $dashes\n"
    end
end

"""
    creature_combine_bubble(bubble::String, creature::String)

Combine message bubble and ascii art of creature.
"""
function creature_combine_bubble(bubble::String, creature::String)
    creature ∉ keys(CREATURES) && return throw(ArgumentError("Creature does not exist"))
    creature_figure = CREATURES[creature]
    return "$bubble $creature_figure"
end

"""
    message_wrap(msg::String)

Wraps the message into a compact format for each line so it can be used for function `bubble`.
"""
function message_wrap(msg::String)
    tmp = split(msg)
    full_message = []
    msg_v = []
    while !isempty(tmp)
        if length(join(msg_v, " ")) <= 35
            push!(msg_v, popfirst!(tmp))
        else
            push!(full_message, join(msg_v, " "))
            if length(join(tmp, " ")) <= 35
                push!(full_message, join(tmp, " "))
                break
            end
            msg_v = []
        end

    end
    return full_message
end

"""
    cowsay(s::String, creature="cow")

The infamous cowsay will be printed using this function
"""
function cowsay(s::String, creature = "cow")
    println(creature_combine_bubble(bubble(message_wrap(s)), creature))
end
end
