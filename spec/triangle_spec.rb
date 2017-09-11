require('triangle')
require('rspec')
require('pry')

describe('#triangle_check') do
  it('checks if triangle is equilateral') do
    expect(Triangle.new(20, 20, 20).triangle_check()).to(eq('an Equilateral'))
  end
  it('checks if a triangle') do
    expect(Triangle.new(45, 20, 20).triangle_check()).to(eq('not a'))
  end
  it('checks if it is an Isosceles triangle') do
    expect(Triangle.new(30, 20, 20).triangle_check()).to(eq('an Isosceles'))
  end
  it('checks if it is a Scalene triangle') do
    expect(Triangle.new(30, 20, 25).triangle_check()).to(eq('a Scalene'))
  end
end
