---
title: "Amazon made me do it"
categories: ["Gadgets","Bibliomane"]
---

If I've told you the password, enter it below.
Otherwise, sayonara.

<!-- message block encrypted using:
 gpg -a --personal-aead-preferences=none --cipher-algo AES256 --symmetric -i input.txt
 since the JS encryption library doesn't support AEAD
-->

<pre><div id="k">-----BEGIN PGP MESSAGE-----

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
=y1iZ
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
