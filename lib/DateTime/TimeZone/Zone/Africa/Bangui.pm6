use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::Africa::Bangui does DateTime::TimeZone::Zone;
has %.rules = ( 
);
has @.zonedata = Array.new({"baseoffset" => "1:14:20", "rules" => "", "until" => -1830384000}, {"baseoffset" => "1:00", "rules" => "", "until" => Inf});
