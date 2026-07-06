---
title: "Amazon made me do it"
categories: ["Gadgets","Bibliomane"]
---

A couple of weeks ago I spent the time to do something I'd never
bothered to do before: I [jailbroke](kindlemodding.org) both my Kindle Paperwhite (2011)
and Kindle Voyage (2014), and removed the DRM from the vast majority
of my purchased Kindle books.

I'd never felt the need to do this before.  I'm aware of both the
technical weaknesses and the questionable licensing issues around
Kindle books, but I'm also sympathetic to the fact that part of the
goal of DRM is to protect authors so they get paid for their books.  I
have no problem with that, and as long as most people don't try to
strip the DRM, this works OK.

But then Amazon did something that made me change my tune: they
immediately end-of-lifed all 2012-and-earlier Kindle devices, meaning
those devices were "frozen" to whatever content happened to be on them
on EOL day.  Not only couldn't you buy new books on those devices---nor, if you use
OverDrive, borrow library books, since they require using the Kindle
purchase flow on amazon.com---you couldn't even download books you'd
already purchased in the past but didn't have on that device.

This is craven and stupid.  There is absolutely no technological
reason, from a formats or compatibility point of view, for Amazon to
EOL these devices.  This isn't about protecting authors: they get paid
no matter what device you read the book on.  It isn't about obsolete
technology: the vast majority of ebooks out there work just fine even
with the simple features of the first generation Kindle from 2007.  It
is purely a forced obsolescence to get you to buy a new device---and
by the way, the new devices have a secure enclave that makes DRM
removal much harder, but that's another story.

This all made me angry, so now I'm opening up my entire Kindle library to
my friends.  I wasn't going to do this, Amazon.  Your shortsighted
greed made me do it.

If I've told you the password, the instructions below will give you
access. Happy reading.  And fuck you on this one, Amazon.

<!-- message block encrypted using:
 echo 'cleartext' | gpg -a --personal-aead-preferences=none --cipher-algo AES256 --symmetric -i -
-->

<pre><div id="k">-----BEGIN PGP MESSAGE-----

jA0ECQMIOo2LEn5kIy3/0kIBA0VdpovtTVW5NSZmRLDrlzr6ByvST7b2JlCuIGf3
qXlgJw8KeotAolFVrdG5ZBZjqmV0ZgnqrYx/+97Bg7rBuLg=
=3qJx
-----END PGP MESSAGE-----</div></pre>

<form id="decrypt-form">
  <input type="password" id="passphrase" placeholder="Enter decryption key" required>
  <button type="submit">Decrypt</button>
</form>
<p id="status"></p>

<script src="https://cdn.jsdelivr.net/npm/openpgp@6.2.2/dist/openpgp.min.js"></script>
<script>
// Keep the original armored text around so failed/retry attempts
// always decrypt from the source, never from a previous result.
const originalArmored = document.getElementById('k').textContent.trim();

document.getElementById('decrypt-form').addEventListener('submit', async function (e) {
  e.preventDefault();

  const kDiv = document.getElementById('k');
  const statusEl = document.getElementById('status');
  const passphraseInput = document.getElementById('passphrase');
  const passphrase = passphraseInput.value;

  statusEl.textContent = 'Decrypting…';

  try {
    const message = await openpgp.readMessage({ armoredMessage: originalArmored });
    const { data: decrypted } = await openpgp.decrypt({
      message,
      passwords: [passphrase],
      format: 'utf8'
    });

    kDiv.innerHTML = decrypted;
    statusEl.textContent = '';
    // Form stays available in case the user wants to try a different
    // key later (e.g. if the div gets reset, or for a "decrypt again" flow).
  } catch (err) {
    statusEl.textContent = 'Decryption failed — wrong key, or the content is corrupted.';
    passphraseInput.value = '';
    passphraseInput.focus();
  }
});
</script>
