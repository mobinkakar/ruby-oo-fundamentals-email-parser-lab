
class EmailParser

    attr_accessor :emails
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      # split into an array using the regex of "possible comma followed by white space"
      # select from the array only those emails that are not blank spaces
      # select only those unique emails
      emails.split(/[,?\s]/).select{|email| email != ""}.uniq 
    end
  
  end