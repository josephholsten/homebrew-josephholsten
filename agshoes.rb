require 'formula'

class Agshoes < Formula
  homepage 'https://github.com/josephholsten/agshoes'
  version '1.0.0'
  sha256 '30d777c8d38c55dff1e477f49195fff923524f4c55dfb83e0a2175a89f536fee'

  head "#{homepage}.git"
  url "#{homepage}/archive/v#{version}.tar.gz"

  depends_on 'nixpp'
  # agshoes dependencies
  depends_on 'coreutils'    # gnu tooling, almost entirely for realpath
  depends_on 'mackup'       # dotfile management
  depends_on 'offline-imap' # mail sync
  depends_on 'vdirsyncer'   # card/cal sync
  depends_on 'xz'           # improved compress/gzip
  #  base tools
  depends_on 'ctags'                # osx ships with bsd, use exhuberant
  depends_on 'exiftool'             # image metadata tool
  depends_on 'fswatch'              # file change events
  depends_on 'fzf'                  # fuzzy finder
  depends_on 'jq'                   # json maniplation
  depends_on 'pass'                 # password store
  depends_on 'path-extractor'       # path extractor
  depends_on 'ssh-copy-id'          # osx ssh is missing it
  depends_on 'the_silver_searcher'  # improved grep
  depends_on 'watch'                # improved while true do; done;
  depends_on 'z'                    # improved cd
  # clients
  depends_on 'khal'                 # vcal client
  depends_on 'khard'                # vcard client
  depends_on 'mutt'                 # mail client
  depends_on 'urlview'              # extract urls from emails
  # - jo                   # json output
  # - ledger               # accounting
  # - lynx                 # html to text
  # - oath-toolkit         # otp generator
  # - remind               # reminders
  # - speedread
  # - task                 # taskwarrior
  depends_on 'bash-completion'
  depends_on 'brew-cask-completion'
  depends_on 'open-completion'

  # depends_on cask: '1password'    # password safe
  # depends_on cask: 'dropbox'      # file sync
  # depends_on cask: 'firefox'      # improved browser
  # depends_on cask: 'flux'         # easy on the eyes
  # depends_on cask: 'font-hasklig' # ligature font, in caskroom/fonts
  # depends_on cask: 'gpgtools'     # mail.app + gpg encryption
  # depends_on cask: 'iterm2'       # terminal
  # depends_on cask: 'arq'          # backups
  # depends_on cask: 'gemini'       # dedupe
  # depends_on cask: 'osxfuse'      # virtual filesystems
  # depends_on cask: 'quicksilver'  # launcher
  # depends_on cask: 'torbrowser'   # anon browser

  def install
    prefix.install Dir['*']
  end
end

