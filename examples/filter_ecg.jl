####
# запустить: ]dev TestFilter

using TestFilter
using DSP
using DelimitedFiles
using Plots

x = readdlm("examples/ecg.csv")[:, 1]

f = DSPFilter()
fcut = 30
fs = 257
init(f, Lowpass(2 * fcut / fs), Butterworth(2))

y = similar(x)
run_filter(f, y, x)

plot(x)
plot!(y)
