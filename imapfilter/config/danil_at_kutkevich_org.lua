-- -*- coding: utf-8-unix; -*-
function filtering_danil_at_kutkevich_org(mail_account)
  -- -- fruux.com annoying messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("cloud@fruux.com") * mailbox:contain_subject("No events") results:move_messages(mail_account._trash)
  -- -- Arch Linux Saint Petersburg users group messages filtering -- -- <http://groups.google.com/group/spb-archlinux>. -- local mailbox = mail_account._new local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "spb-archlinux.googlegroups.com") * mailbox:contain_field("list-post", "<spb-archlinux.googlegroups.com>") results:move_messages(mail_account.Lists)
  -- -- Bazaar russion users group mailing list messages filtering -- -- <http://groups.google.com/group/ru_bz> -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "ru_bzr.googlegroups.com") * mailbox:contain_field("list-post", "<ru_bzr.googlegroups.com>") results:move_messages(mail_account.Lists)
  -- -- django-russian.googlegroups.com group list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "django-russian.googlegroups.com") results:move_messages(mail_account.DjangoRussianList)
  -- -- erlang-russian.googlegroups.com group mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "erlang-russian.googlegroups.com") results:move_messages(mail_account.ErlangRussianList)
  -- -- spbhug.googlegroups.com mailing list messages filtering -- local results = mailbox:is_unseen() * results:move_messages(mail_account.Lists)
  -- -- emacs-on-rails.googlegroups.com mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "emacs-on-rails.googlegroups.com") results:move_messages(mail_account.EmacsCommunity)
  -- -- spblinux.googlegroups.com mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "spblinux.googlegroups.com") results:move_messages(mail_account.SpbLinuxList)
  -- -- stumpwm-devel.nongnu.org mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "stumpwm-devel.nongnu.org") results:move_messages(mail_account.StumpwmList)
  -- -- Awesome WM users group mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "awesome.naquadah.org") results:move_messages(mail_account.AwesomeList)
  -- -- Awesome WM developers group mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "awesome-devel.naquadah.org") results:move_messages(mail_account.AwesomeDevelList)
  -- -- thinking-sphinx.googlegroups.com mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Id", "thinking-sphinx.googlegroups.com") results:move_messages(mail_account.Lists)
  -- -- Sailfish OS feeds messages filtering -- -- FIXME: regex are very slow!!! -- local results = mailbox:is_unseen() * mailbox:match_from("(^|,)[[:space:]]*\"?Jolla[[:space:]]+Users[[:space:]]+Blog\"?[[:space:]]*<") results:move_messages(mail_account.SailfishosFeeds)
  -- -- healthintersections.com.au messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("List-Subscribe", "http://www.healthintersections.com.au") results:move_messages(mail_account.FhirPlanet)
  -- -- drone.io "success" notifications messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("builds@drone.io") * mailbox:contain_subject("[SUCCESS]") results:move_messages(mail_account._trash)
  -- -- Gentoo russian group mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("list-id", "gentoo-user-ru.gentoo.org") results:move_messages(mail_account.GentooCommunity)
  -- -- humblebundle.com news messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("contact@humblebundle.com") results:move_messages(mail_account.HumblebundleList)
  -- -- journal.tinkoff.ru notification messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("journal@tinkoff.ru") results:move_messages(mail_account.TinkoffList)
  -- -- ink361.com notification messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("newsletter@ink361.com") results:move_messages(mail_account.Ink361Feed)
  -- -- -- FIXME: cyrillic not working!!! -- -- auto.ru notification messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("noreply@auto.ru") * mailbox:contain_subject("Найдены новые объявления") results:move_messages(mail_account.AutoRuFeed)
  -- -- velodrive.ru messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("info@velodrive.ru") * mailbox:contain_field("list-id", "3c63feb6") * mailbox:contain_field("Content-Type", "multipart/alternative") results:move_messages(mail_account.Velodrive)
  -- -- ivi.ru messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("promo@em.ivi.ru") * mailbox:contain_field("Content-Type", "multipart/alternative") results:move_messages(mail_account.Iviru)
  -- -- techtarget.com spam messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("NoteBookReview@lists.techtarget.com") results:move_messages(mail_account._trash)
  -- -- bongacams.com spam messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("newsletter@bongacams.com") results:move_messages(mail_account._trash)
  -- -- sazhi.net annoying messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_to("postmaster@sazhi.net") * (mailbox:contain_field("Content-Type", "application/zip") + mailbox:contain_field("Content-Type", "application/vnd.ms-word.document.macroEnabled.12") + mailbox:contain_field("X-Attached", ".docm") + mailbox:contain_field("X-Attached", ".xls") + mailbox:contain_field("X-Attached", ".zip")) results:move_messages(mail_account._trash)
  -- -- Molinos messages filtering -- local results = mailbox:is_unseen() * (mailbox:contain_to("news@lists.molinos.ru") + mailbox:contain_cc("news@lists.molinos.ru") + mailbox:contain_bcc("news@lists.molinos.ru") + mailbox:contain_field("resent-to", "news@lists.molinos.ru") + mailbox:contain_field("x-delivered-to", "news@lists.molinos.ru")) results:move_messages(mail_account.Molinos)
  -- -- Waveaccess fhirbase.googlegroups.com mailing list messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("list-id", "fhirbase.googlegroups.com") results:move_messages(mail_account.FhirbaseList)
  -- -- Waveaccess fhir.org notification messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("chat-noreply@fhir.org") results:move_messages(mail_account.FhirZulip)
  -- -- Waveaccess medapp ci notifications messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_field("list-id", "medappsupport.hospital-systems.com") * (mailbox:contain_field("X-Redmine-Sender", "danil") + mailbox:contain_subject("(Ready for Deploy)") + mailbox:contain_subject("(Done)")) results:move_messages(mail_account._trash)
  -- -- armor5games annoying messages filtering -- local results = mailbox:is_unseen() * messages_to_armor5games(mailbox) * (mailbox:contain_from("unity3d.com") + mailbox:contain_from("noreply@gameanalytics.com") + (mailbox:contain_from("support@bugsnag.com") * mailbox:contain_subject("Some events are being dropped due to sampling"))) results:move_messages(mail_account._trash)
  -- -- armor5games important messages filtering -- local results = mailbox:is_unseen() * messages_to_armor5games(mailbox) * (mailbox:contain_from("notifications@bugsnag.com") + mailbox:contain_from("billing@hetzner.com") + mailbox:contain_from("support@hetzner.com")) results:move_messages(mail_account.INBOX)
  -- -- armor5games cyrillic messages filtering -- local results = mailbox:is_unseen() * messages_to_armor5games(mailbox) * mailbox:contain_body("hh.ru") results:move_messages(mail_account._trash) -- FIXME: cyrillic not working!!! -- (mailbox:contain_body("здравствуйте") + -- mailbox:contain_body("уважением") + -- mailbox:contain_body("резюме") + -- mailbox:contain_body("портфолио"))
  -- -- armor5games trello messages filtering -- local results = mailbox:is_unseen() * mailbox:contain_from("do-not-reply@trello.com") * mailbox:contain_subject("on Rise of Pirates") results:move_messages(mail_account.ErArmor5games)
  -- -- armor5games messages filtering -- local results = mailbox:is_unseen() * messages_to_armor5games(mailbox) results:move_messages(mail_account.ErArmor5games)

  -- -- test messages filtering
  -- local mailbox = mail_account._new
  -- local results = mailbox:is_unseen() *
  --   mailbox:contain_subject("test") *
  --   mailbox:contain_body("Test 20180503Z")
  -- results:move_messages(mail_account._test)

  -- kutkevich.org hosts messages filtering
  local mailbox = mail_account._new
  local results0 = mailbox:is_unseen() * mailbox:contain_from("kutkevich.org")
  if table.getn(results0) > 0 then
    -- h2 cron notification messages filtering
    local results = results0:contain_from("h2.kutkevich.org")
    if table.getn(results) > 0 then
      results = results:contain_subject("/usr/sbin/run-crons") *
        (mailbox:contain_body("q: Updating ebuild cache in /usr/portage") +
         mailbox:contain_body("remote: Create pull request for") +
         mailbox:contain_body("remote: To create a merge request for"))
      results:move_messages(mail_account.KutOrgH2)
    end
    -- h10 cron notification messages filtering
    local results = results0:contain_from("h10.kutkevich.org")
    if table.getn(results) > 0 then
      results = results:contain_subject("Anacron job 'cron.daily'")
      results:move_messages(mail_account.KutOrgH10)
    end
  end

  -- armor5games.org hosts messages filtering
  local mailbox = mail_account._new
  local results0 = mailbox:is_unseen() * mailbox:contain_from("armor5games.com")
  if table.getn(results0) > 0 then
    -- ah9 host messages filtering
    local results1 = results0:contain_from("ah9.armor5games.com")
    if table.getn(results1) > 0 then
      -- ah9 netdata annoying notification messages filtering
      local results = results1:contain_from("netdata@ah9.armor5games.com")
      if table.getn(results) > 0 then
        results = results:contain_subject("recovered - last collected secs - web_log_nginx")
        results:move_messages(mail_account.ErA5gComAh9)
      end
      local results = results1:contain_subject("/usr/sbin/anacron")
      if table.getn(results) > 0 then
        results = results:contain_body("run-parts: /etc/cron.monthly/ieee-data exited with return code 1") +
          (mailbox:contain_body("exim4-base") +
             mailbox:contain_body("WARNING: purging the environment"))
        results:move_messages(mail_account.ErA5gComAh9)
      end
    end
  end

  -- bh1 cron notification messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("bh1.armor5games.com") *
    mailbox:contain_subject("/usr/sbin/anacron") *
    (mailbox:contain_body("run-parts: /etc/cron.monthly/ieee-data exited with return code 1") +
       (mailbox:contain_body("exim4-base") +
          mailbox:contain_body("WARNING: purging the environment")))
  results:move_messages(mail_account.ErA5gComBh1)

  -- bh1 netdata annoying notification messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("netdata@bh1.armor5games.com") *
    mailbox:contain_subject("recovered - last collected secs - web_log_nginx")
  results:move_messages(mail_account.ErA5gComBh1)

  -- fail2ban (now on the h2) notifications messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_subject("[Fail2Ban]")
  results:move_messages(mail_account.Fail2Ban)

  -- netdata "success" notifications messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("netdata") *
    mailbox:contain_subject("recovered")
  results:move_messages(mail_account._trash)

  -- twitter emacs related annoying messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    (mailbox:contain_subject(" @emacs ") +
       mailbox:contain_subject(" @emacs_knight ")) *
    (mailbox:contain_body("cider") +
       mailbox:contain_body("clojure") +
       mailbox:contain_body("company") +
       mailbox:contain_body("emacs news"))
  results:move_messages(mail_account._trash)

  -- twitter @andreysitnik annoying messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    mailbox:contain_subject(" @andreysitnik ") *
    (mailbox:contain_body("RT @") +
       mailbox:contain_body("autoprefixer") +
       mailbox:contain_body("baikonur") +
       mailbox:contain_body("batman") +
       mailbox:contain_body("communist") +
       mailbox:contain_body("css") +
       mailbox:contain_body("cyberpunk") +
       mailbox:contain_body("eslint") +
       mailbox:contain_body("food") +
       mailbox:contain_body("front") +
       mailbox:contain_body("game") +
       mailbox:contain_body("iran") +
       mailbox:contain_body("javascript") +
       mailbox:contain_body("js") +
       mailbox:contain_body("logux") +
       mailbox:contain_body("muslim") +
       mailbox:contain_body("nasa") +
       mailbox:contain_body("nkvd") +
       mailbox:contain_body("npm") +
       mailbox:contain_body("postcss") +
       mailbox:contain_body("posthtml") +
       mailbox:contain_body("redux") +
       mailbox:contain_body("restaurant") +
       mailbox:contain_body("rule") +
       mailbox:contain_body("science") +
       mailbox:contain_body("ship") +
       mailbox:contain_body("sikh") +
       mailbox:contain_body("smartwatch") +
       mailbox:contain_body("societ") +
       mailbox:contain_body("soviet") +
       mailbox:contain_body("space") +
       mailbox:contain_body("station") +
       mailbox:contain_body("style") +
       mailbox:contain_body("superman") +
       mailbox:contain_body("ussr") +
       mailbox:contain_body("vladisvostok") +
       mailbox:contain_body("webpack"))
  results:move_messages(mail_account._trash)

  -- twitter @somebody32 annoying messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    mailbox:contain_subject(" @somebody32 ") *
    (mailbox:contain_body("javascript") +
       mailbox:contain_body("react"))
  results:move_messages(mail_account._trash)

  -- twitter golang related annoying retwitts messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    (mailbox:contain_subject(" @golang ") +
       mailbox:contain_subject(" @rob_pike ")) *
    mailbox:contain_body("RT @")
  results:move_messages(mail_account._trash)

  -- twitter minor messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    (mailbox:contain_subject(" @emacs ") +
       mailbox:contain_subject(" @emacs_knight ") +
       mailbox:contain_subject(" @rubynoname ") +
       mailbox:contain_subject(" @andreysitnik ") +
       mailbox:contain_subject(" @lostinwiki ") +
       mailbox:contain_subject(" @somebody32 "))
  results:move_messages(mail_account.Twitter2)

  -- twitter important messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]")
  results:move_messages(mail_account.Twitter)

  -- luadns.com messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("contact@luadns.com") *
    mailbox:contain_subject("[LuaDNS]: Build completed")
  results:move_messages(mail_account.Luadns)

  -- noreply@youtube.com messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("noreply@youtube.com")
  results:move_messages(mail_account.YoutubeFeeds)

  -- notifications@disqus.net messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("notifications@disqus.net")
  results:move_messages(mail_account.DisqusFeeds)

  -- Go russian users group mailing list filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "golang-ru.googlegroups.com")
  results:move_messages(mail_account.GolangRuList)

  -- Rust russian users group mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "rust-russian.googlegroups.com")
  results:move_messages(mail_account.RustRussianList)

  -- forum.rustycrate.ru mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "forum.rustycrate.ru")
  results:move_messages(mail_account.RustyCrateRuList)

  -- ror2ru mailing list filtering
  -- https://groups.google.com/forum/#!forum/ror2ru
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "ror2ru.googlegroups.com")
  results:move_messages(mail_account.Ror2ruList)

  -- diamondcard.us notification messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("support@diamondcard.us")
  results:move_messages(mail_account.Lists)

  -- FSF users group mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    (mailbox:contain_field("List-Id", "info-member.gnu.org") +
       mailbox:contain_from("info@defectivebydesign.org") +
       mailbox:contain_from("rms-assist@gnu")+
       mailbox:contain_from("sales@fsf.org"))
  results:move_messages(mail_account.FsfLists)

  -- Exim users group mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "exim-users.mailground.net")
  results:move_messages(mail_account.EximLists)

  -- pgsql-ru-general.postgresql.org mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "pgsql-ru-general.postgresql.org")
  results:move_messages(mail_account.Lists)

  -- Succless developers group mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "dev.suckless.org")
  results:move_messages(mail_account.SucklessDevList)

  -- Jolla users group messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("no-reply@jolla.com") *
    mailbox:contain_subject("together.jolla.com")
  results:move_messages(mail_account.JollaCommunity)

  -- Sailfish OS developers group mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "devel.lists.sailfishos.org")
  results:move_messages(mail_account.SailfishosList)

  -- Travis CI "success" notifications messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("builds@travis-ci.org") *
    (mailbox:contain_subject("Passed: ") +
       mailbox:contain_subject("Fixed: "))
  results:move_messages(mail_account._trash)

  -- Gentoo users group mailing list messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "gentoo-user.gentoo.org")
  results:move_messages(mail_account.GentooUsers)

  -- jamendo.com "new music" notifications messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("no-reply@jamendo.com") *
    mailbox:contain_subject("new music")
  results:move_messages(mail_account.Jamendo)

  -- webzilla.com annoying notifications messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("no-reply@webzilla.com") *
    mailbox:contain_subject("Webzilla - Invoice") *
    mailbox:contain_subject("is paid") *
    mailbox:contain_body("Total due: EUR 0.00")
  results:move_messages(mail_account._trash)

  -- redfoxoutdoor.com annoying messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("red fox") *
    mailbox:contain_from("planetasport@retailrocket.net") *
    mailbox:contain_field("Reply-To", "info@planeta-sport.ru")
  results:move_messages(mail_account.Redfox)

  -- Waveaccess hl7/holiadvice notifications messages filtering
  local mailbox = mail_account._new
  local results = mailbox:is_unseen() *
    mailbox:contain_from("notifier@mail.rollbar.com") *
    (mailbox:contain_subject("holiadvice") +
       mailbox:contain_subject("[hl7rus]"))
  results:move_messages(mail_account._trash)

  -- unfiltered messages
  local mailbox = mail_account._new
  local results = mailbox:is_unseen()
  results:move_messages(mail_account.INBOX)
end

-- function messages_to_armor5games(mailbox)
--   return ((mailbox:contain_to("armor5games@gmail.com") +
--              mailbox:contain_cc("armor5games@gmail.com") +
--              mailbox:contain_bcc("armor5games@gmail.com")) +
--       (mailbox:contain_to("admin@armor5games.com") +
--          mailbox:contain_cc("admin@armor5games.com") +
--          mailbox:contain_bcc("admin@armor5games.com")))
-- end

-- function messages_from_armor5games_hosts(mailbox)
--   return (mailbox:contain_from("ah3.armor5games.com") +
--             mailbox:contain_from("ah5.armor5games.com") +
--             mailbox:contain_from("ah7.armor5games.com") +
--             mailbox:contain_from("ah9.armor5games.com") +
--             mailbox:contain_from("ah10.armor5games.com") +
--             mailbox:contain_from("bh1.armor5games.com"))
-- end
