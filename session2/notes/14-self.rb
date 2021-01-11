# At any given time in Ruby, you are in the context
# of some object. Right now we're in the main object.

# You can see what object you're in by looking at self.
p self # => main

class String
  p self # => String
end

class String
  def existential
    p self # => "abc"
  end
end
"abc".existential


# For a given context, you can always see your instance
# variables and your methods.

class Example
  p self # => Example

  @abc = 123
  p @abc # => 123

  # These will all work, because they all invoke new on
  # Example. Explicitly in the first two cases, implicitly
  # in the third.
  p Example.new # => #<Example:0x00000100863818>
  p self.new    # => #<Example:0x000001008634f8>
  p new         # => #<Example:0x000001008631d8>
end
