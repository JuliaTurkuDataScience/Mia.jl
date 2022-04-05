module MicrobiomeAnalysis

using SummarizedExperiments: SummarizedExperiment, assay, rowdata, coldata
using MultiAssayExperiments: MultiAssayExperiment
using Distances: pairwise, BrayCurtis, HellingerDist, Jaccard
using MultivariateStats: fit, MDS
using FdeSolver: FDEsolver
using DataStructures, Random, Plots
using CSV
using Statistics: mean, std
using Microbiome: CommunityProfile, abundances, features, featurenames, metadata, Taxon, MicrobiomeSample
using DataFrames: rename!, select!, DataFrame

import Microbiome: shannon, ginisimpson, shannon!, ginisimpson!, braycurtis, jaccard, hellinger, pcoa, CommunityProfile
import Base: size, log10
import DataFrames: nrow, ncol, transform, transform!

include("alpha.jl")
export(shannon)
export(ginisimpson)
export(shannon!)
export(ginisimpson!)

include("beta.jl")
export(braycurtis)
export(jaccard)
export(hellinger)
export(pcoa)

include("wrappers.jl")
export(LVmodel)
export(abundance_plot)
export(size)
export(nrow)
export(ncol)

include("importers.jl")
export(import_se_from_csv)
export(import_mae_from_csv)

include("converters.jl")
export(SummarizedExperiment)
export(CommunityProfile)

include("artifacts.jl")
export(HintikkaXOData)
export(OKeefeDSData)

include("transform.jl")
export(transform)
export(transform!)
export(log10)
export(pa)
export(relabund)
export(ztransform)
export(clr)

end
