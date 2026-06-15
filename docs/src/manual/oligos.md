# Working with Oligomers

The `Oligos` module provides types for representing nucleic acid sequences, including non-degenerate, degenerate (IUPAC ambiguity codes), and gapped sequences.

## Types

- [`Oligo`](@ref): Non-degenerate sequence (A, C, G, T).
- [`DegenOligo`](@ref): Degenerate sequence allowing IUPAC codes (e.g., R, Y, N).
- [`GappedOligo`](@ref): Sequence with gap characters (`-`).

## Basic Usage

```julia
using DEPPA.Oligos

# Create a simple oligo
o = Oligo("ACGT", "my_sequence")

# Create a degenerate oligo
deg = DegenOligo("ACGTN", "degenerate_seq")
n_unique_oligos(deg) # Returns 4 (A, C, G, T)

# Create a gapped oligo
gapped = GappedOligo("AC-GT")
hasgaps(gapped) # Returns true
```

## Iterating Over Variants

For degenerate sequences, you can iterate over all possible non-degenerate variants:

```julia
deg = DegenOligo("AN")
for variant in nondegens(deg)
    println(variant) # Prints AA, AC, AG, AT
end
```