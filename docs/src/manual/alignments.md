# Multiple Sequence Alignments

The `Alignments` module handles the construction, visualization, and analysis of Multiple Sequence Alignments (MSA).

## Constructing an MSA

You can create an MSA from a vector of strings or directly from a FASTA file.

```julia
using DEPPA.Alignments, MAFFT_jll

# From a vector of strings
seqs = ["ACGTACGT", "ACGTACGT", "ACGAACGT"]
msa = MSA(seqs)

# From a FASTA file (with optional MAFFT alignment)
msa = MSA("sequences.fasta"; mafft=true, bootstrap=100)
```

## Analyzing the MSA

DEPPA provides functions to calculate conservation, depth, and consensus sequences.

```julia
# Get dimensions
nseqs(msa)  # Number of sequences
width(msa)  # Alignment length

# Calculate depth and determinacy
depths = msadepth(msa)
dets = msadet(msa)

# Generate consensus sequences
major_cons = consensus_major(msa)
degen_cons = consensus_degen(msa; slack=0.1)
```

## Filtering

You can filter out poorly aligned regions or sequences with too many gaps:

```julia
clean_msa = dry_msa(msa; gap_content=0.5)
```