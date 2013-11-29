use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::America::Thunder_Bay does DateTime::TimeZone::Zone;
has %.rules = ( 
 Canada => [{"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1918..1918, "date" => "14"}, {"time" => "2:00", "letter" => "S", "adjust" => "0", "month" => 10, "years" => 1918..1918, "date" => "27"}, {"time" => "2:00", "letter" => "W", "adjust" => "1:00", "month" => 2, "years" => 1942..1942, "date" => "9"}, {"time" => "23:00u", "letter" => "P", "adjust" => "1:00", "month" => 8, "years" => 1945..1945, "date" => "14"}, {"time" => "2:00", "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1945..1945, "date" => "30"}, {"time" => "2:00", "lastdow" => 7, "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1974..1986}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 10, "years" => 1974..2006}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 4, "dow" => {"mindate" => "1", "dow" => 7}, "years" => 1987..2006}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 3, "dow" => {"mindate" => "8", "dow" => 7}, "years" => 2007..Inf}, {"time" => "2:00", "letter" => "S", "adjust" => "0", "month" => 11, "dow" => {"mindate" => "1", "dow" => 7}, "years" => 2007..Inf}],
 Toronto => [{"time" => "23:30", "letter" => "D", "adjust" => "1:00", "month" => 3, "years" => 1919..1919, "date" => "30"}, {"time" => "0:00", "letter" => "S", "adjust" => "0", "month" => 10, "years" => 1919..1919, "date" => "26"}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 5, "years" => 1920..1920, "date" => "2"}, {"time" => "0:00", "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1920..1920, "date" => "26"}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 5, "years" => 1921..1921, "date" => "15"}, {"time" => "2:00", "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1921..1921, "date" => "15"}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 5, "dow" => {"mindate" => "8", "dow" => 7}, "years" => 1922..1923}, {"time" => "2:00", "letter" => "S", "adjust" => "0", "month" => 9, "dow" => {"mindate" => "15", "dow" => 7}, "years" => 1922..1926}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 5, "dow" => {"mindate" => "1", "dow" => 7}, "years" => 1924..1927}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1927..1932}, {"time" => "2:00", "lastdow" => 7, "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1928..1931}, {"time" => "2:00", "letter" => "D", "adjust" => "1:00", "month" => 5, "years" => 1932..1932, "date" => "1"}, {"time" => "2:00", "lastdow" => 7, "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1933..1940}, {"time" => "2:00", "letter" => "S", "adjust" => "0", "month" => 10, "years" => 1933..1933, "date" => "1"}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1934..1939}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1945..1946}, {"time" => "2:00", "lastdow" => 7, "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1946..1946}, {"time" => "0:00", "lastdow" => 7, "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1947..1949}, {"time" => "0:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1947..1948}, {"time" => "0:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 11, "years" => 1949..1949}, {"time" => "2:00", "lastdow" => 7, "letter" => "D", "adjust" => "1:00", "month" => 4, "years" => 1950..1973}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 11, "years" => 1950..1950}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 9, "years" => 1951..1956}, {"time" => "2:00", "lastdow" => 7, "letter" => "S", "adjust" => "0", "month" => 10, "years" => 1957..1973}],
);
has @.zonedata = Array.new({"baseoffset" => "-5:57:00", "rules" => "", "until" => -2366755200}, {"baseoffset" => "-6:00", "rules" => "", "until" => -1893456000}, {"baseoffset" => "-5:00", "rules" => "", "until" => -883612800}, {"baseoffset" => "-5:00", "rules" => "Canada", "until" => 0}, {"baseoffset" => "-5:00", "rules" => "Toronto", "until" => 94694400}, {"baseoffset" => "-5:00", "rules" => "", "until" => 126230400}, {"baseoffset" => "-5:00", "rules" => "Canada", "until" => Inf});