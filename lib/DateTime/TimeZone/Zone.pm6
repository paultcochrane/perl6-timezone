role DateTime::TimeZone::Zone;

## A foundation for all DateTime::TimeZone::Zone::* classes.
## The DateTime::TimeZone::Zone::* classes will be generated by a script,
## using the DateTime::Olson library.

has $.datetime;   ## The DateTime object used to determine offset from.

method offset {
  my $time = $.datetime.posix;
  my $best-zoneentry;
  for @.zonedata -> $zoneentry {
    if $zoneentry<until> > $time {
      if !$best-zoneentry || $zoneentry<until> < $best-zoneentry<until> {
        $best-zoneentry = $zoneentry;
      }
    }
  }

  my $offset = $best-zoneentry<baseoffset>;
  my @tmp = split(/\:/, $offset);
  $offset = +@tmp[0] * 60 * 60;
  if +@tmp[0] < 0 {
    $offset -= @tmp[1] * 60;
  } else {
    $offset += @tmp[1] * 60;
  }

  if $best-zoneentry<rules> {
    my @rule-list = %.rules{$best-zoneentry<rules>}.list;

    my $change = '0:00';
    my $max-dt;

    for @rule-list -> $rule {
      if $.datetime.year ~~ $rule<years> {
        say 'found a possible rule';
        my $datetime;

        my @time = split(/\:/, $rule<time>);
        @time[1] ~~ s/u$//;

        if $rule<date> {
          $datetime = DateTime.new(year => $.datetime.year,
                                   month => $rule<month>,
                                   day => $rule<date>,
                                   hour => +@time[0],
                                   minute => +@time[1]);
        } elsif $rule<lastdow> {
          $datetime = DateTime.new(year => $.datetime.year,
                                   month => $rule<month>,
                                   day => 1,
                                   hour => +@time[0],
                                   minute => +@time[1]);
          my $day;
          if $rule<dow><dow> <= $datetime.day-of-week {
            $day = $datetime.day-of-week - $rule<dow><dow>;
          } else {
            $day = 7 - ($rule<dow><dow> - $datetime.day-of-week);
          }
          $datetime .= delta($day, days);

          loop {
            my $new-dt = $datetime.delta(1, weeks);
            if $new-dt.month == $datetime.month {
              $datetime = $new-dt;
            } else {
              last;
            }
          }
        } elsif $rule<dow> {
          $datetime = DateTime.new(year => $.datetime.year,
                                   month => $rule<month>,
                                   day => 1,
                                   hour => +@time[0],
                                   minute => +@time[1]);
          my $day;
          if $rule<dow><dow> <= $datetime.day-of-week {
            $day = $datetime.day-of-week - $rule<dow><dow>;
          } else {
            $day = 7 - ($rule<dow><dow> - $datetime.day-of-week);
          }
          while $day < $rule<dow><mindate> {
            $day += 7;
          }
          $datetime .= delta($day, days);
        }
        say 'datetime created, checking for validity...';
        if $.datetime.Instant > $datetime.Instant {
          if !$max-dt || $datetime.Instant > $max-dt.Instant {
            say 'updating change';
            $max-dt = $datetime;
            $change = $rule<adjust> || '0:00';
          }
        }
      }
    }

    say 'change is ' ~ $change;

    my @tmp = split(/\:/, $change);
    $offset += @tmp[0] * 60 * 60;
    if +@tmp[0] < 0 {
      $offset -= @tmp[1] * 60;
    } else {
      $offset += @tmp[1] * 60;
    }
  }
  
  return $offset;
}

## The rest are convenience wrappers for converting the object to a number.

method Int {
  self.offset;
}

method Num {
  self.offset;
}

method Numeric {
  self.offset;
}
