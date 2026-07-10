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

<!-- message block encrypted using
 gpg -a --personal-aead-preferences=none --cipher-algo AES256 --symmetric -i input.txt
 since the JS encryption library doesn't support AEAD.
-->

<div id="k">-----BEGIN PGP MESSAGE-----

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
YFIfi7GutErJr3jS0zs1
=5qZx
-----END PGP MESSAGE-----
</div>


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
