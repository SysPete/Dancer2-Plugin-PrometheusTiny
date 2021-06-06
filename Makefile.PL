use ExtUtils::MakeMaker;
( do './maint/Makefile.PL.include' or die $@ ) unless -f 'META.yml';
WriteMakefile(
    NAME             => "Dancer2::Plugin::PrometheusTiny",
    ABSTRACT         => "Prometheus metrics for Dancer2",
    AUTHOR           => q{Peter Mottram (SysPete) <peter@sysnix.com>},
    VERSION_FROM     => 'lib/Dancer2/Plugin/PrometheusTiny.pm',
    MIN_PERL_VERSION => 5.010001,
    TEST_REQUIRES    => {
        'HTTP::Request::Common' => 0,
        'Plack'                 => '1.0029',
        'Scalar::Util'          => 0,
        'Test::Deep'            => 0,
        'Test::More'            => 0,
    },
    PREREQ_PM => {
        'Carp'                     => 0,
        'Prometheus::Tiny'         => '0.006',
        'Prometheus::Tiny::Shared' => '0.021',
    },
);
