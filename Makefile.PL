use strict;
use warnings;
use ExtUtils::MakeMaker;

my $makemakerversion = $ExtUtils::MakeMaker::VERSION;
$makemakerversion =~s/_//g;

WriteMakefile(
    NAME                => 'Config::Writer',
    AUTHOR              => 'Volodymyr Pidgornyi <vp@dtel-ix.net>',
    VERSION_FROM        => 'lib/Config/Writer.pm',
    ABSTRACT_FROM       => 'lib/Config/Writer.pm',
    META_MERGE => {
        'meta-spec' => { version => 2 },
         resources => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/kornix/perl-Config-Writer.git',
                 web  => 'https://github.com/kornix/perl-Config-Writer',
             },
         },
    },
    ($makemakerversion >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Config-Writer-*' },
);
