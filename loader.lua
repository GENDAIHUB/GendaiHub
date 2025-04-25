return function(key)
    if key ~= "gendai_44_code" then
        warn("Chave inválida! Acesso negado.")
        return
    end

    -- Se a key for válida, puxa o próximo script
    local real = game:HttpGet("https://raw.githubusercontent.com/Gendai/GendaiHub/main/core.lua")
    loadstring(real)()
end
