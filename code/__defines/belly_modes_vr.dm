// Normal digestion modes
/* Bastion of Endeavor Translation
#define DM_DEFAULT								"Default"				// Not a real bellymode, used for handling on 'selective' bellymode prefs.
#define DM_HOLD									"Hold"
#define DM_HOLD_ABSORBED						"Hold Absorbed"			// Not a real bellymode, used for handling different idle messages for absorbed prey.
#define DM_DIGEST								"Digest"
#define DM_ABSORB								"Absorb"
#define DM_UNABSORB								"Unabsorb"
#define DM_DRAIN								"Drain"
#define DM_SHRINK								"Shrink"
#define DM_GROW									"Grow"
#define DM_SIZE_STEAL							"Size Steal"
#define DM_HEAL									"Heal"
#define DM_EGG 									"Encase In Egg"
#define DM_SELECT								"Selective"
*/
#define DM_DEFAULT								"По умолчанию"				// Not a real bellymode, used for handling on 'selective' bellymode prefs.
#define DM_HOLD									"Содержать"
#define DM_HOLD_ABSORBED						"Содержать впитанных"			// Not a real bellymode, used for handling different idle messages for absorbed prey.
#define DM_DIGEST								"Переваривать"
#define DM_ABSORB								"Впитать"
#define DM_UNABSORB								"Отменить впитывание"
#define DM_DRAIN								"Красть силы"
#define DM_SHRINK								"Уменьшать в размере"
#define DM_GROW									"Увеличивать в размере"
#define DM_SIZE_STEAL							"Красть размер"
#define DM_HEAL									"Лечить"
#define DM_EGG 									"Заключить в яйцо"
#define DM_SELECT								"Выборочное"
// End of Bastion of Endeavor Translation

//Addon mode flags
#define DM_FLAG_NUMBING			0x1
#define DM_FLAG_STRIPPING		0x2
#define DM_FLAG_LEAVEREMAINS	0x4
#define DM_FLAG_THICKBELLY		0x8
#define DM_FLAG_AFFECTWORN		0x10
#define DM_FLAG_JAMSENSORS		0x20
#define DM_FLAG_FORCEPSAY		0x40

//Item related modes
/* Bastion of Endeavor Translation
#define IM_HOLD									"Hold"
#define IM_DIGEST_FOOD							"Digest (Food Only)"
#define IM_DIGEST								"Digest"
*/
#define IM_HOLD									"Содержать"
#define IM_DIGEST_FOOD							"Переваривать (только пищу)"
#define IM_DIGEST								"Переваривать"
// End of Bastion of Endeavor Translation

//Stance for hostile mobs to be in while devouring someone.
#define HOSTILE_STANCE_EATING	99

// Defines for weight system
#define MIN_MOB_WEIGHT			70
#define MAX_MOB_WEIGHT			500
#define MIN_NUTRITION_TO_GAIN	450	// Above this amount you will gain weight
#define MAX_NUTRITION_TO_LOSE	50	// Below this amount you will lose weight
// #define WEIGHT_PER_NUTRITION	0.0285 // Tuned so 1050 (nutrition for average mob) = 30 lbs
