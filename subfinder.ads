name = "subfinder"
type = "ext"

function vertical(ctx, domain)
    local cmd = "subfinder -d " .. domain

    local data = assert(io.popen(cmd))
    for line in data:lines() do
        newname(ctx, line)
    end
    data:close()
end
