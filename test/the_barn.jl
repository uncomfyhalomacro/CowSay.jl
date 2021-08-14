@testset "Sample" begin
    @testset "The Barn" begin
        for creature ∈ keys(CREATURES)
            @test getkey(CREATURES, creature, missing) == creature
        end
    end
end