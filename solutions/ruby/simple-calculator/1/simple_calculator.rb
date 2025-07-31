class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    begin
      case first_operand.class
      when String
        raise ArgumentError
        return 0
      end

      case second_operand.class
      when String
        raise ArgumentError
        return 0
      end

      case operation
      when "+"
        begin
          res = first_operand + second_operand
        rescue TypeError
          raise ArgumentError
        end
      when "*"
        begin
          res = first_operand * second_operand
        rescue TypeError
          raise ArgumentError
        end
      when "/"
        begin
          res = first_operand / second_operand
        rescue ZeroDivisionError
          return "Division by zero is not allowed."
        rescue TypeError
          raise ArgumentError
        end
      else
        raise UnsupportedOperation.new
      end
    rescue => e
      raise e
    else
      "#{first_operand} #{operation} #{second_operand} = #{res}"
    end
  end
end
