#!/bin/sh

create() {
    # print hashbang, followed by printf of just the start of color, then pass all
    # the args to cat, then print color end, using printf instead, of echo since
    # its more consistent and portable between operating systems and shells
    printf "#!/bin/sh\nprintf '%s'\ncat \"\$@\"\nprintf '%s'\n" "$1" '\033[0m' >"$2"
    chmod +x "$2"
}

create '\033[34m' cat-blue
create '\033[36m' cat-cyan
create '\033[32m' cat-green
create '\033[35m' cat-magenta
create '\033[31m' cat-red
create '\033[33m' cat-yellow

for cmd in ./cat-*; do
    echo "$cmd" | "$cmd"
done
