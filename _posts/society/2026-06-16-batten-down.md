---
title: "PSA: Batten down your hatches"
categories: ["Computing and society"]
---

I'm writing this as a public service announcement to my friends and
colleagues, especially those who are less obsessively
technology-oriented than I am.

There are reasons to be worried, optimistic, skeptical, exasperated,
or whatever regarding AI.  I want to focus on just one: _protecting
your personal assets._

I try to stay a few months ahead of what's happening on a grander
scale, and I hope this article (written in June 2026) succeeds in
doing that.

## You, personally, will be a target of theft or fraud

TL;DR: AI is alarmingly rapidly enabling a deluge of cyberattacks like
nothing we have ever seen.  You, personally, are a target.  That's
because everyone is.  You might wonder why someone would bother to go
after you and your modest assets when there are so many wealthier
targets in plain sight.  If the effort required to go after you were
significant, or the likelihood or consequences of getting caught were
significant, you'd be right. But they're not, and you're in danger.

AI has gotten extremely good at spotting and exploiting
vulnerabilities in software.  AI has also been creating software that
has those very vulnerabilities.  Currently, the bad guys are ahead in
that arms race.

Software that gates access to your personal assets is going to be
compromised, either because it contains sloppy AI-authored code
containing security bugs, or because it contains well-crafted code
that has highly non-obvious bugs that have been latent for years but
are now being ferreted out at a dizzying pace.

## What you can do: Be paranoid

Every piece of software you touch that has access to your personal
property is an attack surface.  You need to minimize the number of
attack surfaces and defend them.

