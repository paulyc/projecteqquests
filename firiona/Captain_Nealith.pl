#Author: Shadestrike
#NPCs Involved: Captain Nealith
#Items Involved: A Canine( ItemID#12977)
#Zone: Firiona Vie
##############
# items: 12977, 13155, 18076, 12978

sub EVENT_SAY {
  if($text=~/Hail/i){
    quest::say("Hail. adventurer!! Stand tall and fight for the forest folk and all good races of Norrath. We shall claim this land for the kingdom of Thex! My warriors shall not fail. Already we patrol deepin the wilds of Kunark. We welcome all mercenaries and urge adventurers to [join the defense of the outpost].");
  }
  if($text=~/join the defense/i){
    quest::say("I salute you!! Join the hunt. Reports from the front line indicate a rise in the drolvarg population. Abandon your fear and slay these beasts for the greater good. Already, they have taken far too many lives, even my sibling's!! I shall pay you your wages upon the return of four drolvarg teeth.");
  }
  if($text=~/sibling/i){ #Captain Nealith's Brother quest
    quest::emote("appears saddened by the mention of his sibling. 'My brother Marltek has been missing for quite some time. I found coarse Drolvarg hair inside his tent which leads me to believe he has become a meal for the dogs. CURSE THE EVIL DOGS!! I shall see them all dead!!'");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 12977 => 4)){
    quest::emote("tosses the teeth into a very large cask full of similar teeth.");
    quest::say("Fine work, $name. I wish all my own troops showed the same tenacity. I salute you. This will keep you well fed during your long patrols. Use your wages to better equip yourself. Continue the fight!! The General is pleased.");
    quest::summonitem(13155,7); # Item: Elven Trail Mix
    quest::exp(10000);
    quest::givecash(7,12,3,0);
    quest::faction(248,1); # Faction: Inhabitants of Firiona Vie
    quest::faction(312,1); # Faction: Storm Guard
    quest::faction(441,-3); # Faction: Legion of Cabilis
    quest::faction(313,-3); # Faction: Pirates of Gunthak
  }
  if (plugin::check_handin(\%itemcount,18076 => 1)) { #blood soaked note Captain Nealith's Brother quest
    quest::emote ("nearly faints after reading the letter. 'Dear Marltek!! I shall miss you. There is more evil in this land!! Madness beyond description. Thank you $name. You put my soul at ease and give me new direction. Please accept my brothers blade. He found it in the wilds. May you use it to slay many Drolvarg!!'");
    quest::exp(25580); #no clue actual amount of xp
    quest::givecash(0,0,0,14); #14pp another guess
    quest::summonitem(12978); #Glaive of Marltek
    quest::faction(5025,50); # +Inhabitants of Firiona Vie
    quest::faction(326,50); # +Emerald Warriors
    quest::faction(312,50); # +Storm Guard
    quest::faction(313,-50); # -Pirates of Gunthak
    quest::faction(441,-50); # -Legion of Cabilis
  }
  quest::emote("holds the canine in his palm."); #These next two lines are most likely if you don't turn in enough teeth.
  quest::say("Good work, but you will have to slay more than this to earn your wages.");
  plugin::return_items(\%itemcount)
} 
