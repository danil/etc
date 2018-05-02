-- -*- coding: utf-8-unix; -*-
function filtering_danil_at_kutkevich_org()
  -- h2 cron notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("h2.kutkevich.org") *
    mailbox:contain_subject("/usr/sbin/run-crons") *
    (mailbox:contain_body("q: Updating ebuild cache in /usr/portage") +
     mailbox:contain_body("remote: Create pull request for") +
     mailbox:contain_body("remote: To create a merge request for"))
  mailbox:move_messages(danil_at_kutkevich_org.kut_org_h2, result)

  -- h10 cron notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("h10.kutkevich.org") *
    mailbox:contain_subject("Anacron job 'cron.daily'")
  mailbox:move_messages(danil_at_kutkevich_org.kut_org_h10, result)

  -- ah9 cron notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("ah9.armor5games.com") *
    mailbox:contain_subject("/usr/sbin/anacron") *
    (mailbox:contain_body("run-parts: /etc/cron.monthly/ieee-data exited with return code 1") +
       (mailbox:contain_body("exim4-base") +
          mailbox:contain_body("WARNING: purging the environment")))
  mailbox:move_messages(danil_at_kutkevich_org.a5g_com_ah9, result)

  -- ah9 netdata annoying notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("netdata@ah9.armor5games.com") *
    mailbox:contain_subject("recovered - last collected secs - web_log_nginx")
  mailbox:move_messages(danil_at_kutkevich_org.a5g_com_ah9, result)

  -- bh1 cron notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("bh1.armor5games.com") *
    mailbox:contain_subject("/usr/sbin/anacron") *
    (mailbox:contain_body("run-parts: /etc/cron.monthly/ieee-data exited with return code 1") +
       (mailbox:contain_body("exim4-base") +
          mailbox:contain_body("WARNING: purging the environment")))
  mailbox:move_messages(danil_at_kutkevich_org.a5g_com_bh1, result)

  -- bh1 netdata annoying notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("netdata@bh1.armor5games.com") *
    mailbox:contain_subject("recovered - last collected secs - web_log_nginx")
  mailbox:move_messages(danil_at_kutkevich_org.a5g_com_bh1, result)

  -- fail2ban (now on the h2) notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_subject("[Fail2Ban]")
  mailbox:move_messages(danil_at_kutkevich_org.fail2ban, result)

  -- netdata "success" notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("netdata") *
    mailbox:contain_subject("recovered")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- twitter emacs related annoying messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    (mailbox:contain_subject(" @emacs ") +
       mailbox:contain_subject(" @emacs_knight ")) *
    (mailbox:contain_body("cider") +
       mailbox:contain_body("clojure") +
       mailbox:contain_body("company") +
       mailbox:contain_body("emacs news"))
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- twitter @andreysitnik annoying messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
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
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- twitter @somebody32 annoying messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    mailbox:contain_subject(" @somebody32 ") *
    (mailbox:contain_body("javascript") +
       mailbox:contain_body("react"))
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- twitter golang related annoying retwitts messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    (mailbox:contain_subject(" @golang ") +
       mailbox:contain_subject(" @rob_pike ")) *
    mailbox:contain_body("RT @")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- twitter minor messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]") *
    (mailbox:contain_subject(" @emacs ") +
       mailbox:contain_subject(" @emacs_knight ") +
       mailbox:contain_subject(" @rubynoname ") +
       mailbox:contain_subject(" @andreysitnik ") +
       mailbox:contain_subject(" @lostinwiki ") +
       mailbox:contain_subject(" @somebody32 "))
  mailbox:move_messages(danil_at_kutkevich_org.twitter2, result)

  -- twitter important messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("noreply@kutkevich.org") *
    mailbox:contain_subject("[twitter]")
  mailbox:move_messages(danil_at_kutkevich_org.twitter, result)

  -- luadns.com messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("contact@luadns.com") *
    mailbox:contain_subject("[LuaDNS]: Build completed")
  mailbox:move_messages(danil_at_kutkevich_org.luadns, result)

  -- -- fruux.com annoying messages filtering
  -- local mailbox = danil_at_kutkevich_org.INBOX
  -- local result = mailbox:is_unseen() *
  --   mailbox:contain_from("cloud@fruux.com") *
  --   mailbox:contain_subject("No events")
  -- mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- noreply@youtube.com messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("noreply@youtube.com")
  mailbox:move_messages(danil_at_kutkevich_org.youtube_feeds, result)

  -- notifications@disqus.net messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("notifications@disqus.net")
  mailbox:move_messages(danil_at_kutkevich_org.disqus_feeds, result)

  -- Go russian users group mailing list filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "golang-ru.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.golang_ru_list, result)

  -- Rust russian users group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "rust-russian.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.rust_russian_list, result)

  -- forum.rustycrate.ru mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "forum.rustycrate.ru")
  mailbox:move_messages(danil_at_kutkevich_org.rustycrate_ru_list, result)

  -- ror2ru mailing list filtering
  -- https://groups.google.com/forum/#!forum/ror2ru
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "ror2ru.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.list_ror2ru, result)

  -- Arch Linux Saint Petersburg users group messages filtering
  -- <http://groups.google.com/group/spb-archlinux>.
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "spb-archlinux.googlegroups.com") *
    mailbox:contain_field("list-post", "<spb-archlinux.googlegroups.com>")
  mailbox:move_messages(danil_at_kutkevich_org.lists, result)

  -- Bazaar russion users group mailing list messages filtering
  -- <http://groups.google.com/group/ru_bz>
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "ru_bzr.googlegroups.com") *
    mailbox:contain_field("list-post", "<ru_bzr.googlegroups.com>")
  mailbox:move_messages(danil_at_kutkevich_org.lists, result)

  -- django-russian.googlegroups.com group list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "django-russian.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.django_russian_list, result)

  -- erlang-russian.googlegroups.com group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "erlang-russian.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.erlang_russian_list, result)

  -- diamondcard.us notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("support@diamondcard.us")
  mailbox:move_messages(danil_at_kutkevich_org.lists, result)

  -- FSF users group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    (mailbox:contain_field("List-Id", "info-member.gnu.org") +
       mailbox:contain_from("info@defectivebydesign.org") +
       mailbox:contain_from("rms-assist@gnu")+
       mailbox:contain_from("sales@fsf.org"))
  mailbox:move_messages(danil_at_kutkevich_org.fsf_lists, result)

  -- Exim users group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "exim-users.mailground.net")
  mailbox:move_messages(danil_at_kutkevich_org.exim_lists, result)

  -- spbhug.googlegroups.com mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "spbhug.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.lists, result)

  -- emacs-on-rails.googlegroups.com mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "emacs-on-rails.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.emacs_community, result)

  -- spblinux.googlegroups.com mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "spblinux.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.spblinux_list, result)

  -- pgsql-ru-general.postgresql.org mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "pgsql-ru-general.postgresql.org")
  mailbox:move_messages(danil_at_kutkevich_org.lists, result)

  -- stumpwm-devel.nongnu.org mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "stumpwm-devel.nongnu.org")
  mailbox:move_messages(danil_at_kutkevich_org.stumpwm_list, result)

  -- Succless developers group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "dev.suckless.org")
  mailbox:move_messages(danil_at_kutkevich_org.suckless_dev, result)

  -- Awesome WM users group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "awesome.naquadah.org")
  mailbox:move_messages(danil_at_kutkevich_org.awesome_list, result)

  -- Awesome WM developers group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "awesome-devel.naquadah.org")
  mailbox:move_messages(danil_at_kutkevich_org.awesome_devel_list, result)

  -- thinking-sphinx.googlegroups.com mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Id", "thinking-sphinx.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.lists, result)

  -- Jolla users group messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("no-reply@jolla.com") *
    mailbox:contain_subject("together.jolla.com")
  mailbox:move_messages(danil_at_kutkevich_org.jolla_community, result)

  -- -- FIXME: regex are very slow!!!
  -- -- Sailfish OS feeds messages filtering
  -- local mailbox = danil_at_kutkevich_org.INBOX
  -- local result = mailbox:is_unseen() *
  --   mailbox:match_from("(^|,)[[:space:]]*\"?Jolla[[:space:]]+Users[[:space:]]+Blog\"?[[:space:]]*<")
  -- mailbox:move_messages(danil_at_kutkevich_org.sailfishos_feeds, result)

  -- healthintersections.com.au messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("List-Subscribe", "http://www.healthintersections.com.au")
  mailbox:move_messages(danil_at_kutkevich_org.fhir_planet, result)

  -- drone.io "success" notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("builds@drone.io") *
    mailbox:contain_subject("[SUCCESS]")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- Travis CI "success" notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("builds@travis-ci.org") *
    (mailbox:contain_subject("Passed: ") +
       mailbox:contain_subject("Fixed: "))
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- Gentoo users group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "gentoo-user.gentoo.org")
  mailbox:move_messages(danil_at_kutkevich_org.gentoo_users, result)

  -- Gentoo russian group mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "gentoo-user-ru.gentoo.org")
  mailbox:move_messages(danil_at_kutkevich_org.gentoo_community, result)

  -- humblebundle.com news messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("contact@humblebundle.com")
  mailbox:move_messages(danil_at_kutkevich_org.humblebundle_list, result)

  -- jamendo.com "new music" notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("no-reply@jamendo.com") *
    mailbox:contain_subject("new music")
  mailbox:move_messages(danil_at_kutkevich_org.jamendo, result)

  -- webzilla.com annoying notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("no-reply@webzilla.com") *
    mailbox:contain_subject("Webzilla - Invoice") *
    mailbox:contain_subject("is paid") *
    mailbox:contain_body("Total due: EUR 0.00")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- redfoxoutdoor.com annoying messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("red fox") *
    mailbox:contain_from("planetasport@retailrocket.net") *
    mailbox:contain_field("Reply-To", "info@planeta-sport.ru")
  mailbox:move_messages(danil_at_kutkevich_org.redfox, result)

  -- journal.tinkoff.ru notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("journal@tinkoff.ru")
  mailbox:move_messages(danil_at_kutkevich_org.tinkoff_list, result)

  -- ink361.com notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("newsletter@ink361.com")
  mailbox:move_messages(danil_at_kutkevich_org.ink361_feed, result)

  -- -- -- FIXME: cyrillic not working!!!
  -- -- auto.ru notification messages filtering
  -- local mailbox = danil_at_kutkevich_org.INBOX
  -- local result = mailbox:is_unseen() *
  --   mailbox:contain_from("noreply@auto.ru") *
  --   mailbox:contain_subject("Найдены новые объявления")
  -- mailbox:move_messages(danil_at_kutkevich_org.auto_ru_feed, result)

  -- velodrive.ru messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("info@velodrive.ru") *
    mailbox:contain_field("list-id", "3c63feb6") *
    mailbox:contain_field("Content-Type", "multipart/alternative")
  mailbox:move_messages(danil_at_kutkevich_org.velodrive, result)

  -- ivi.ru messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("promo@em.ivi.ru") *
    mailbox:contain_field("Content-Type", "multipart/alternative")
  mailbox:move_messages(danil_at_kutkevich_org.iviru, result)

  -- techtarget.com spam messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("NoteBookReview@lists.techtarget.com")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- bongacams.com spam messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("newsletter@bongacams.com")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- -- sazhi.net annoying messages filtering
  -- local mailbox = danil_at_kutkevich_org.INBOX
  -- local result = mailbox:is_unseen() *
  --   mailbox:contain_to("postmaster@sazhi.net") *
  --   (mailbox:contain_field("Content-Type", "application/zip") +
  --      mailbox:contain_field("Content-Type", "application/vnd.ms-word.document.macroEnabled.12") +
  --      mailbox:contain_field("X-Attached", ".docm") +
  --      mailbox:contain_field("X-Attached", ".xls") +
  --      mailbox:contain_field("X-Attached", ".zip"))
  -- mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- Molinos messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    (mailbox:contain_to("news@lists.molinos.ru") +
       mailbox:contain_cc("news@lists.molinos.ru") +
       mailbox:contain_bcc("news@lists.molinos.ru") +
       mailbox:contain_field("resent-to", "news@lists.molinos.ru") +
       mailbox:contain_field("x-delivered-to", "news@lists.molinos.ru"))
  mailbox:move_messages(danil_at_kutkevich_org.molinos, result)

  -- Waveaccess fhirbase.googlegroups.com mailing list messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "fhirbase.googlegroups.com")
  mailbox:move_messages(danil_at_kutkevich_org.fhirbase_list, result)

  -- Waveaccess hl7/holiadvice notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("notifier@mail.rollbar.com") *
    (mailbox:contain_subject("holiadvice") +
       mailbox:contain_subject("[hl7rus]"))
  mailbox:move_messages(danil_at_kutkevich_org.waveaccess, result)

  -- Waveaccess fhir.org notification messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_from("chat-noreply@fhir.org")
  mailbox:move_messages(danil_at_kutkevich_org.fhir_zulip, result)

  -- Waveaccess medapp ci notifications messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    mailbox:contain_field("list-id", "medappsupport.hospital-systems.com") *
    (mailbox:contain_field("X-Redmine-Sender", "danil") +
       mailbox:contain_subject("(Ready for Deploy)") +
       mailbox:contain_subject("(Done)"))
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- armor5games annoying messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    messages_to_armor5games(mailbox) *
    (mailbox:contain_from("unity3d.com") +
       mailbox:contain_from("noreply@gameanalytics.com"))
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- armor5games cyrillic messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    messages_to_armor5games(mailbox) -
    messages_from_armor5games_hosts(mailbox) -
    (mailbox:contain_from("notifications@bugsnag.com") +
       mailbox:contain_from("billing@hetzner.com") +
       mailbox:contain_from("support@hetzner.com")) *
    mailbox:contain_body("hh.ru")
     -- FIXME: cyrillic not working!!!
     -- (mailbox:contain_body("здравствуйте") +
     -- mailbox:contain_body("уважением") +
     -- mailbox:contain_body("резюме") +
     -- mailbox:contain_body("портфолио"))
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- armor5games/bugsnag annoying messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    messages_to_armor5games(mailbox) *
    mailbox:contain_from("support@bugsnag.com") *
    mailbox:contain_subject("Some events are being dropped due to sampling")
  mailbox:move_messages(danil_at_kutkevich_org.sieve_trash, result)

  -- armor5games trello messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
  mailbox:contain_from("do-not-reply@trello.com") *
    mailbox:contain_subject("on Rise of Pirates")
  mailbox:move_messages(danil_at_kutkevich_org.armor5games, result)

  -- armor5games messages filtering
  local mailbox = danil_at_kutkevich_org.INBOX
  local result = mailbox:is_unseen() *
    messages_to_armor5games(mailbox) -
    messages_from_armor5games_hosts(mailbox) -
    (mailbox:contain_from("notifications@bugsnag.com") +
       mailbox:contain_from("billing@hetzner.com") +
       mailbox:contain_from("support@hetzner.com"))
  mailbox:move_messages(danil_at_kutkevich_org.armor5games, result)
end

function messages_to_armor5games(mailbox)
  return ((mailbox:contain_to("armor5games@gmail.com") +
             mailbox:contain_cc("armor5games@gmail.com") +
             mailbox:contain_bcc("armor5games@gmail.com")) +
      (mailbox:contain_to("admin@armor5games.com") +
         mailbox:contain_cc("admin@armor5games.com") +
         mailbox:contain_bcc("admin@armor5games.com")))
end

function messages_from_armor5games_hosts(mailbox)
  return (mailbox:contain_from("ah3.armor5games.com") +
            mailbox:contain_from("ah5.armor5games.com") +
            mailbox:contain_from("ah7.armor5games.com") +
            mailbox:contain_from("ah9.armor5games.com") +
            mailbox:contain_from("ah10.armor5games.com") +
            mailbox:contain_from("bh1.armor5games.com"))
end
