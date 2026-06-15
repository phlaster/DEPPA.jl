module DEPPA

"""
    Package DEPPA

Nucleic acid oligomers aligning and PCR primers construction

$(isnothing(get(ENV, "CI", nothing)) ? ("\nPackage local path: $(pathof(DEPPA))") : "") 
"""
DEPPA

export Oligs, Primers, Alignments


include("Oligs.jl")
include("Alignments.jl")
include("Primers.jl")

end # module