**Your email is your life.**  If someone gains access to your email
account, you're screwed, because there are automated scripts that _in
a matter of minutes_ will do an automated "I forgot my password, email
me a link" on every site you might conceivably have an account on,
starting with the obvious candidates like Amazon.  Have 1-click
ordering turned on?  Stuff will be ordered.  And if you get locked out
of your email, it is **extremely** difficult to get back in.  For
Gmail, you can register a separate [recovery email address and phone
number](https://myaccount.google.com/intro/recovery/email) that can be
used in such cases, although by the time you regain control of your
email, the damage may be done.

**So, lock down your phone.**  Turn on biometric authentication (Face ID,
touch ID) for everything.  Set your phone to lock the screen after 30
seconds of inactivity or whenever you turn off the display.  iPhones
will self-erase after 10 wrong passcode attempts, so someone who
obtains your phone can't do much if it is locked.  And if setting up a
brand new phone from scratch sounds like a lot of work, that's what
iCloud Backup of your phone is for.  For $2 a month, it's cheap insurance.

**Banks and online finance sites.** Protect every site login with a
very strong password (use 1Password or a similar password manager to
help manage them) and use 2-factor authentication everywhere.  You
know those checkboxes that say "Remember me on this device and skip
2FA"?  Don't check them.  2FA is a minor inconvenience compared to the
consequences.

**SMS-based 2FA is not as secure** as biometric 2FA, authenticator apps
like Duo Mobile, or passkey apps like 1Password.  If any of those is a
choice, prefer it over SMS or "email me a link".

**Encrypt your laptop drive.**  Apple
FileVault or Windows BitLocker are the way to do this.  If someone
steals your computer, they cannot get at your data even if they remove
the drive.  Yes, this requires remembering another password, but
again, cheap insurance.  Imagine what the size of the attack surface
would be if someone had unrestricted access to every bit of data on
your hard drive.  And again, remember they don't have to spend time
sifting through all the crap to find something valuable: they can use
AI for that.  _The effort to find some possibly useful bit of info,
and automate its exploitation, is approaching zero._

**Beware of payment apps.** If you use apps like Venmo or Paypal, and
they are tied to your bank account or a credit card, they are also an
attack surface.  Secure them accordingly.  On iPhone, you can actually
set on a per-app basis which apps require face ID to even open the
app, separately from whether that app happens to offer biometric
login.  For example, the authenticator app I use (Duo Mobile) is
protected this way. So if someone is trying to access my bank account,
which is protected by authenticator-app-based 2FA, they would need to
know my login name and my password, *and* have access to my phone
which is probably locked,
*and* even if it's unlocked they need to be able to falsify face ID to
open the authenticator app to complete 2FA.  At that point it's
probably too much work and they'll move on to trying your phone
instead.  You don't have to outrun the bear, just outrun the other
guy.

**Beware of "login using Google".**  If
your Gmail account is compromised, so is every site to which it has
access.  If any of those sites have a built-in way to spend money,
watch out.

**Don't install software or browser extensions whose provenance isn't
rock-solid.**  Even trusted supply chains are now being infected with
malware.  In fact, I'd suggest avoiding system updates for a while
unless it's an update specifically targeting a recently discovered
vulnerability.

**Don't click on links in emails or texts, ever, unless you are 100%
sure you can vet the sender** (and even then, a well-meaning sender
may have been fooled into forwarding a poisoned link).  SMS text
messaging and email are not secure, period.  You cannot assume the
sender is who they claim to be. Whatsapp, Signal, Telegram, and other
end-to-end encrypted messaging apps are far more trustworthy.  I
prefer Signal because it's open source so the app code is under
constant scrutiny by many eyeballs.  If an email or text claims to
be from an institution with which you have a relationship (e.g. a
bank) and looks legitimate or needs attention, manually type in the
institution's URL in a browser, log in, and locate the service portal
or message portal or whatever.  There is nothing they can send you via
a link that cannot also be accessed by manually signing into the site
and navigating somewhere.

**Don't re-use passwords.** This is a cliche for a reason.  If an
attacker is able to somehow discover or infer your password for a
particular site, they will immediately try that same email/password
combination on a very long list of known sites.  And when I say "they
will try," I really mean "They have a script that will automate trying
thousands of sites in parallel in a few seconds," so you won't have
time to go manually changing your password everywhere.  Ask yourself
this question regarding the security of a site password: How would you
feel about using this site if it had _no_ password protection?  If the
answer is that it would make you uneasy in any way, then you'd better
choose a strong and unique password for it, since dictionary attacks
are easier than ever to mount.

**Assume all of your personally identifying data is public.**  If you
form passwords by using your birthday, a part of your address, your
Social Security number, the address of a place you used to live, a
phone number you once had, your old student ID number, your parents'
anniversary date, etc., all of
that information is relatively easy to get.  It is transacted on the black
market in large catalogs that are fed to targeting agents.  The
unfortunate irony is that _the only strong password is one that you
yourself have difficulty remembering_.  There are some bright spots
here: a combination of numbers and letters that has meaning to you but
no one else is somewhat harder, such as "giraffe-2578-orange-197701".
But since significant chunks of such a password follow a pattern (by
being dictionary words), the entropy per character is lower than if
you include non-alphanumeric symbols, so the password needs to be up
to twice as long to compensate.  (That is: a password consisting of 8
random characters including non-alphanumerics has about the same
entropy as a 16-20 character password consisting of dictionary words
and numbers.)

**All of that said, passwords aren't usually the weak link.**  Most
successful intrusions aren't the result of cracking a password.  They
may be the result of guessing a weak password, or tricking the user
into leaking it some other way, such as by directing them to a fake
but realistic-looking site with a URL that is off in a
difficult-to-detect way or that includes a legitimate-looking fragment
carrying the name of the spoofed site.  A really clumsy example would
be gooogle.com (which the real Google kindly redirects to their actual
site, but you might not be so lucky).  The fake site uses the same
login flow as the real site, but harvests your password, then
redirects you to the real site with some sort of one-off error
message.  Most people say "It's probably just a glitch" and login
again, not realizing that _that isn't a thing_.

**Older folks are particularly susceptible to phishing.**  If you have
aging relatives, the credentials to access their accounts should be
exclusively in the possession of paranoid loved ones.  Enough has been
written on that topic that I don't need to go into it here, but older
folks as a group are just plain easier to scam and intimidate, and can
often be tricked into revealing information that compromises others in
their family as well.

**Smart devices are likely to be Trojan horses.**


Internet-connected picture frames, "smart" fridges and washing
machines and dishwashers, "smart" doorbells, and basically anything
that asks for permission to connect to your home network should be suspect.
Ask yourself: does this product _need_ Internet access to do its job?
A TV has one job---display a picture from a video input.  It does not
need Internet access to do that.
A washing machine has one
job---to wash your clothes---and it does not need Internet access to
do that.  The same goes for your dishwasher, fridge, microwave, etc.

There's at least two reasons to be very wary of "smart" devices.
First, 
any device connected to your home network is in
a position to essentially rent out your home Internet service to
others.  Why would anyone want to rent your home internet service?
Usually to do things they wouldn't want do from their own home, or to
recruit your smart device for a [distributed denial of service
attack](https://en.wikipedia.org/wiki/Denial-of-service_attack),
possibly on national or state civilian or military infrastructure.
There is widespread concern that shadow entities, possibly state
sponsored, are [paying manufacturers to bundle malware into these
devices that enables just such attacks.](https://youtu.be/apEPPKYgLL0?si=bQjGCtje_UxhwcE6)



Second, even "non-malignant" smart products connected to your home network have access to all
traffic to and from every other device on that network,
and can sell that data.   (Your actual transactions with Web sites are encrypted, but
the names and pages of the sites you visit and the times you're active
are readable by any device on the network.)
For instance, "smart
TVs" [gather and sell data
about what you're
watching](https://www.consumerreports.org/electronics/privacy/how-to-turn-off-smart-tv-snooping-features-a4840102036/).
Smart thermostats and smart doorbells know a lot about when you're probably not home.
Of course, some devices legitimately use Internet access to do part of their job,
such as a streaming box or digital photo frame.  A device from a
reputable company with a long history (e.g. Roku, Google) 
it is probably OK; a discount Chinese knockoff product is probably
not.
(Remember, those knockoffs may be ridiculously cheap, but [when you aren't paying
for the product, _you are the product._](https://theconversation.com/if-its-free-online-you-are-the-product-95182))


## Summing it all up -- if you do nothing else, do these things

* Turn on drive-level encryption on your laptop.

* Turn on 2FA for everything that could possibly touch money,
preferring biometric, passkey, or authenticator app 2FA over SMS or
email-based 2FA

* Register a recovery email and recovery phone number for your email
account--either a secondary (e.g. work) email you reliably have access
to, or a trusted loved one who can help you out

* Use strong random passwords and use a password manager like
1Password to track them

* Don't click on links in email or messages unless you're 100% sure
who the sender is, and sometimes not even then

* Use secure messaging apps (Whatsapp, Signal, Telegram) whenever
possible instead of SMS

* Prefer dumb appliances and keep them off your network
