# Copyright 2019 Stephan Neuhaus <stephan.neuhaus@zhaw.ch>
# and Catlin Pidel <pide@zhaw.ch>. All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

library(tidyverse)
library(utils)

# n_diffs computes the difference between two passwords.
#
# The passwords are input as a string array of size at least two.
# Only the first two elements of the array are used.
#
# This is a very slow function that is not fit for big data.
# Emphasis was on obvious correctness, not speed.
#
n_diffs <- function(pws) {
  expected <- pws[1]
  actual <- pws[2]
  return(adist(expected, actual)[1,1])
}

pws <- read_csv("PasswordResearch.csv")

# Create two new columns:
#
# * time_enter - how long did it take to enter the password
# * diffs - the number of errors made
pws <- mutate(pws, time_enter=`Time End` - `Time Start`,
              diffs=apply(cbind(pws$`Expected PW`, pws$`Actual PW`), 1, n_diffs),
              pwlen=nchar(`Expected PW`))


# Filtered data: Exclude outliers
fpws <- filter(pws, diffs <= 10, time_enter <= 100)

