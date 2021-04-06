using Flux, AMDGPU, FluxAMDGPU
using Test
using Zygote: pullback

AMDGPU.allowscalar(false)
Flux.default_gpu_converter[] = AMDGPU.roc

include("test_utils.jl")
include("core.jl")
include("losses.jl")
include("layers.jl")
