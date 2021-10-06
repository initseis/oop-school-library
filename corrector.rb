class Corrector
  def correct_name(name)
    capitalized_name = name.capitalize
    if capitalized_name.length > 10
      capitalized_name[0..9]
    else
      capitalized_name
    end
  end
end
