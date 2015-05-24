use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::Europe::Bucharest does DateTime::TimeZone::Zone;
has %.rules = ( 
 C-Eur => [{:adjust("1:00"), :date("30"), :letter("S"), :month(4), :time("23:00"), :years(1916..1916)}, {:adjust("0"), :date("1"), :letter("-"), :month(10), :time("1:00"), :years(1916..1916)}, {:adjust("1:00"), :dow({:dow(1), :mindate("15")}), :letter("S"), :month(4), :time("2:00s"), :years(1917..1918)}, {:adjust("0"), :dow({:dow(1), :mindate("15")}), :letter("-"), :month(9), :time("2:00s"), :years(1917..1918)}, {:adjust("1:00"), :date("1"), :letter("S"), :month(4), :time("2:00s"), :years(1940..1940)}, {:adjust("0"), :date("2"), :letter("-"), :month(11), :time("2:00s"), :years(1942..1942)}, {:adjust("1:00"), :date("29"), :letter("S"), :month(3), :time("2:00s"), :years(1943..1943)}, {:adjust("0"), :date("4"), :letter("-"), :month(10), :time("2:00s"), :years(1943..1943)}, {:adjust("1:00"), :dow({:dow(1), :mindate("1")}), :letter("S"), :month(4), :time("2:00s"), :years(1944..1945)}, {:adjust("0"), :date("2"), :letter("-"), :month(10), :time("2:00s"), :years(1944..1944)}, {:adjust("0"), :date("16"), :letter("-"), :month(9), :time("2:00s"), :years(1945..1945)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(4), :time("2:00s"), :years(1977..1980)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("2:00s"), :years(1977..1977)}, {:adjust("0"), :date("1"), :letter("-"), :month(10), :time("2:00s"), :years(1978..1978)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("2:00s"), :years(1979..1995)}, {:adjust("1:00"), :lastdow(7), :letter("S"), :month(3), :time("2:00s"), :years(1981..Inf)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(10), :time("2:00s"), :years(1996..Inf)}],
 E-Eur => [{:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(4), :time("0:00"), :years(1977..1980)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("0:00"), :years(1977..1977)}, {:adjust("0"), :date("1"), :letter("-"), :month(10), :time("0:00"), :years(1978..1978)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("0:00"), :years(1979..1995)}, {:adjust("1:00"), :lastdow(7), :letter("S"), :month(3), :time("0:00"), :years(1981..Inf)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(10), :time("0:00"), :years(1996..Inf)}],
 EU => [{:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(4), :time("1:00u"), :years(1977..1980)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("1:00u"), :years(1977..1977)}, {:adjust("0"), :date("1"), :letter("-"), :month(10), :time("1:00u"), :years(1978..1978)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("1:00u"), :years(1979..1995)}, {:adjust("1:00"), :lastdow(7), :letter("S"), :month(3), :time("1:00u"), :years(1981..Inf)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(10), :time("1:00u"), :years(1996..Inf)}],
 Romania => [{:adjust("1:00"), :date("21"), :letter("S"), :month(5), :time("0:00s"), :years(1932..1932)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("-"), :month(10), :time("0:00s"), :years(1932..1939)}, {:adjust("1:00"), :dow({:dow(7), :mindate("2")}), :letter("S"), :month(4), :time("0:00s"), :years(1933..1939)}, {:adjust("1:00"), :date("27"), :letter("S"), :month(5), :time("0:00"), :years(1979..1979)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("0:00"), :years(1979..1979)}, {:adjust("1:00"), :date("5"), :letter("S"), :month(4), :time("23:00"), :years(1980..1980)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("1:00"), :years(1980..1980)}, {:adjust("1:00"), :lastdow(7), :letter("S"), :month(3), :time("0:00s"), :years(1991..1993)}, {:adjust("0"), :lastdow(7), :letter("-"), :month(9), :time("0:00s"), :years(1991..1993)}],
);
has @.zonedata = [{:baseoffset("1:44:24"), :rules(""), :until(-2492985600)}, {:baseoffset("1:44:24"), :rules(""), :until(-1213142400)}, {:baseoffset("2:00"), :rules("Romania"), :until(354679200)}, {:baseoffset("2:00"), :rules("C-Eur"), :until(662688000)}, {:baseoffset("2:00"), :rules("Romania"), :until(757382400)}, {:baseoffset("2:00"), :rules("E-Eur"), :until(852076800)}, {:baseoffset("2:00"), :rules("EU"), :until(Inf)}]<>;
