use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::America::Whitehorse does DateTime::TimeZone::Zone;
has %.rules = ( 
 Canada => [{:adjust("1:00"), :date("14"), :letter("D"), :month(4), :time("2:00"), :years(1918..1918)}, {:adjust("0"), :date("27"), :letter("S"), :month(10), :time("2:00"), :years(1918..1918)}, {:adjust("1:00"), :date("9"), :letter("W"), :month(2), :time("2:00"), :years(1942..1942)}, {:adjust("1:00"), :date("14"), :letter("P"), :month(8), :time("23:00u"), :years(1945..1945)}, {:adjust("0"), :date("30"), :letter("S"), :month(9), :time("2:00"), :years(1945..1945)}, {:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1974..1986)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1974..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(4), :time("2:00"), :years(1987..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("8")}), :letter("D"), :month(3), :time("2:00"), :years(2007..Inf)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(11), :time("2:00"), :years(2007..Inf)}],
 NT_YK => [{:adjust("1:00"), :date("14"), :letter("D"), :month(4), :time("2:00"), :years(1918..1918)}, {:adjust("0"), :date("27"), :letter("S"), :month(10), :time("2:00"), :years(1918..1918)}, {:adjust("1:00"), :date("25"), :letter("D"), :month(5), :time("2:00"), :years(1919..1919)}, {:adjust("0"), :date("1"), :letter("S"), :month(11), :time("0:00"), :years(1919..1919)}, {:adjust("1:00"), :date("9"), :letter("W"), :month(2), :time("2:00"), :years(1942..1942)}, {:adjust("1:00"), :date("14"), :letter("P"), :month(8), :time("23:00u"), :years(1945..1945)}, {:adjust("0"), :date("30"), :letter("S"), :month(9), :time("2:00"), :years(1945..1945)}, {:adjust("2:00"), :lastdow(7), :letter("DD"), :month(4), :time("0:00"), :years(1965..1965)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1965..1965)}, {:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1980..1986)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1980..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(4), :time("2:00"), :years(1987..2006)}],
);
has @.zonedata = [{:baseoffset("-9:00:12"), :rules(""), :until(-2189030400)}, {:baseoffset("-9:00"), :rules("NT_YK"), :until(-110584800)}, {:baseoffset("-8:00"), :rules("NT_YK"), :until(315532800)}, {:baseoffset("-8:00"), :rules("Canada"), :until(Inf)}]<>;
