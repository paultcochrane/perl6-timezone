use v6;
use DateTime::TimeZone::Zone;
class DateTime::TimeZone::Zone::EST does DateTime::TimeZone::Zone;
has %.rules = ( 
);
has @.zonedata = [{:baseoffset("-5:00"), :rules(""), :until(Inf)}]<>;
