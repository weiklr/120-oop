class Flight
  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end

  private

  attr_reader :database_handle
end

#
# There is nothing technically incorrect about this class, but the definition may lead to problems
# in the future. How can this class be fixed to be resistant to future problems?
# Consider what might happen if you leave this class defined as it is,
# and later decide to alter the implementation so that a database is not used.
#
#
# Assuming this Flight class is always meant to be used together with the database class,
# we do not expose the database setter publicly so to prevent accidental updates to the database class
#
# we also do not expose the database getter publicly
# as we assume all database changes to be called within the instance of the class
#