# $Id: Build.PL,v 1.2 2003/03/28 19:22:07 cwest Exp $
use strict;

use Module::Build;

Module::Build->new(
	module_name => 'Devel::Caller::Perl',
	license     => 'perl',
	require     => {
		'Exporter::Lite' => 0,
	},
	build_requires => {
		'Test::More'                 => 0,
		'Module::Build'              => 0,
	},
)->create_build_script;
