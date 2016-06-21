sub EVENT_SAY {

	if ($pop_sol_ro_solusk == 1) {
	
		if ($text=~/hail/i) {
			quest::say("So, you actually defeated Solusek Ro. Impressive, for a mortal. Enjoy your stay in the Burning Lands. It has been a while since I smelt a burning $race .");
		}

	} else {

		if ($text=~/hail/i) {
			quest::say("Greetings mortal. Are you here about this [" . quest::saylink("portal's destination") . "]? I have been getting a lot of questions about it lately.");
		}

		if ($text=~/portal's destination/i) {
			quest::say("As I suspected. This portal leads to Doomfire, the Burning Lands, home to Fennin Ro, the Tyrant of Fire. Or rather, it used to. His son, [" . quest::saylink("Solusek Ro") . "], disapproved of the number of you mortals entering his father's plane, and so he sealed it. It's a shame really, I was starting to enjoy the sounds you mortals make when you fall into the lava.");
		}

		if ($text=~/solusek ro/i) {
			quest::say("So I've got another one eh? Alright, well if you really want to enter the relm of the flame, you're going to have to 'convince' the Burning Prince to remove his seal. He has been staying in his tower lately, so you will be able to find him there. Not that it matters. Nobody ever makes it to see him anyways.");
		}
		if (($text=~/elemental essences/i) && defined($qglobals{mage_epic}) && ($qglobals{mage_epic}==6)) {
			quest::say("Ahh the eternal search for knowledge, both bane and blessing to mortals. So, you seek the Elemental Essence of Fire? I have heard very little of it in many years, although, come to think of it, I have heard rumors of a powerful elemental trapped in the personal forge of Tagrin. I suspect that might be a good place to begin your search at the very least, but you'll need to find someone there willing to speak with you. Good luck seeker.");
			quest::setglobal("mage_epic_fire1", 1, 5, "F");
		}		
		
	}
{
$pop_pon_hedge_jezith=undef;
$pop_pon_construct=undef;
$pop_ponb_terris=undef;
$pop_ponb_poxbourne=undef;
$pop_poi_dragon=undef;
$pop_poi_behometh_preflag=undef;
$pop_poi_behometh_flag=undef;
$pop_pod_alder_fuirstel=undef;
$pop_pod_grimmus_planar_projection=undef;
$pop_pod_elder_fuirstel=undef;
$pop_poj_mavuin=undef;
$pop_poj_tribunal=undef;
$pop_poj_valor_storms=undef;
$pop_poj_execution=undef;
$pop_poj_flame=undef;
$pop_poj_hanging=undef;
$pop_poj_lashing=undef;
$pop_poj_stoning=undef;
$pop_poj_torture=undef;
$pop_pov_aerin_dar=undef;
$pop_pos_askr_the_lost=undef;
$pop_pos_askr_the_lost_final=undef;
$pop_cod_preflag =undef;
$pop_cod_bertox=undef;
$pop_cod_final=undef;
$pop_pot_shadyglade=undef;
$pop_pot_newleaf=undef;
$pop_pot_saryrn=undef;
$pop_pot_saryn_final=undef;
$pop_hoh_faye=undef;
$pop_hoh_trell=undef;
$pop_hoh_garn=undef;
$pop_hohb_marr=undef;
$pop_bot_agnarr=undef;
$pop_bot_karana=undef;
$pop_tactics_tallon =undef;
$pop_tactics_vallon=undef;
$pop_tactics_ralloz=undef;
$pop_elemental_grand_librarian=undef;
$pop_sol_ro_arlyxir=undef;
$pop_sol_ro_dresolik=undef;
$pop_sol_ro_jiva=undef;
$pop_sol_ro_rizlona=undef;
$pop_sol_ro_xuzl=undef;
$pop_sol_ro_solusk=undef;
$pop_fire_fennin_projection=undef;
$pop_wind_xegony_projection=undef;
$pop_water_coirnav_projection=undef;
$pop_eartha_arbitor_projection=undef;
$pop_earthb_rathe=undef;
$pop_time_maelin=undef;
}
}