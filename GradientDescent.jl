########################################################
###*************  GRADIENT DESCENT *******##############
using CSV
using Plots
using Calculus
using Statistics
using DataFrames

# import data set from github
data = CSV.read(download("https://github.com/jmrmcode/datasets/raw/master/toyData_GradientDescent.csv"), DataFrame)[:, 1]

# function to compute the gradient descent
function grad_descent(θ_init, f)
    ϵ = 1e-8 # distance between the observed and fitted value
    λ = 0.1 # step size
    θ_jminus1 = θ_init
    θ_j = θ_jminus1 - λ * derivative(f, θ_jminus1)
    while abs(θ_jminus1 - θ_j) > ϵ
        θ_jminus1 = θ_j
        θ_j = θ_jminus1 - λ * derivative(f, θ_jminus1)
        println(θ_j)
        end
    return θ_j
    end

## loop gradient descent over the data

    # create an empty vector
    v = Array{Float64, 1}(undef, 37)
    # create the time variable scaled by π
    pif = (collect(1:length(data))*2*pi) / length(collect(1:length(data)))
    # set θ initial value
    θ_init = 1.5
    # loop grad_descent() over the data
    for i in 1:length(data)
    # cost function (observed - fitted)^2
    # where fitted = θ * (1 - cos(t))
    f(θ) = (data[i] - (θ*(1 - cos(pif[i]))))^2
    # evaluate f(θ) over
    θ_i = eval(grad_descent(θ_init, f))
    v[i] = θ_i # populate vector v
    end

## plot fitted and observed values
    # declare the function
    γ(t) = median(v)*(1 - cos(t))
    # compute the fitted values
    Γ = γ.(pif)
    # create an empty matrix
    A = zeros(length(pif), 2)
    for j in 1:2
        for i in 1:length(pif)
            A[i, j] = Γ[i]
        end
    end

    plot(pif, A[:, 2], label = "Fitted")
    plot!(pif, data[1:length(data)], label = "Observed")
