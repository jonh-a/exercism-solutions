defmodule Username do
  def sanitize('') do
    ''
  end

  def sanitize([head | tail]) do
    s =
      case head do
        n when n >= ?a and n <= ?z -> [n]
        ?ä -> 'ae'
        ?ö -> 'oe'
        ?ü -> 'ue'
        ?ß -> 'ss'
        ?_ -> '_'
        _ -> ''
      end

    s ++ sanitize(tail)
  end
end
