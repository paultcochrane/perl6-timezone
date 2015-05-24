use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::Australia::Eucla does DateTime::TimeZone::Zone;
has %.rules = ( 
 AW => [{:adjust("1:00"), :lastdow(7), :letter("-"), :month(10), :time("2:00s"), :years(1974..1974)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("-"), :month(3), :time("2:00s"), :years(1975..1975)}, {:adjust("1:00"), :lastdow(7), :letter("-"), :month(10), :time("2:00s"), :years(1983..1983)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("-"), :month(3), :time("2:00s"), :years(1984..1984)}, {:adjust("1:00"), :date("17"), :letter("-"), :month(11), :time("2:00s"), :years(1991..1991)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("-"), :month(3), :time("2:00s"), :years(1992..1992)}, {:adjust("1:00"), :date("3"), :letter("-"), :month(12), :time("2:00s"), :years(2006..2006)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(3), :time("2:00s"), :years(2007..2009)}, {:adjust("1:00"), :lastdow(7), :letter("-"), :month(10), :time("2:00s"), :years(2007..2008)}],
 Aus => [{:adjust("1:00"), :date("1"), :letter("-"), :month(1), :time("0:01"), :years(1917..1917)}, {:adjust("0"), :date("25"), :letter("-"), :month(3), :time("2:00"), :years(1917..1917)}, {:adjust("1:00"), :date("1"), :letter("-"), :month(1), :time("2:00"), :years(1942..1942)}, {:adjust("0"), :date("29"), :letter("-"), :month(3), :time("2:00"), :years(1942..1942)}, {:adjust("1:00"), :date("27"), :letter("-"), :month(9), :time("2:00"), :years(1942..1942)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(3), :time("2:00"), :years(1943..1944)}, {:adjust("1:00"), :date("3"), :letter("-"), :month(10), :time("2:00"), :years(1943..1943)}],
);
has @.zonedata = [{:baseoffset("8:35:28"), :rules(""), :until(-2366755200)}, {:baseoffset("8:45"), :rules("Aus"), :until(-852076800)}, {:baseoffset("8:45"), :rules("AW"), :until(Inf)}]<>;
