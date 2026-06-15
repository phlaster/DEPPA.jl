using DEPPA
using Documenter

DocMeta.setdocmeta!(DEPPA, :DocTestSetup, :(using DEPPA); recursive=true)

makedocs(;
    modules=[DEPPA],
    authors="phlaster <phlaster@users.noreply.github.com>",
    sitename="DEPPA.jl",
    format=Documenter.HTML(;
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
