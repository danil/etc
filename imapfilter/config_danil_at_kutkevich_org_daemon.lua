-- https://github.com/lefcha/imapfilter/blob/master/samples/extend.lua
package.path = package.path .. ";/etc/imapfilter/?.lua"
require "config/options"
require "config/credentials"
require "config/danil_at_kutkevich_org"

-- IMAPFilter can be detached from the controlling terminal and run in
-- the background as a system daemon.
--
-- Waits for a notification by the server when new messages arrive in
-- the monitored using the IMAP IDLE extension.
while true do
  local mailbox = danil_at_kutkevich_org._new
  mailbox:enter_idle()
  filtering_danil_at_kutkevich_org(danil_at_kutkevich_org)
end
