require_relative('../db/sql_runner')

class House

  attr_accessor :id, :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO houses (name) VALUES ('#{@name}') RETURNING *"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|house| House.new(house)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id}"
    house = SqlRunner.run(sql)
    result = House.new(house.first)
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end