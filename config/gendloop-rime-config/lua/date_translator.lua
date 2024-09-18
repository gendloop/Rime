local function date_translator(input, seg)
    if (input == "date") then
       --- Candidate(type, start, end, text, comment)
       yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), "  日期"))
       yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "  日期"))
       yield(Candidate("date", seg.start, seg._end, os.date("%Y/%m/%d/"), "  日期"))
       yield(Candidate("date", seg.start, seg._end, os.date("%Y_%m_%d/"), "  日期"))
    end
end

return date_translator