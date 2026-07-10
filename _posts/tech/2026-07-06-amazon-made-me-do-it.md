---
title: "Amazon made me do it"
categories: ["Gadgets","Bibliomane"]
---

If I've told you the password, enter it below.
Otherwise, sayonara.

<form id="decrypt-form">
  <input type="password" id="passphrase" placeholder="Enter decryption key" required>
  <button type="submit">Decrypt</button>
</form>
<p id="status"></p>

<!-- message block encrypted using:
 gpg -a --personal-aead-preferences=none --cipher-algo AES256 --symmetric -i input.txt
 since the JS encryption library doesn't support AEAD
-->

<pre><div id="k">-----BEGIN PGP MESSAGE-----

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
=XAKL
-----END PGP MESSAGE-----</div></pre>


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
