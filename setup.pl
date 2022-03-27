#!/usr/bin/perl

my $home = $ENV{HOME};

# Thanks internet
# https://stackoverflow.com/a/18104317
sub prompt {
  my ($query) = @_; # take a prompt string as argument
  local $| = 1; # activate autoflush to immediately show the prompt
  print $query;
  chomp(my $answer = <STDIN>);
  return $answer;
}

sub prompt_yn {
  my ($query) = @_;
  my $answer = prompt("$query (Y/N): ");
  return lc($answer) eq 'y';
}

sub    bash_rc {
  if (-e "$home/.bashrc") {
    print 'Looks like a ~/.bashrc file already exists';
    print "\n";
    my $overwrite_bash_rc = prompt_yn 'Wanna overwrite it?';

    if ($overwrite_bash_rc) {
      print 'Overwriting .bashrc ...';
    print "\n";

    } else {
      print 'Skipping .bashrc setup';
      print "\n";
    }
  } else {
    print '~/.bashrc doesn\'t exist, creating one ...';
    print "\n";
  }
}

sub rust {
  if (-e "$home/.cargo/bin/cargo") {
    print "Rust is already installed, great!";
    print "\n";
  } else {
    print 'Installing Rust!';
    print "\n";
    # `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
  }
}

bash_rc;
rust;

print "\n";
