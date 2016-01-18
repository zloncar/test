@status=[]
3.times { @status << "BookingInProgress" }
5.times { @status << "Unconfirmed" }
@status << "Failed"
@status << "Succeeded"

@regex=/(BookingInProgress|Unconfirmed)/

def re_check( status, regex )
  if status.size < 1 || status.fetch(0)[regex] == nil
    puts "Finito"
  else
    puts status.shift
    sleep(2)
    re_check( status, regex )
  end
end

require 'irb'
IRB.start
