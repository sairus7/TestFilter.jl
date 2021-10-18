using TestFilter
using Test

@testset "TestFilter.jl" begin
    # Write your tests here.
    @test 1 + 1 == 2
    @test "qwe" == "qwe"

    x = add_one(10)

    @test x == 11

end
