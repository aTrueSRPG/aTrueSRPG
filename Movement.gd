extends Node

#####LEGEND#####

# - SEGMENTS - #

#Global Variables                  [GVAR]
#Main Calls                        [MCALLS]
#External Calls/Imports            [ECALLS]
#Terrain/Area/Map Calls/Imports    [TCALLS]
#Display Management                [DMGT]

# - FUNCTIONS - #
# move():                            [MV001]
# movementCheck():                   [MV002]
# lockCharacterMove():               [MV003]
# completeMove():                    [MV004]
# soar():                            [MV005]
# getPlayerMovementItems():          [MV006]
# getMovementMissionBonus():         [MV007]
# chestCheck():                      [MV008]
# updateBuffs():                     [MV009]
# terrainCheck():                    [MV010]
# trapCheck():                       [MV011]
# idleCheck():                       [MV012]
# turnsTrapped():                    [MV013] 
# entityCheck():                     [MV014]
# moveButton():                      [MV015]
# cancelMoveButton():                [MV016]
# characterDirection():              [MV017]
# cameraPosition():                  [MV018]
# showPlayerMove():                  [MV019]
# soarAnimation():                   [MV020]


#####LEGEND END#####


#####ORGANISATION CONVENTION#####

#---------Function name & Description-----------#                     [Function Identifier]
#func NAME_OF_FUNCTION():
# Function Description
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#
# Function Variables placed here
#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#

# OO - - <> - - Dependencies - - <> - - OO #
# Required imports done here
# OO - - <> - - Dependencies End - - <> - - OO #

# XX - - - - - Function Body - - - - - XX #
# Functions main body used here
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########  <-pun level >9000
#Detailed info on the function and its interactions are placed here
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#

#####ORGANISATION CONVENTION END#####



##Delete this crap once its working
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
##delete this crap once its working^


##TEMPORARY PLACEHOLDERS##  - Should be denoted with [TPLACE] in code
#these are temporary variables for uncreated import functions to test that the module is working correctly

var characterMovePerTurn
var characterMoveType
var characterIdleType
var canFly
var isFlying (bool true false)
var characterJumpType
var atk
var defend
var standby
var tempBow
var tempXBow
var tempSword
var tempTrapAerial
var tempTrapGrounded
var turnsTrapped


Arrays -
chestLocation
terrainType ie A3
areaBuff
areaDebuff




##TEMPORARY PLACEHOLDERS END##



#<**************************************************Global Variables***********************************-> [GVAR]
# The amount of remaining turns a character has, initially imported from character information node
# updated upon movement before lockCharacterMove(): is used
#this is a global variable so that the back/cancel button can update this variable whilst still being accessable from
#the base move(): function
var movesThisTurn = 



# <---------------------------------------------------------------------->
# The distance a player can move after applying all buffs/item bonuses and special abilities
#this is a global variable so that it can be updated as certain functions are run/applied to it
var distanceToMove = 






#Functions - 
#<**************************************************Main calls*******************************************> [MCALLS]


#---------Function name & Description-----------#                     [MV001]
#func move():
# calls the required functions with the character node being passed as a parameter so that all movement is handled equally across multiple character types terrain etc
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#

# OO - - <> - - Dependencies - - <> - - OO #

# OO - - <> - - Dependencies End - - <> - - OO #

# XX - - - - - Function Body - - - - - XX #

# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV002]
#func movementCheck():
	# imports terrainCheck(): trapCheck(): and entityCheck(): to determine if a players move is legal
	# passes values to showPlayerMove(): 
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#
	
# Characters Jump height 
# 1 - Small jump (blockType plus or minus 2)
# 2 - Average jump (blockType plus or minus 4)
# 3 - Large jump (blockType plus or minus 6)
# 4 - Universal jump (jump can be used regardless of target block type)

# Example - characterJumpHeight = 2 - Character can jump from a block height of 3 up to a block-height of 7

var characterJumpHeight = 
	
