# Team A

module TeamA
    class MyClass
      def find_in_database
      end
    end
end


# Team B
module TeamB
    class MyClass
    end

    class ClassTen
    end
end


TeamA::MyClass.new
TeamB::MyClass.new


module Database
    class User
    end

    class Blogpost
    end
end

module Mailer
  class User
    def email_user
    end
  end
end


database_user = Database::User.new
database_user.find_in_database
database_user.email_user


