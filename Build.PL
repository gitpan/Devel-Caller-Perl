# $Id: Build.PL,v 1.1 2003/03/28 18:29:51 cwest Exp $
use strict;

use Module::Build;

Module::Build->new(
	module_name => 'Devel::Caller::Perl',
	license     => 'perl',
	build_requires => {
		'Test::More'                 => 0,
		'Module::Build'              => 0,
	},
)->create_build_script;
