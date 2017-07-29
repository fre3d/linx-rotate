#!/usr/bin/perl

use strict;
use warnings;

if (`xrandr -q` =~ /connected\sprimary.+right\s\(/) {
system("xrandr", "-o", "normal");
system("xinput", "set-prop", "Goodix Capacitive TouchScreen", "Coordinate Transformation 
Matrix", "1", "0", "0", "0", "1", "0", "0", "0", "1");
} else {
system("xrandr", "-o", "right");
system("xinput", "set-prop", "Goodix Capacitive TouchScreen", "Coordinate Transformation 
Matrix", "0", "1", "0", "-1", "0", "1", "0", "0", "1");
}
