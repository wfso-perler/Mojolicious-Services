use 5.010001;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME               => 'Mojolicious::ServiceManage',
  AUTHOR             => q{wfso <461663376@qq.com>},
  VERSION_FROM       => 'lib/Mojolicious/ServiceManage.pm',
  ABSTRACT_FROM      => 'lib/Mojolicious/ServiceManage.pm',
  LICENSE            => 'mit',
  META_MERGE         => {
    dynamic_config => 0,
    'meta-spec'    => {version => 2},
    prereqs        => {runtime => {requires => {perl => '5.010001'}}},
    resources      => {
      bugtracker => {web => 'https://github.com/wfso/Mojolicious-ServiceManage/issues'},
      homepage   => 'http://mojolicious.org',
      license    => ['https://opensource.org/licenses/MIT'],
      repository => {
        type => 'git',
        url  => 'https://github.com/wfso/Mojolicious-ServiceManage.git',
        web  => 'https://github.com/wfso/Mojolicious-ServiceManage',
      }
    },
  },
  PL_FILES           => {},
  MIN_PERL_VERSION   => '5.010001',
  CONFIGURE_REQUIRES => {
    'ExtUtils::MakeMaker' => '0',
  },
  BUILD_REQUIRES     => {
    'Test::More' => '0',
  },
  PREREQ_PM          => {
    Mojolicious => '7.84'
  },
  dist               => {COMPRESS => 'gzip -9f', SUFFIX => 'gz',},
  clean              => {FILES => 'Mojolicious-ServiceManage-*'},
);
