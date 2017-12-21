#load "123.IS"
#SET RAM 0260h = 1234h
data segement
     assume ds:data

      org 0
start:
      inlow        r0
      inhigh       r2
      ADCR         r0, 0260h
      ADCR         r2, 0261h
todo:
      sl           r0
      sl           r1
      sl           r2
      sl           r3
      jmp          todo
data  ends
      end          start
