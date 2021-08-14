using CowSay
using Documenter

DocMeta.setdocmeta!(CowSay, :DocTestSetup, :(using CowSay); recursive=true)

makedocs(;
    modules=[CowSay],
    authors="uncomfyhalomacro",
    repo="https://github.com/uncomfyhalomacro/CowSay.jl/blob/{commit}{path}#{line}",
    sitename="CowSay",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/uncomfyhalomacro/CowSay.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/uncomfyhalomacro/CowSay.jl",
    devbranch="main",
)