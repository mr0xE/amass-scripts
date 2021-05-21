name = "github-subdomains"
type = "ext"

function vertical(ctx, domain)
    local cmd = "github-subdomains -raw -k -e -d " .. domain
    local data = assert(io.popen(cmd))
    for line in data:lines() do
        newname(ctx, line)
    end
    data:close()
end
