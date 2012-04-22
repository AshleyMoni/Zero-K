-- tremor

return {
  ["tremor"] = {
    air                = false,
    count              = 1,
    ground             = true,
    water              = false,
    debris1 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 5,
      ground             = true,
      water              = false,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.22 0.18 0.15 1   0.22 0.18 0.15 1	 0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.2, 0]],
        numparticles       = 5,
        particlelife       = [[30 i-0.5]],
        particlelifespread = 0,
        particlesize       = [[30 r10]],
        particlesizespread = 0,
        particlespeed      = 4,
        particlespeedspread = 1,
        pos                = [[0, -2, 0]],
        sizegrowth         = [[-0.1 i0.015]],
        sizemod            = 1.0,
        texture            = [[debris2]],
      },
    },
    dirt1 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = false,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1 0.5 0.3 0.3  0.45 0.37 0.3 1  0.45 0.37 0.3 1	 0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 20,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 3,
        particlelife       = 30,
        particlelifespread = 3,
        particlesize       = 2.3,
        particlesizespread = 1,
        particlespeed      = 0,
        particlespeedspread = 19,
        pos                = [[0, -2, 0]],
        sizegrowth         = 3,
        sizemod            = 1.0,
        texture            = [[dirtplosion2]],
      },
    },
    dirt2 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = false,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1 0.5 0.3 0.3	 0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 20,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 3,
        particlelife       = 7,
        particlelifespread = 3,
        particlesize       = 3,
        particlesizespread = 1,
        particlespeed      = 0,
        particlespeedspread = 19,
        pos                = [[0, -2, 0]],
        sizegrowth         = 3,
        sizemod            = 1.0,
        texture            = [[dirtplosion2]],
      },
    },
	
    waterdrops1 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = false,
      water              = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[1 1 1 0.2   1 1 1 0.1	 1 1 1 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.2, 0]],
        numparticles       = 5,
        particlelife       = [[50 i-0.5]],
        particlelifespread = 0,
        particlesize       = [[10 r10]],
        particlesizespread = 0,
        particlespeed      = 4,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = [[-0.1 i0.015]],
        sizemod            = 1.0,
        texture            = [[debris2]],
      },
    },
    water1 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = false,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1 1 1 0.2  1 1 1 0.3  1 1 1 0.3	 1 1 1 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 15,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 2,
        particlelife       = 23,
        particlelifespread = 3,
        particlesize       = 1.5,
        particlesizespread = 3,
        particlespeed      = 0,
        particlespeedspread = 19,
        pos                = [[0, 2, 0]],
        sizegrowth         = 3,
        sizemod            = 1.0,
        texture            = [[dirtplosion2]],
      },
    },
    water2 = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = false,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1 1 1 0.2	 1 1 1 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 15,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 3,
        particlelife       = 7,
        particlelifespread = 3,
        particlesize       = 1.5,
        particlesizespread = 3,
        particlespeed      = 0,
        particlespeedspread = 19,
        pos                = [[0, 2, 0]],
        sizegrowth         = 3,
        sizemod            = 1.0,
        texture            = [[dirtplosion2]],
      },
    },

    glow = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 1,
        colormap           = [[1 0.8 0.6 0.6   0.8 0.6 0.4 0.9   0.4 0.3 0.2 0.6   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 180,
        emitvector         = [[-0, 1, 0]],
        gravity            = [[0, 0.00, 0]],
        numparticles       = 1,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 60,
        particlesizespread = 10,
        particlespeed      = 1,
        particlespeedspread = 0,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[kfoam]],
      },
    },
	
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 0,
      flashalpha         = 0.99,
      flashsize          = 100,
      ttl                = 5,
      color = {
        [1]  = 1,
        [2]  = 1,
        [3]  = 0.80000001192093,
      },
    },
  },

}

