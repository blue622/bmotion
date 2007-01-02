## bMotion simple plugin: sneeze
#
# $Id$
#

###############################################################################
# This is a bMotion plugin
# Copyright (C) James Michael Seward 2000-2002
#
# This program is covered by the GPL, please refer the to LICENCE file in the
# distribution; further information can be found in the headers of the scripts
# in the modules directory.
###############################################################################

bMotion_plugin_add_simple "sneeze" "^(\\*?hatsjoe\\*?|wachoo|\\*sneezes?\\*|\\*?atcho{2,6}\\*?)" 60 "%VAR{bless_yous}" "en"
bMotion_plugin_add_action_simple "sneeze" "^sneezes" 60 "%VAR{bless_yous}" "en"

# abstracts
bMotion_abstract_register "bless_yous"
bMotion_abstract_batchadd "bless_yous" {
  "gesuntheit"
  "bless you"
  "Bless you"
  "/hands %% a tissue"
  "e%REPEAT{2:5:w}%|*wipe*"
  "hehe, someone must be talking about you %VAR{smiles}"
  "good thing I bought this haz-mat suit"
  "Rogue bogey!"
  "/ducks"
  "/hides behind %ruser"   
  "Great. Now I'm gonna get a cold %VAR{unsmiles}"
  "Eek. Don't give it to me"
  "%% - I recommend %VAR{sillyThings}"
}

# TODO: bit odd this? remove mentions of it and use above
bMotion_abstract_register "blessyous"
bMotion_abstract_batchadd "blessyous" {
  "%VAR{bless_yous}"
}
