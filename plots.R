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