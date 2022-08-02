if command -v curl > /dev/null; then
    curl -sL "https://github.com/madhavanmalolan/N/blob/master/n?raw=true" > /tmp/n
elif command -v wget > /dev/null; then
    wget "https://github.com/madhavanmalolan/N/blob/master/n?raw=true" -O /tmp/n
fi

if [ -f /tmp/n ]; then
    chmod 700 /tmp/n
    cp /tmp/n /usr/local/sbin/
else
    exit 1
fi
