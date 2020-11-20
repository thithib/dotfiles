# Mutt configuration

This directory contains my Mutt configuration files. I had some difficulties at the beginning when setting up multiple accounts, it does work well now but I am still not sure it is the most elegant way of achieving it. Therefore, please tell me if some parts look illogical or even silly to you.

### IMAP and SMTP passwords

The `.my-pwds.gpg` file is the encrypted version of a text file containing my passwords, using lines like the following:
```sh
set my_pw_gmail = "azerty1234"
```

### Viewing HTML emails

You need to have `lynx` installed on your machine.

Automatic viewing of HTML emails is a bad idea, so please do not use `autoview`. Instead, when you are sure you want to display the HTML version of an email sent by a trusted fellow, just manually use the `view-mailcap` function from the attachment menu (e.g. with the default `m` binding).
