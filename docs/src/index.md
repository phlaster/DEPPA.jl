# DEPPA.jl

```@docs
DEPPA
```

**DE**generate **P**rimer **P**air **A**ssembler

DEPPA is a Julia package for handling nucleic acid oligomers, multiple sequence alignments (MSA), and designing degenerate PCR primers.

## Features
- **Oligos**: Handle non-degenerate, degenerate (IUPAC), and gapped sequences efficiently.
- **Alignments**: Construct, visualize, and analyze Multiple Sequence Alignments.
- **Primers**: Design and filter PCR primers based on thermodynamic properties and conservation.

## Installation

```julia
using Pkg
Pkg.add("DEPPA")
```

For alignment and thermodynamic calculations, you also need to load the optional extensions:
```julia
using MAFFT_jll
using SeqFold
```

## Quick Start

```julia
using DEPPA, MAFFT_jll, SeqFold

# Load and align sequences
aln = MSA("path/to/sequences.fasta"; mafft=true)

# Design primers
fwds = construct_primers(aln)
revs = construct_primers(aln; is_forward=false)

# Find best pairs
pairs = best_pairs(fwds, revs; amplicon_len=100:500)
```