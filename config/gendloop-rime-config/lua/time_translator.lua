local function time_translator(input, seg)
    if (input == "time") then
       yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), "  时间"))
       yield(Candidate("time", seg.start, seg._end, os.date("%H-%M-%S"), "  时间"))
    end
end

return time_translator