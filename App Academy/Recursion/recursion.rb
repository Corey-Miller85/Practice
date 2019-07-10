
require "byebug"

def range(start_num, end_num)
    debugger
    return [] if end_num <= start_num
    range(start_num, end_num - 1) << end_num - 1
end







