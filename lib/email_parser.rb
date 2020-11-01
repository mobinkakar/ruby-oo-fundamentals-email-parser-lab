require 'pry'

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    # binding.pry
    def parse
        # if @email_addresses.include?(",")
        #     @email_addresses.split(", ").uniq
        # else
        #     @email_addresses.split(" ").uniq
        # end
        @email_addresses.split(" ").map{|element| element.delete_suffix(",")}.uniq
        # splitting by " ", and then mapping through the array,
        # if any element ends with "," delete the comma
        # return only uniq elements

    end
end