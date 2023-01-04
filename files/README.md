# Kanshibari HOME

# GPG key

## [CreateGPG](https://medium.com/@tomferon/sharing-passwords-with-git-gpg-and-pass-628c2db2a9de)

## Move keys to another machine

After extending the expiry date of a GPG key you might have to copy your key to
another machine to use the same key there. Here is how:

### Identify your private key:

```sh
$ gpg --list-secret-keys user@example.com
> pub   4096R/KEY_ID   2020-01-01 [expires: 2025-12-31]
> uid                  Your Name <user@example.com>
> sub   4096R/KEY_ID   2020-01-01 [expires: 2025-12-31]
```

### export your private key:

```sh
gpg --export-secret-keys user@example.com > private.key
```

Copy the key file to the other machine using a secure transport (scp is your friend).

### import your private key to another system

```sh
scp private.key user@newmachine:
ssh user@newmachine
gpg --import private.key
rm -rf private.key
```

If the key already existed on the second machine, the import will fail saying
"Key already known". To force import, you will have to delete both the private
and public key first `gpg --delete-keys` and `gpg --delete-secret-keys`.

### Update expiration date

[update-key](https://www.g-loaded.eu/2010/11/01/change-expiration-date-gpg-key/)

### trust your public keys

```sh
gpg --edit-key user.example.com
gpg --trust KEY_ID
```

## [Password-store](https://www.passwordstore.org/)

```
git clone https://github.com/<username>/password-store.git ~/.password-store
```

## use pinetry-tty with gpg-agent

```
sudo pacman -S pinentry
echo "pinentry-program /usr/bin/pinentry-tty" >> ~/.gnupg/gpg-agent.conf
```

### Info

Reset branch master to origin/master

```sh
git checkout -B master origin/master
```

Cheater mode :)

```sh
curl cht.sh/rust/socket
```

Transfort docx to markdown

```sh
pandoc -f docx -t markdown foo.docx -o foo.markdown
               -t gfm (GitHub-Flavored Markdown)
               -t markdown_mmd (MultiMarkdown)
               -t markdown (pandoc’s extended Markdown)
               -t markdown_strict (original unextended Markdown)
               -t markdown_phpextra (PHP Markdown Extra)
               -t commonmark (CommonMark Markdown)
```


### generate clangd completion for (neo)vim

From a Makefile do

```sh
make clean
bear -- make
```
