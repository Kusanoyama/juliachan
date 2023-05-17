using Ekztazy

include("../env.jl")
include("uwufy.jl")

#compute intent integer
intentvec= [0,1,3,7,8,9,10,12,13,14,15]
shift(x) = 1 << x
intentsum = sum(shift.(intentvec))

#logindata


# Guild to register the command in 
testguild = 1071099085261656265

client = Client(
    secret,
    app_id,
    intentsum
)

on_message_create!(client) do (ctx) 
    if ctx.message.author.id != app_id
        if occursin("uwu",ctx.message.content)
            reply(client, ctx, content=uwufy(ctx.message.content))
        end
        if occursin("owo",ctx.message.content)
            reply(client, ctx, content="owo ･ω･")
        end
        if occursin(r"julia|Julia",ctx.message.content)
            reply(client, ctx, content="Dats meee, u-uwu")
        end
    end
end


on_ready!(client) do (ctx)
    @info "Successfully logged in as $(ctx.user.username)"
end


start(client)