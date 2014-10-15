use base "gnomestep";
use bmwqemu;

sub is_applicable() {
    my $self = shift;
    return $self->SUPER::is_applicable && !$vars{LIVECD};
}

sub run() {
    my $self = shift;
    x11_start_program("gnome-music");
    assert_screen 'test-gnome-music-1', 3;
    send_key "alt-f4", 1;
}

1;
# vim: set sw=4 et: