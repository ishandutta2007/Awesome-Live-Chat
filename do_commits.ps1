$ErrorActionPreference = 'Stop'

function Replace-FileContent {
    param (
        [string]$Path,
        [string]$Pattern,
        [string]$Replacement
    )
    $content = Get-Content -Raw -Path $Path
    $content = $content -replace $Pattern, $Replacement
    Set-Content -Path $Path -Value $content -NoNewline
}

$readme = "README.md"

# 1. Stars and sort
$os_pattern = '(?s)## 🔓 Open-Source Software.*?---'
$os_replacement = "## 🔓 Open-Source Software

- **[Rocket.Chat](https://github.com/RocketChat/Rocket.Chat)** <a href=`"https://github.com/RocketChat/Rocket.Chat/stargazers`"><img src=`"https://img.shields.io/github/stars/RocketChat/Rocket.Chat?style=social&color=white`" alt=`"Stars`" /></a> — Powerful open-source team + customer communication platform. Omnichannel capabilities (live chat widget, WhatsApp, etc.) in addition to internal messaging.
- **[Chatwoot](https://github.com/chatwoot/chatwoot)** <a href=`"https://github.com/chatwoot/chatwoot/stargazers`"><img src=`"https://img.shields.io/github/stars/chatwoot/chatwoot?style=social&color=white`" alt=`"Stars`" /></a> — The leading open-source alternative to Intercom and Zendesk. Omnichannel inbox (live chat, email, WhatsApp, Instagram, Facebook, Telegram, SMS), AI agent (Captain), canned responses, reports, and customizable widget. MIT license. Extremely active (~34k+ stars).
- **[Papercups](https://github.com/papercups-io/papercups)** <a href=`"https://github.com/papercups-io/papercups/stargazers`"><img src=`"https://img.shields.io/github/stars/papercups-io/papercups?style=social&color=white`" alt=`"Stars`" /></a> — Lightweight open-source live customer chat (Elixir + React). Direct Intercom-style widget and shared inbox. Privacy-focused. Note: currently in maintenance mode.
- **[Zammad](https://github.com/zammad/zammad)** <a href=`"https://github.com/zammad/zammad/stargazers`"><img src=`"https://img.shields.io/github/stars/zammad/zammad?style=social&color=white`" alt=`"Stars`" /></a> — Full-featured open-source helpdesk/ticketing system with live chat, email, phone, and social channels. Strong process and SLA support.
- **[FreeScout](https://github.com/freescout-helpdesk/freescout)** <a href=`"https://github.com/freescout-helpdesk/freescout/stargazers`"><img src=`"https://img.shields.io/github/stars/freescout-helpdesk/freescout?style=social&color=white`" alt=`"Stars`" /></a> — Lightweight open-source shared inbox and help desk (PHP). Excellent for email-first teams that also want live chat. Easy to deploy even on shared hosting.
- **[Chaskiq](https://github.com/chaskiq/chaskiq)** <a href=`"https://github.com/chaskiq/chaskiq/stargazers`"><img src=`"https://img.shields.io/github/stars/chaskiq/chaskiq?style=social&color=white`" alt=`"Stars`" /></a> — Full-stack open-source conversational platform built as an Intercom/Drift alternative. Live chat, video calls, help center, campaigns, bots, and onboarding tours. Self-hosted.
- **[Tiledesk](https://github.com/Tiledesk/tiledesk-server)** <a href=`"https://github.com/Tiledesk/tiledesk-server/stargazers`"><img src=`"https://img.shields.io/github/stars/Tiledesk/tiledesk-server?style=social&color=white`" alt=`"Stars`" /></a> — Open-source live chat + no-code AI chatbot builder with multi-channel support and human handoff.
- **[Frappe Helpdesk](https://github.com/frappe/helpdesk)** <a href=`"https://github.com/frappe/helpdesk/stargazers`"><img src=`"https://img.shields.io/github/stars/frappe/helpdesk?style=social&color=white`" alt=`"Stars`" /></a> — Modern open-source customer service / helpdesk software from the Frappe team (makers of ERPNext).
- **[Mibew Messenger](https://github.com/Mibew/mibew)** <a href=`"https://github.com/Mibew/mibew/stargazers`"><img src=`"https://img.shields.io/github/stars/Mibew/mibew?style=social&color=white`" alt=`"Stars`" /></a> — Classic, long-standing open-source live support / chat application. Simple and reliable for basic website chat needs.
- **[Libredesk](https://github.com/abhinavxd/libredesk)** <a href=`"https://github.com/abhinavxd/libredesk/stargazers`"><img src=`"https://img.shields.io/github/stars/abhinavxd/libredesk?style=social&color=white`" alt=`"Stars`" /></a> — Modern self-hosted omnichannel support desk (live chat + email and more) delivered as a single binary. Clean UI and automation features.

---"
Replace-FileContent $readme $os_pattern $os_replacement
git add .
git commit -m "Added github stars and sorted the opensource based on that"

# 2. Add Banner
$banner_html = "<div align=`"center`">`n  <img src=`"assets/banner.svg`" alt=`"Awesome Live Chat Banner`" width=`"100%`">`n</div>`n`n"
Replace-FileContent $readme "# Awesome-Live-Chat" "# Awesome-Live-Chat`n`n$banner_html"
git add .
git commit -m "added banner"

# 3. Add Emojis
Replace-FileContent $readme "# Awesome-Live-Chat" "# Awesome-Live-Chat 💬"
Replace-FileContent $readme "## 🏢 SaaS / Hosted Platforms" "## 🏢 SaaS / Hosted Platforms 🌐"
Replace-FileContent $readme "## 🔓 Open-Source Software" "## 🔓 Open-Source Software 🛠️"
Replace-FileContent $readme "\*\*How to contribute\*\*" "**How to contribute** 🤝"
Replace-FileContent $readme "\*\*License\*\*" "**License** 📜"
git add .
git commit -m "added emojis"

# 4. SEO Optimised
Replace-FileContent $readme "Below is a \*\*curated list\*\* of notable platforms" "Below is a **curated, SEO-optimized list** of notable customer communication platforms"
Replace-FileContent $readme "zero per-agent licensing fees\." "zero per-agent licensing fees. Boost your customer engagement with these ultimate live chat solutions! 🚀"
git add .
git commit -m "seo optimised"

# 5. Badges Left
$left_badges = "<a href=`"https://github.com/sindresorhus/awesome`"><img src=`"https://img.shields.io/badge/Awesome-%E2%9C%94-blueviolet?style=flat-square&logo=github`" alt=`"Awesome`"/></a><a href=`"https://discord.gg/jc4xtF58Ve`"><img src=`"https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white`" alt=`"Discord`" /></a>"
Replace-FileContent $readme "# Awesome-Live-Chat 💬`n`n<div" "# Awesome-Live-Chat 💬`n`n<div align=`"center`">`n$left_badges`n</div>`n`n<div"
git add .
git commit -m "badges to left added"

# 6. Badge Right
$right_badge = "<a href=`"https://github.com/ishandutta2007`"><img alt=`"GitHub followers`" src=`"https://img.shields.io/github/followers/ishandutta2007?label=Follow`" /></a>"
Replace-FileContent $readme $left_badges "$left_badges$right_badge"
git add .
git commit -m "badges to right added"

# 7. Star History
$folder_name = (Get-Item .).Name
$star_history = @"

##  Star History
<div align="center">
<a href="https://www.star-history.com/?repos=ishandutta2007/$folder_name&type=date&legend=bottom-right">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chartrepos=ishandutta2007/$folder_name&type=date&theme=dark&legend=bottom-right" />
<source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chartrepos=ishandutta2007/$folder_name&type=date&legend=bottom-right" />
<img alt="Star History Chart" src="https://api.star-history.com/chartrepos=ishandutta2007/$folder_name&type=date&legend=bottom-right" />
</picture>
</a>
</div>
"@
Add-Content -Path $readme -Value $star_history
git add .
git commit -m "star history added"

# 8. Fix Star Plot
Replace-FileContent $readme "chartrepos" "chart?repos"
git add .
git commit -m "fixed star plot"

# 9. Fix Awesome Link
Replace-FileContent $readme "https://github.com/sindresorhus/awesome" "https://github.com/ishandutta2007/Awesome-Awesome-Awesome"
git add .
git commit -m "invalid awesome link fixed"

Write-Host "All commits successfully prepared locally."
