def __get_indent n
  caller = caller_locations(n+1,1)[0]
  line = IO.readlines(caller.absolute_path)[caller.lineno-1]

  cnt = 0
  line.each_char do |c|
    return cnt / 2 if c != ' '
    cnt += 1
  end
end

def __indent__
  __get_indent 1
end
def __indent_of_caller__
  __get_indent 2
end
