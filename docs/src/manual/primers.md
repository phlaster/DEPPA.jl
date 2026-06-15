# Primer Design

The `Primers` module provides tools for designing and evaluating PCR primers from an MSA.

## Designing Primers

Use [`construct_primers`](@ref) to generate a list of candidate primers. This function evaluates thermodynamic properties (Tm, dG, GC content) and sequence conservation.

```julia
using DEPPA.Primers, SeqFold

# Design forward primers
fwds = construct_primers(msa; 
    length_range=18:24, 
    tm_range=55:65, 
    gc_range=40:60
)

# Design reverse primers
revs = construct_primers(msa; is_forward=false)
```

## Finding Primer Pairs

Once you have forward and reverse primers, use [`best_pairs`](@ref) to find compatible pairs based on amplicon length and Tm matching.

```julia
pairs = best_pairs(fwds, revs; 
    amplicon_len=200:500, 
    max_tm_diff=2.0
)

# View the best pair
println(pairs[1])
```