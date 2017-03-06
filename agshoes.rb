require 'formula'

class Agshoes < Formula
  homepage 'https://github.com/josephholsten/agshoes'
  head "#{homepage}.git"
  url "#{homepage}/archive/v#{version}.tar.gz"
  version '0.1.0'
  sha256 'e22e4d44a18ea22ab05c1d4a1648fe3adacd27b09005fcc3b4cef408b2b5c0e7'

  depends_on 'nixpp'

  # agshoes dependencies
  - coreutils    # gnu tooling, almost entirely for realpath
  - mackup       # dotfile management
  - offline-imap # mail sync
  - vdirsyncer   # card/cal sync
  - xz           # improved compress/gzip
  #  base tools
  - ctags                # osx ships with bsd, use exhuberant
  - exiftool             # image metadata tool
  - fswatch              # file change events
  - fzf                  # fuzzy finder
  - jq                   # json maniplation
  - pass                 # password store
  - path-extractor       # path extractor
  - ssh-copy-id          # osx ssh is missing it
  - the_silver_searcher  # improved grep
  - watch                # improved while true do; done;
  - z                    # improved cd
  # - jo                   # json output
  # - khal                 # vcal client
  # - khard                # vcard client
  # - ledger               # accounting
  # - lynx                 # html to text
  # - mutt                 # mail client
  # - oath-toolkit         # otp generator
  # - remind               # reminders
  # - speedread
  # - task                 # taskwarrior
  # - urlview              # extract urls from emails

- name: completions
  homebrew:
    name: "{{item}}"
  with_items:
  - bash-completion
  - brew-cask-completion
  - open-completion

- name: base
  homebrew_cask:
    name: "{{item}}"
  with_items:
  - 1password    # password safe
  - dropbox      # file sync
  - firefox      # improved browser
  - flux         # easy on the eyes
  - font-hasklig # ligature font, in caskroom/fonts
  - gpgtools     # mail.app + gpg encryption
  - iterm2       # terminal
  # - arq          # backups
  # - gemini       # dedupe
  # - osxfuse      # virtual filesystems
  # - quicksilver  # launcher
  # - torbrowser   # anon browser

# - gem: name={{ item }}
#   with_items:
#   - maid # file processing

# - npm: name={{ item }} global=yes
#   with_items:
#   - wunderline # wunderlist cli

#- pip: name={{ item }} executable=/usr/local/bin/pip3.5
# with_items:
  # - habitica # habitica cli
  # - urlscan  # extract urls from emails

  def install
    prefix.install Dir['*']
  end
end

