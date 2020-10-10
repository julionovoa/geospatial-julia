### A Pluto.jl notebook ###
# v0.12.3

using Markdown
using InteractiveUtils

# ╔═╡ 1ed6a020-0a6c-11eb-1f73-df67229e5482
begin
	using GeoArrays
	using Plots
end

# ╔═╡ 35462fb0-0a6c-11eb-1b3e-d1c048cf99dc
dem = GeoArrays.read("C:/Users/jnovoa/Desktop/ALOS_PALSAR/Amazonia/amazonia.tif")

# ╔═╡ 5db2d980-0a6c-11eb-289e-278c964f2172
plot(dem)

# ╔═╡ Cell order:
# ╠═1ed6a020-0a6c-11eb-1f73-df67229e5482
# ╠═35462fb0-0a6c-11eb-1b3e-d1c048cf99dc
# ╠═5db2d980-0a6c-11eb-289e-278c964f2172
