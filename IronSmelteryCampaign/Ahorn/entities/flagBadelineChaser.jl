module IronSmelteryCampaignFlagBadelineChaser

using ..Ahorn, Maple

@mapdef Entity "IronSmelteryCampaign/FlagBadelineOldsite" FlagBadelineChaser(x::Integer, y::Integer, canChangeMusic::Bool=true, flag::String="flag_name", index::Integer=0)

const placements = Ahorn.PlacementDict(
    "Badeline Chaser (Flag) (IronSmelteryCampaign)" => Ahorn.EntityPlacement(
        FlagBadelineChaser
    )
)

# This sprite fits best, not perfect, thats why we have a offset here
chaserSprite = "characters/badeline/sleep00.png"

function Ahorn.selection(entity::FlagBadelineChaser)
    x, y = Ahorn.position(entity)

    return Ahorn.getSpriteRectangle(chaserSprite, x + 4, y, jx=0.5, jy=1.0)
end

Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::FlagBadelineChaser) = Ahorn.drawSprite(ctx, chaserSprite, 4, 0, jx=0.5, jy=1.0)

end
