require_relative 'calculator'

module J2FunOnly
  class Runner
    def initialize
      @calc = J2FunOnly::Calculator.new
    end

    def run
      while true
        print prompt

        cmd = get_command

        case cmd.strip
        when 'r'
          print 'Result: '
          puts @calc.get
        when 'x'
          @calc.reset
        when 'q'
          puts 'See you soon!'
          exit
        when 'mw'
          @calc.mem_add
          puts 'Added to memory'
        when 'mr'
          @calc.mem_result!
        else
          @calc.put cmd
        end

      end
    end

    private

    def prompt
      case @calc.state
      when :initialized_state
        "Calculator started.\n\
        \rr - result, x - reset, mw - add to mem, mr - get from mem, q - quit.\n"
      when :operator_state
        "#{@calc.get} "
      when :operand_state
        "#{@calc.get} #{@calc.operator} "
      else
        $stderr.puts 'Something gone wrong!'
        exit
      end
    end

    def get_command
      cmd = gets
    rescue Interrupt
      cmd = 'q'
    ensure
      return cmd
    end
  end
end
