# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_reader :email
    @@addresses = []
  def initialize(email)
    @email = email
  end

  def parse
    email.split.collect{ |e|
      e.split(",")
    }.flatten.uniq
  end
end
