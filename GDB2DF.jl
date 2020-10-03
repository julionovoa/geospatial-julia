#=
GDB2DF.jl
Author: @jvlionovoa
Created: 03 October 2020
=#

## packages
using ArchGDAL
using DataFrames

## read a geodatabase
gdb = ArchGDAL.read("data/natural_earth.gdb")

## get some info
@show typeof(gdb)
@show ArchGDAL.nlayer(gdb)
@show ArchGDAL.getdriver(gdb)
for i in 0:ArchGDAL.nlayer(gdb)-1
    println("$i: "*ArchGDAL.getname(ArchGDAL.getlayer(gdb, i)))
end
;

## read layer cities
cities = ArchGDAL.getlayer(gdb, 0)

## get some info
@show typeof(cities)
@show ArchGDAL.nfeature(cities)
;

## convert into Table
tbl = ArchGDAL.Table(cities)
@show typeof(tbl)

## covert to DataFrame
df = DataFrame(tbl)

## get some info
describe(df)
