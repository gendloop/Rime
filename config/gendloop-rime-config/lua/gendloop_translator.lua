local function gendloop_translator(input, seg)
    if (input == "gendloop") then
       yield(Candidate("gendloop", seg.start, seg._end, "yuque.com/gendloop", "  语雀"))
       yield(Candidate("gendloop", seg.start, seg._end, "github.com/gendloop", "  GitHub"))
    end
end

return gendloop_translator