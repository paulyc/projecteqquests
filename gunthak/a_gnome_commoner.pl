# NPC: #a_dastardly_scoundrel (224218)
# Angelox

sub EVENT_COMBAT{
    quest::say("I always enjoy getting a good kill in before breakfast.");
}

sub EVENT_DEATH_COMPLETE{
  quest::emote("'s corpse says 'You have bested me, may your final fate prove less embarrassing.'");
 }

# EOF zone: Gunthak