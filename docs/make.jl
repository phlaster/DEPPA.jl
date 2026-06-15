using DEPPA
using DEPPA.Oligos
using DEPPA.Alignments
using DEPPA.Primers

using Documenter

DocMeta.setdocmeta!(DEPPA, :DocTestSetup, :(using DEPPA); recursive=true)

makedocs(;
    modules=[DEPPA, DEPPA.Oligos, DEPPA.Alignments, DEPPA.Primers],
    authors="phlaster <phlaster@users.noreply.github.com>",
    sitename="DEPPA.jl",
    format=Documenter.HTML(;
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Manual" => [
            "manual/oligos.md",
            "manual/alignments.md",
            "manual/primers.md",
        ],
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo="github.com/phlaster/DEPPA.jl",
    devbranch="master",
    push_preview=true
)