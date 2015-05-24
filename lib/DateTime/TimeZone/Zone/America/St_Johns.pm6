use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::America::St_Johns does DateTime::TimeZone::Zone;
has %.rules = ( 
 Canada => [{:adjust("1:00"), :date("14"), :letter("D"), :month(4), :time("2:00"), :years(1918..1918)}, {:adjust("0"), :date("27"), :letter("S"), :month(10), :time("2:00"), :years(1918..1918)}, {:adjust("1:00"), :date("9"), :letter("W"), :month(2), :time("2:00"), :years(1942..1942)}, {:adjust("1:00"), :date("14"), :letter("P"), :month(8), :time("23:00u"), :years(1945..1945)}, {:adjust("0"), :date("30"), :letter("S"), :month(9), :time("2:00"), :years(1945..1945)}, {:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1974..1986)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1974..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(4), :time("2:00"), :years(1987..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("8")}), :letter("D"), :month(3), :time("2:00"), :years(2007..Inf)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(11), :time("2:00"), :years(2007..Inf)}],
 StJohns => [{:adjust("1:00"), :date("8"), :letter("D"), :month(4), :time("2:00"), :years(1917..1917)}, {:adjust("0"), :date("17"), :letter("S"), :month(9), :time("2:00"), :years(1917..1917)}, {:adjust("1:00"), :date("5"), :letter("D"), :month(5), :time("23:00"), :years(1919..1919)}, {:adjust("0"), :date("12"), :letter("S"), :month(8), :time("23:00"), :years(1919..1919)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(5), :time("23:00"), :years(1920..1935)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("23:00"), :years(1920..1935)}, {:adjust("1:00"), :dow({:dow(1), :mindate("9")}), :letter("D"), :month(5), :time("0:00"), :years(1936..1941)}, {:adjust("0"), :dow({:dow(1), :mindate("2")}), :letter("S"), :month(10), :time("0:00"), :years(1936..1941)}, {:adjust("1:00"), :dow({:dow(7), :mindate("8")}), :letter("D"), :month(5), :time("2:00"), :years(1946..1950)}, {:adjust("0"), :dow({:dow(7), :mindate("2")}), :letter("S"), :month(10), :time("2:00"), :years(1946..1950)}, {:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1951..1986)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(9), :time("2:00"), :years(1951..1959)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1960..1986)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(4), :time("0:01"), :years(1987..1987)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("0:01"), :years(1987..2006)}, {:adjust("2:00"), :dow({:dow(7), :mindate("1")}), :letter("DD"), :month(4), :time("0:01"), :years(1988..1988)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(4), :time("0:01"), :years(1989..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("8")}), :letter("D"), :month(3), :time("0:01"), :years(2007..2011)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(11), :time("0:01"), :years(2007..2010)}],
);
has @.zonedata = [{:baseoffset("-3:30:52"), :rules(""), :until(-2713910400)}, {:baseoffset("-3:30:52"), :rules("StJohns"), :until(-1640995200)}, {:baseoffset("-3:30:52"), :rules("Canada"), :until(-1609459200)}, {:baseoffset("-3:30:52"), :rules("StJohns"), :until(-1096934400)}, {:baseoffset("-3:30"), :rules("StJohns"), :until(-872380800)}, {:baseoffset("-3:30"), :rules("Canada"), :until(-757382400)}, {:baseoffset("-3:30"), :rules("StJohns"), :until(1293840000)}, {:baseoffset("-3:30"), :rules("Canada"), :until(Inf)}]<>;
