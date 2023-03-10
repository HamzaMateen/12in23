defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.strip(name) |> String.first()
  end

  def initial(name) do
    capit = first_letter(name) |> String.upcase()
    capit <> "."
  end

  def initials(full_name) do
    [first, last] = String.split(full_name)
    initial(first) <> " " <> initial(last)
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
    # Please implement the pair/2 function
  end
end
