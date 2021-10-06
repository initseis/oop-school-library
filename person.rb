require_relative './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission = true, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  private

  def is_of_age?
    @age >= 18
  end

  public

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else
      false
    end
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end
end
