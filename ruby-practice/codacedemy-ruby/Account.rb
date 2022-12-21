class Account
    attr_reader :name
    attr_reader :balance
  
    def initialize(name, balance = 100)
        @name = name
        @balance = balance
    end
  
    private
    def pin
        @pin = 1234
    end
  
    private 
    def pin_error
      return "Access denied: incorrect PIN."
    end

    private 
    def withdraw_error
      return "Failed: withdrew more money than available balance."
    end
  
    public
    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance: $#{@balance}"
        else
            puts pin_error
        end
    end
  
    public
    def withdraw(pin_number, amount)
        if pin_number == pin
            if amount > @balance
                puts withdraw_error
            else 
                @balance -= amount
                puts "Withdrew #{amount}. New balance: $#{@balance}"
            end
        else
            puts pin_error
        end
    end

    public
    def deposit(pin_number, amount)
        if pin_number == pin
            @balance += amount
            puts "Deposited #{amount}. New balance: $#{@balance}"
        else
            puts pin_error
        end
    end
end
  
checking_account = Account.new("Personal", 2000)
checking_account.deposit(2345, 200)