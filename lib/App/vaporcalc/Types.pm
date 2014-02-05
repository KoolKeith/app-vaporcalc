package App::vaporcalc::Types;

use strict; use warnings FATAL => 'all';

use Type::Library   -base;
use Types::Standard -types;
use Type::Utils     -all;

declare VaporLiquid =>
  as Str(),
  where { $_ eq 'PG' or $_ eq 'VG' };

coerce VaporLiquid =>
  from Str(),
  via { uc $_ };

declare Percentage =>
  as Int(),
  where { $_ > -1 && $_ <= 100 };


declare RecipeObject =>
  as InstanceOf['App::vaporcalc::Recipe'];

declare ResultObject =>
  as InstanceOf['App::vaporcalc::Result'];


1;
