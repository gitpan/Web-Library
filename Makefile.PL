use strict;
use warnings;
use ExtUtils::MakeMaker 6.58;
my $name = 'Web-Library';
(my $from = "lib/$name.pm") =~ y!-!/!;
WriteMakefile(
    ABSTRACT_FROM      => $from,
    AUTHOR             => 'Marcel Gruenauer <marcel@cpan.org>',
    BUILD_REQUIRES     => { 'Test::More' => '0.94' },
    CONFIGURE_REQUIRES => { 'ExtUtils::MakeMaker' => '6.58' },
    LICENSE            => 'perl',
    META_MERGE         => {
        resources => {
            bugtracker => "https://github.com/marcelgruenauer/$name/issues",
            repository => "git://github.com/marcelgruenauer/$name.git",
            homepage   => "https://github.com/marcelgruenauer/$name",
        },
    },
    MIN_PERL_VERSION => '5.14.0',
    NAME             => $name,
    PREREQ_PM        => {
        'File::Spec'        => '0',
        'File::ShareDir'    => '0',
        'Cwd'               => '0',
        'Moose'             => '0',
        'MooseX::Singleton' => '0',
        'Class::Load'       => '0',
        'Params::Validate'  => '0',
    },
    VERSION_FROM => $from,
    test         => { TESTS => 't/*.t' }
);
