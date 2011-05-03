# Build.PL for Perl::Critic::Policy::logicLAB::RequireSheBang

# $Id: Build.PL 7636 2011-05-01 15:24:04Z jonasbn $

use strict;
use Module::Build;

my $build = Module::Build->new(
    dist_author          => 'Jonas B. Nielsen, <jonasbn@cpan.org>',
    module_name          => 'Perl::Critic::Policy::logicLAB::RequireSheBang',
    license              => 'artistic',
    recursive_test_files => 0,
    create_makefile_pl   => 'traditional',
    create_readme        => 1,
    dist_abstract        => q[simple policy asserting she bang line],
    requires => {
        'Perl::Critic'        => '0',
        'Perl::Critic::Utils' => '0',
        'Readonly'            => '0',
        'Test::More'          => '0',
        'Test::Perl::Critic'  => '0',
        'List::MoreUtils'     => '0',
    },
    meta_merge => {
        resources => {
            homepage => 'http://logiclab.jira.com/wiki/display/PCPLRSB/Home',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Perl-Critic-logicLAB-Require-SheBang',
            repository => 'http://logicLAB.jira.com/svn/PCPLRSB',
            ProjectChangelog =>
                'http://logiclab.jira.com/browse/PCPLRSB#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel',
            ProjectSite => 'http://logicLAB.jira.com/browse/PCPLRSB',
            ProjectWiki => 'http://logiclab.jira.com/wiki/display/PCPLRSB/Home',
        }
    },
);

$build->create_build_script();

1;