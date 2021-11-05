name = "sigsubfind3r"
type = "ext"

function vertical(ctx, domain)
    local cmd = "sigsubfind3r -s -d " .. domain

    local data = assert(io.popen(cmd))
    for line in data:lines() do
        new_name(ctx, line)
    end
    data:close()
end