#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
# if flying (soar) is in effect increases range of base movement, returns user to grounded location
# if flying is in effect but character has attacked no movement is allowed
#current blocktype is imported from the terrainCheck(): function
#targetBlock is tested against currentblock
	# tests are - non-standable-entity placed - jump height - movementType - traps in relation to movement type - movable (ally) entity in path
	# tests loop and populate an array of vector2 co-ordinates that are classified as legal moves
	# returns an array of available movements to showPlayerMove(): when called
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV003]
#func lockCharacterMove():
#this function should lock the players movement as required, integrates with the back button to allow movement on cancellation of original move
# prevents movement during turn flight/soar is used
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
#stores the initial block the character was standing on after a move command has been completed
# when player moves the block is still stored
# upon executing an end movement command (atk defend etc) the initial block is updated to be equal to the current block
# initial block is tested against currentblock, if they are equal further movement is not allowed
# for characters with multiple move cycles per turn this is looped to allow for extra movement
# when a back/cancel movement command is used the initial block is passed to the move command to reset the character state
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV004]
#func completeMove():
#	this function should be called when a character is trapped, atks, ends turn, standsby or defends. 
#	removes a token from playerMovesAvailable.
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
# when a character triggers a trap as defined by the availablemoves array the lockCharacterMove(): function is called
#this sets the initialBlock to equal the currentBlock disallowing movement
#as is with traps the same sequence occurs when an atk defend/standby call is made. 
#on defend/standby the characterDirection(): function should be called to allow for the user to set the characters direction
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV005]
#func soar():
# this function will lock character movement and provide buffs to the characters next movement phase
# increases range on ranged weapons
# prevents close range combat/counterattack
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
#checks if character is currently flying
#checks if movement has been made, if a movement has been completed this turn by the character disallow "flight" ability
#creates flight time counter to prevent fly stall gameplay
#calls lockcharactermove to prevent further movement on the turn it is used
#locks weapons and melee abilities
# increments flight time counter on completeMove
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#<******************************************************External Calls/Imports**************************************>  [ECALLS]
#---------Function name & Description-----------#                     [MV006]
#func getPlayerMovementItems():
#	# this should gather all movement related items the player has equipped to be used in movement calculations
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
#uses a sort function to get equipped items that affect movement
#adds multiplies divides and passes this value to the main move(): function
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV007]
#func getMovementMissionBonus():
#	this function handles any mission bonuses to movement, should get this info from a missionBonuses node
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
#gets additonal mission specific movement bonuses
#passes these values to the move(): function
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV008]
#func chestCheck():
#	#this function should check to see if there is a chest in the way of the players movement/on the tile the player lands on
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
#gets current chest locations from the Map node
#gets hidden chest locations from the map node
#tests intendedPlayerMovement against this array
#if player lands/stands directly on a chest they retrieve the chest on completeMove():
#temporarily unobtainable chests (covered with grass snow etc) should be handled by the map node and made "hidden" after blockage is removed
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV009]
#func updateBuffs():
#	this function updates buffs applied to the player based on their new position and removes buffs when relocating
# this function should probably be stored in the buffs node with a variable created here to pass on old/new position
# this function should also check status debuffs ie cripple/paralysis
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
# With great difficulty LOL
# tests current block with buffs applied locally via the buffs node
# tests the block landed on (after factoring completeMove():) so that if you aim for block c but land on block b due to
# a trap it applies the buffs correctly
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#<******************************************************Terrain/Area/Map Calls/Imports*******************************> [TCALLS]


#---------Function name & Description-----------#                     [MV010]
#func terrainCheck():
#	handles importing and repositioning of the type of block and block height allowing/disallowing for jumping,
# 	should pass a value to the map node to allocate a player token to a square
# 	should create an array to be used by entityCheck(): and movementCheck(): to determine a players standable/pathable area	
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#
# The type of block the user is standing on, imported from "Terrain" node
# <Variables> #
#  - Typing -
# A - Stone
# B - Field
# C - Cobblestone Pathway
# D - Sand
# E - Dirt Pathway
# F - Metallic
#-------------
#  - Height -
# 1 - No height default texture
# 2 - 8px
# 3 - 16px 
# 4 - 24px
# 5 - 32px
# 6 - 40px 
# 7 - 48px
# 8 - 56px
# 9 - 64px

# Example, blockType = A3 - Stone type block with height of 16 pixels
var blockType = 
#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########

# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV011]
#func trapCheck():
#	checks if there is a trap on the players movement path and 
# 	calls complete move if a trap is triggered. needs to factor different movement types
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#
# <Variables>#
# The type of movement the character uses
# 1 - Walk
# 2 - Teleport
# 3 - Fly
# 4 - Hopping
# 5 - Immobile

# Example - characterMoveType = 3 - Character flies to avoid block height obstructions and grounded traps

var characterMoveType = 

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV012]
#func idleCheck():
# The way the character stands when idle
# used in the calculation of standby based traps/traps that activate when moving off a block
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#
# 1 - Stand
# 2 - Float
# 3 - Bounce

# Example - characterIdleType = 2 - Character floats and is not affected by on ground traps/damaging blockTypes

var characterIdleType = 
#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV013]
#func turnsTrapped():
# trapMap array - gets the trapMap array from the traps node which is then tested against the players
# intended movement path. if a trap is to be triggered this will completeMove(): and hold the player on the trapped block
# trapType should be called from Traps node if a trap is detected
#---------Function name & Description End-----------#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#
# Trapped Turns
# 0 - Trapped for current turn only
# 1 - Trapped for the next turn in addition to current turn
# 3 - Trapped for the next 2 turns in addition to the current turn

# Example trappedTurns = 2 - If a character is caught using a multiturn trap this will lock players movement for 2 turns

var trappedTurns = 
#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV014]
#func entityCheck():
	#grabs info from terrainCheck(): and character info to see if an intended destination can be reached or if it is obstructed/occupied by a non movable entity
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#<*******************************************************Display Management******************************************> [DMGT] 

#---------Function name & Description-----------#                     [MV015]
#func moveButton():
# 	handles the creation/removal of the move button/movement indicators as necessary
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV016]
#func cancelMoveButton():
# this function cancels the previous movement of the character returning them to their original position and allowing for an altered movement
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV017]
#func characterDirection(): 
	# changes the direction of the character relevant to the position they moved from/attacked/was attacked from, updates sprites
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV018]
#func cameraPosition():
	# moves the camera when - player moves/cancels movement - locks camera when - player is selecting a target tile for movement
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV019]
#func showPlayerMove():
#	#this function should gather all required information (objects in the way block types distance etc) to show
#	# the location a player can move to
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#---------Function name & Description-----------#                     [MV020]
#func soarAnimation():
# displays the soar animation
# sets the players next movement animation as a soar type animation (drop, fly to location)
#<<-----------Function Name & Description End----------------->>#

#-<>-<>-<>-<>-<>-Function Variables-<>-<>-<>-<>-<>-#

#-<>-<>-<>-<>-<>-Function Variables End-<>-<>-<>-<>-<>-#
# OO - - <> - - Dependencies - - <> - - OO #
# OO - - <> - - Dependencies End - - <> - - OO #
# XX - - - - - Function Body - - - - - XX #
# XX - - - - - Function Body End - - - - - XX #

########## How It Functions ##########
########## How It Functions END ##########


# <> Function Seperator <> ----- <> Function Seperator <> <> Function Seperator <> ----- <> Function Seperator <>#


#<-------------------------------initial prototyping---------------------------------> 

#This section is used to manage the flow/positioning of the user
#Checks: 
#
#if chests are on the path the player has chosen
#if the player has moves remaining on their moves counter
#if there is an invisible enemy on the path the player has chosen
#if there are traps on the path the player has chosen
#applies/removes local area buffs relevant to characters within range of the player.
#assigns a block height to determine if players can jump up/down
#checks to see if there are status ailments affecting a players movement distance
#checks the maps standable zones upon load
#player movement type ie teleport flight walking
#shows the buffs screen as required
#relocates buttons/confirms movement on submission of an atk command
#shows the players available moves
#restricts movement if charge attack is used
#faces player in the correct direction as movement/attack is applied/at the end of the turn
#end turn locks movement
#defend locks movement
#
#variables used/imported/exported
#
#movesThisTurn
#Blocktype - height of block standable/non standable etc
#distance - used for calculating the players distance this turn, affected by buffs, characters base movement etc
#server variables for locking out regEdit type hacks
#
#interactions with other componenets
#items
#buffs
#atk
#back/confirm
#ranked bonus
#serverside prototyping
#traps
#terrain
#
