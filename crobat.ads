name = "crobat"
type = "ext"

function vertical(ctx, domain)
    local cmd = "crobat -s " .. domain

    local data = assert(io.popen(cmd))
    for line in data:lines() do
        new_name(ctx, line)
    end
    data:close()
end
