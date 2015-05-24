use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::America::Indiana::Winamac does DateTime::TimeZone::Zone;
has %.rules = ( 
 Pulaski => [{:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1946..1960)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(9), :time("2:00"), :years(1946..1954)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1955..1956)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(9), :time("2:00"), :years(1957..1960)}],
 US => [{:adjust("1:00"), :lastdow(7), :letter("D"), :month(3), :time("2:00"), :years(1918..1919)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1918..1919)}, {:adjust("1:00"), :date("9"), :letter("W"), :month(2), :time("2:00"), :years(1942..1942)}, {:adjust("1:00"), :date("14"), :letter("P"), :month(8), :time("23:00u"), :years(1945..1945)}, {:adjust("0"), :date("30"), :letter("S"), :month(9), :time("2:00"), :years(1945..1945)}, {:adjust("0"), :lastdow(7), :letter("S"), :month(10), :time("2:00"), :years(1967..2006)}, {:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1967..1973)}, {:adjust("1:00"), :date("6"), :letter("D"), :month(1), :time("2:00"), :years(1974..1974)}, {:adjust("1:00"), :date("23"), :letter("D"), :month(2), :time("2:00"), :years(1975..1975)}, {:adjust("1:00"), :lastdow(7), :letter("D"), :month(4), :time("2:00"), :years(1976..1986)}, {:adjust("1:00"), :dow({:dow(7), :mindate("1")}), :letter("D"), :month(4), :time("2:00"), :years(1987..2006)}, {:adjust("1:00"), :dow({:dow(7), :mindate("8")}), :letter("D"), :month(3), :time("2:00"), :years(2007..Inf)}, {:adjust("0"), :dow({:dow(7), :mindate("1")}), :letter("S"), :month(11), :time("2:00"), :years(2007..Inf)}],
);
has @.zonedata = [{:baseoffset("-5:46:25"), :rules(""), :until(-2717668020)}, {:baseoffset("-6:00"), :rules("US"), :until(-757382400)}, {:baseoffset("-6:00"), :rules("Pulaski"), :until(-273708000)}, {:baseoffset("-5:00"), :rules(""), :until(-31536000)}, {:baseoffset("-5:00"), :rules("US"), :until(31536000)}, {:baseoffset("-5:00"), :rules(""), :until(1143943200)}, {:baseoffset("-6:00"), :rules("US"), :until(1173578400)}, {:baseoffset("-5:00"), :rules("US"), :until(Inf)}]<>;
