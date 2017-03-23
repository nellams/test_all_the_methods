require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"
require "spec_helper"

describe "perimeter" do
  it 'returns 20 for a square with a width of 5' do
    expect(perimeter(5)).to eq(20)
  end
  it 'returns 18 for a shape with a width of of 4 and height of 5' do
    expect(perimeter(4, 5)).to eq(18)
  end
  it 'returns 18 for a shape with a width of 5 and a height of 4' do
    expect(perimeter(5, 4)).to eq(18)
  end
end

describe "average" do
  it 'returns 2 for a grade_list [2,2,2,2]' do
    grade_list = [2,2,2,2]
    expect(average(grade_list)).to eq(2)
  end
  it 'returns 0 for a grade_list [-1,0,1]' do
    grade_list = [0,-1,1]
    expect(average(grade_list)).to eq(0)
  end
  it 'returns for a grade_list [1,2,3,4]' do
    grade_list = [1,2,3,4]
    expect(average(grade_list)).to eq(2.5)
  end
end

describe "rankings" do
  it 'returns "1. Jim\n" for students Jim' do
    students = ["Jim"]
    expect(rankings(students)).to eq("1. Jim\n")
  end
  it 'returns "1. Sally\n2. Jim\n" for students Sally, Jim' do
    students = ["Sally", "Jim"]
    expect(rankings(students)).to eq("1. Sally\n2. Jim\n")
  end
  it 'returns "1. Jim\n2. Sally\n3. Tom\n" for students Sally, Jim' do
    students = ["Jim", "Sally", "Tom"]
    expect(rankings(students)).to eq("1. Jim\n2. Sally\n3. Tom\n")
  end
end

describe "greet" do
  it 'returns "Hi Jim!" for a person named Jim' do
    expect(greet("Jim")).to eq("Hi Jim!")
  end
  it 'returns "Hola Jim!" for a person named Jim and a language of spanish' do
    expect(greet("Jim", "spanish")).to eq("Hola Jim!")
  end
  it 'returns "Ciao Laura!" for a person named Laura and a language of italian' do
    expect(greet("Laura", "italian")).to eq("Ciao Laura!")
  end
  it 'returns "Bonjour Lupette!" for a person named Lupette and a language of french' do
    expect(greet("Lupette", "french")).to eq("Bonjour Lupette!")
  end
end

describe "create_puzzle" do
  it 'returns "_ _ _" for the word "car"' do
    expect(create_puzzle("car")).to eq("_ _ _")
  end
  it 'returns "_ a _" for the word "car" and guesses "a"' do
    expect(create_puzzle("car", "a")).to eq("_ a _")
  end
  it 'returns "_ o o" for the word zoo and guesses o' do
    expect(create_puzzle("zoo", "o")).to eq("_ o o")
  end
  it 'returns "t _ b _ _" for the word table and guesses t and b' do
    expect(create_puzzle("table", ["t", "b"])).to eq("t _ b _ _")
  end
end

describe "divisible_by_three" do
  it 'returns true for 9' do
    expect(divisible_by_three(9)).to eq(true)
  end
  it 'returns false for 11' do
    expect(divisible_by_three(11)).to eq(false)
  end
  it 'returns true for 0' do
    expect(divisible_by_three(0)).to eq(true)
  end
end

describe "perfect_square?" do
  it 'returns true for 1' do
    expect(perfect_square?(1)).to eq(true)
  end
  it 'returns false for 5' do
    expect(perfect_square?(5)).to eq(false)
  end
  it 'returns the error and message' do
    expect {perfect_square?(0)}.to raise_error(ArgumentError, "number must be greater than or equal to one")
  end
end
