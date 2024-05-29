function onEarth(seconds)
    earth_seconds = 365.265 * 24 * 60 * 60
    seconds / earth_seconds
end

function onMercury(seconds)
    onEarth(seconds) / 0.2408467
end

function onVenus(seconds)
    onEarth(seconds) / 0.61519726
end

function onMars(seconds)
    onEarth(seconds) / 1.8808158
end

function onJupiter(seconds)
    onEarth(seconds) / 11.862615
end

function onSaturn(seconds)
    onEarth(seconds) / 29.447498
end

function onUranus(seconds)
    onEarth(seconds) / 84.016846
end

function onNeptune(seconds)
    onEarth(seconds) / 164.79132
end

@show onMars(2129871239)