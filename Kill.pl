#!/usr/bin/perl

use strict;
use warnings; 
use Proc::ProcessTable;
my $table=Proc::ProcessTable->new;
for my $process(@{$table->table})
{  next if $process->uid==0 or $process->gid==0;
   next if $process->rss <1_073_741_824;
   (my $cmd=$process->cmndline)=~ s/\s+z//;
    print "killing Process: pid= ",process->pid, "uid= ", $process->uid, "rss= ", $process->rss, "fname= ", $process->fname, " cmndline=",$cmd, "\n";
    kill 15, $rocess->pid;
sleep 5;
kill 9,$process->pid;


}


