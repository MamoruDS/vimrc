if ! [ $(uname -m) = 'x86_64' ]; then
  echo 'Error: This script only supports x86_64' >&2
  exit 1
fi

if ! [ -x "$(command -v curl)" ]; then
  echo 'Error: curl is not installed' >&2
  exit 1
fi

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz \
    && tar -zxf nvim-linux64.tar.gz \
    && rm -rf nvim-linux64/share/man \
    && cp -r nvim-linux64/* /usr/local/

rm -rf nvim-linux64.tar.gz nvim-linux64 &> /dev/null
