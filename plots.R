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

ggplot(data=fpws, 
       aes(x=time_enter, y=diffs, colour=Masked)) + 
  geom_point(alpha=1/4) +
  geom_jitter() +
  scale_y_continuous(breaks=2*c(1:5), labels=2*c(1:5))
ggsave("MaskedVsUnmasked.pdf", width=4, height=3)

ggplot(data=fpws, 
       aes(y=time_enter, x=Masked)) + 
  geom_boxplot() + 
ggsave("MaskedVsUnmaskedBox.pdf", width=4, height=3)

ggplot(data=fpws, 
       aes(x=time_enter, y=diffs, colour=Masked)) + 
  geom_point(alpha=1/4) +
  geom_jitter() +
  facet_grid(`PW Type` ~ OS)
ggsave("OSVsTypeVsMasked.pdf", width=4, height=3)

ggplot(data=fpws,
       aes(y=time_enter, x=`PW Type`)) + 
  geom_boxplot()
ggsave("TimeVsType.pdf", width=4, height=3)

ggplot(data=fpws, 
       aes(x=time_enter, y=diffs, colour=`PW Type`)) + 
  geom_point(alpha=1/4) +
  geom_jitter()
ggsave("DiffsVsTimeVsType.pdf", width=4, height=3)

# ggplot(data=fpws, 
#        aes(x=time_enter, y=diffs)) + 
#   geom_point(alpha=1/4) +
#   geom_jitter() + 
#   scale_y_continuous(breaks=2*c(1:5), labels=2*c(1:5))
# ggsave("TimeVsDiffs.pdf", width=3, height=2)
# 
# ggplot(data=fpws, 
#        aes(x=time_enter, y=diffs, colour=Masked)) + 
#   geom_point(alpha=1/4) +
#   geom_jitter() +
#   scale_y_continuous(breaks=2*c(1:5), labels=2*c(1:5))
# ggsave("MaskedVsUnmasked.pdf", width=4, height=3)
# 
# ggplot(data=fpws, 
#        aes(x=time_enter, y=diffs, colour=Masked)) + 
#   geom_point() + 
#   scale_y_continuous(breaks=2*c(1:5), labels=2*c(1:5)) +
#   facet_grid(`PW Type` ~ OS)
# ggsave("OSVsTypeVsMaskedFiltered.pdf", width=4, height=3)
# 
# ggplot(data=fpws,
#        aes(y=time_enter, x=OS, colour=Participant)) + 
#   geom_boxplot() + 
#   facet_grid(`PW Type` ~ Masked)
# ggsave("TimeVsOSMaskedParticipants.pdf", width=4, height=3)
# 
# ggplot(data=fpws,
#        aes(y=time_enter, x=Participant)) + 
#   geom_boxplot()
# ggsave("TimeVsParticipants.pdf", width=4, height=3)
# 
# ggplot(data=fpws, aes(x=`PW Type`, y=diffs)) + 
#   geom_boxplot() +
#   geom_jitter()
# ggsave("TypeVsDiffs.pdf", width=4, height=3)