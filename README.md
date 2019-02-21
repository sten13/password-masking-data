# The Repository

This repository contains the raw data and R scripts for the paper Pidel, Neuhaus, _BREAKING: Password Entry is Fine_, Proceedings of the [HCI International Conference](http://2019.hci.international/) 2019.

# The Data

The file `PasswordResearch.csv` contains the raw data used to produce the various figures in the paper. This file contains a header row with the column names. The columns are:

- `Participant` - the anonymised participant name, `P1` ... `P10`
- `Masked` - a factor, either `Masked` or `Unmasked`, depending on whether the password entry was masked (only last character visible for a short time) or unmasked (all characters visible all of the time)
- `OS` - a factor containing the operating system, either `Android` or `IPhonePlayer`
- `Num Backspaces` - an integer, containing the number of backspaces that were made when entering the password
- `PW Type` - a factor containing the password type, either `Typical`, which contains a password that is created from an ordinary word by replacing certain characters (e.g., `lezzgoK1ckB#xING`), `Phrase`, containing four random words (e.g., `correct horse battery staple`), or `Random`, containing random characters (e.g., `kzuNHPhVy3*`)
- `Expected PW` - a string ontaining the expected (correct) password
- `Actual PW` - a string continaing the actually submitted password
- `Type Attempt Number` - a positive integer containing the attempt number for this participant and expected password. For example, the value for the third attempt of `P3` to enter the password `correct horse battery staple` would be 3.
- `Total Attempt Number` - a positive integer containing the number of attempts to enter a password for this participant. For example, if `P3` has already entered `lezzgoK1ckB#xING` five times and has just submitted her third attempt to enter `correct horse battery stample`, this column would be 8.
- `Time Start` - a floating-point column containing the number of seconds between the display of the password and the first key press
- `Time End` - a floating-point column containing the number of seconds between the display of the password and the last key press
- `Time Done` - a floating-point column containing the number of seconds between the display of the password and the submission of the password

# The Scripts

The R scripts produce the figures in the paper. You can reproduce them by typing

```
cat eval.R plots.R | R --no-save
```

You need the libraries `tidyverse` and `utils`.