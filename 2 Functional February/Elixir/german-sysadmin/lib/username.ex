defmodule Username do
  def sanitize(''), do: []
  def sanitize(username) do
    lowercase_username = Enum.map(username, fn c ->
      case ?c do
        ?c when ?c >= 97 -> c
        ?c when ?c <= 122 -> c
        _ -> nil
      end
    end)

    cond do
      not List.ascii_printable?(to_char_list(lowercase_username)) ->
        Enum.reduce()
    end
  end

  # def sanitize(username) do
  #   # ä becomes ae
  #   # ö becomes oe
  #   # ü becomes ue
  #   # ß becomes ss





  #   # Please implement the sanitize/1 function
  # end
end
