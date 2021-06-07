# Kanshibari HOME

# GPG key

## [CreateGPG](https://medium.com/@tomferon/sharing-passwords-with-git-gpg-and-pass-628c2db2a9de)

## Move keys to another machine

After extending the expiry date of a GPG key you might have to copy your key to another machine to use the same key there. Here is how:

Identify your private key:

```sh
gpg --list-secret-keys user@example.com
```

Example output:

```sh
pub   4096R/ABC12345 2020-01-01 [expires: 2025-12-31]
uid                  Your Name <user@example.com>
sub   4096R/DEF67890 2020-01-01 [expires: 2025-12-31]
```

Remember the ID of your key (second column, after the slash, e.g. "ABC12345"). 
If you have a "sub" entry, you can ignore it.

Run this command to export your key:

```sh
gpg --export-secret-keys YOUR_ID_HERE > private.key
```

Copy the key file to the other machine using a secure transport (scp is your friend).

To import, run

```sh
gpg --import private.key
```

If the key already existed on the second machine, the import will fail saying "Key already known".
To force import, you will have to delete both the private and public key first (gpg --delete-keys and gpg --delete-secret-keys)

## [Password-store](https://www.passwordstore.org/)

```
git clone https://github.com/Username/password-store.git .password-store
```
