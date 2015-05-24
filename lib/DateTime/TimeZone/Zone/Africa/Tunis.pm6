use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::Africa::Tunis does DateTime::TimeZone::Zone;
has %.rules = ( 
 Tunisia => [{:adjust("1:00"), :date("15"), :letter("S"), :month(4), :time("23:00s"), :years(1939..1939)}, {:adjust("0"), :date("18"), :letter("-"), :month(11), :time("23:00s"), :years(1939..1939)}, {:adjust("1:00"), :date("25"), :letter("S"), :month(2), :time("23:00s"), :years(1940..1940)}, {:adjust("0"), :date("6"), :letter("-"), :month(10), :time("0:00"), :years(1941..1941)}, {:adjust("1:00"), :date("9"), :letter("S"), :month(3), :time("0:00"), :years(1942..1942)}, {:adjust("0"), :date("2"), :letter("-"), :month(11), :time("3:00"), :years(1942..1942)}, {:adjust("1:00"), :date("29"), :letter("S"), :month(3), :time("2:00"), :years(1943..1943)}, {:adjust("0"), :date("17"), :letter("-"), :month(4), :time("2:00"), :years(1943..1943)}, {:adjust("1:00"), :date("25"), :letter("S"), :month(4), :time("2:00"), :years(1943..1943)}, {:adjust("0"), :date("4"), :letter("-"), :month(10), :time("2:00"), :years(1943..1943)}, {:adjust("1:00"), :dow({:dow(1), :mindate("1")}), :letter("S"), :month(4), :time("2:00"), :years(1944..1945)}, {:adjust("0"), :date("8"), :letter("-"), :month(10), :time("0:00"), :years(1944..1944)}, {:adjust("0"), :date("16"), :letter("-"), :month(9), :time("0:00"), :years(1945..1945)}, {:adjust("1:00"), :date("30"), :letter("S"), :month(4), :time("0:00s"), :years(1977..1977)}, {:adjust("0"), :date("24"), :letter("-"), :month(9), :time("0:00s"), :years(1977..1977)}, {:adjust("1:00"), :date("1"), :letter("S"), :month(5), :time("0:00s"), :years(1978..1978)}, {:adjust("0"), :date("1"), :letter("-"), :month(10), :time("0:00s"), :years(1978..1978)}, {:adjust("1:00"), :date("1"), :letter("S"), :month(6), :time("0:00s"), :years(1988..1988)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("0:00s"), :years(1988..1990)}, {:adjust("1:00"), :date("26"), :letter("S"), :month(3), :time("0:00s"), :years(1989..1989)}, {:adjust("1:00"), :date("1"), :letter("S"), :month(5), :time("0:00s"), :years(1990..1990)}, {:adjust("1:00"), :date("1"), :letter("S"), :month(5), :time("0:00s"), :years(2005..2005)}, {:adjust("0"), :date("30"), :letter("-"), :month(9), :time("1:00s"), :years(2005..2005)}, {:adjust("1:00"), :lastdow(7), :letter("S"), :month(3), :time("2:00s"), :years(2006..2008)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(10), :time("2:00s"), :years(2006..2008)}],
);
has @.zonedata = [{:baseoffset("0:40:44"), :rules(""), :until(-2797200000)}, {:baseoffset("0:09:21"), :rules(""), :until(-1855958400)}, {:baseoffset("1:00"), :rules("Tunisia"), :until(Inf)}]<>;
