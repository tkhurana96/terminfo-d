module terminfo.d.Capabilities;

enum BOOL {
	autoLeftMargin,
	autoRightMargin,
	noEscCtlc,
	ceolStandoutGlitch,
	eatNewlineGlitch,
	eraseOverstrike,
	genericType,
	hardCopy,
	hasMetaKey,
	hasStatusLine,
	insertNullGlitch,
	memoryAbove,
	memoryBelow,
	moveInsertMode,
	moveStandoutMode,
	overStrike,
	statusLineEscOk,
	destTabsMagicSmso,
	tildeGlitch,
	transparentUnderline,
	xonXoff,
	needsXonXoff,
	prtrSilent,
	hardCursor,
	nonRevRmcup,
	noPadChar,
	nonDestScrollRegion,
	canChange,
	backColorErase,
	hueLightnessSaturation,
	colAddrGlitch,
	crCancelsMicroMode,
	hasPrintWheel,
	rowAddrGlitch,
	semiAutoRightMargin,
	cpiChangesRes,
	lpiChangesRes,
	backspacesWithBs,
	crtNoScrolling,
	noCorrectlyWorkingCr,
	gnuHasMetaKey,
	linefeedIsNewline,
	hasHardwareTabs,
	returnDoesClrEol
}

enum NUM {
	columns,
	initTabs,
	lines,
	linesOfMemory,
	magicCookieGlitch,
	paddingBaudRate,
	virtualTerminal,
	widthStatusLine,
	numLabels,
	labelHeight,
	labelWidth,
	maxAttributes,
	maximumWindows,
	maxColors,
	maxPairs,
	noColorVideo,
	bufferCapacity,
	dotVertSpacing,
	dotHorzSpacing,
	maxMicroAddress,
	maxMicroJump,
	microColSize,
	microLineSize,
	numberOfPins,
	outputResChar,
	outputResLine,
	outputResHorzInch,
	outputResVertInch,
	printRate,
	wideCharSize,
	buttons,
	bitImageEntwining,
	bitImageType,
	magicCookieGlitchUl,
	carriageReturnDelay,
	newLineDelay,
	backspaceDelay,
	horizontalTabDelay,
	numberOfFunctionKeys
}

enum STR {
	backTab,
	bell,
	carriageReturn,
	changeScrollRegion,
	clearAllTabs,
	clearScreen,
	clrEol,
	clrEos,
	columnAddress,
	commandCharacter,
	cursorAddress,
	cursorDown,
	cursorHome,
	cursorInvisible,
	cursorLeft,
	cursorMemAddress,
	cursorNormal,
	cursorRight,
	cursorToLl,
	cursorUp,
	cursorVisible,
	deleteCharacter,
	deleteLine,
	disStatusLine,
	downHalfLine,
	enterAltCharsetMode,
	enterBlinkMode,
	enterBoldMode,
	enterCaMode,
	enterDeleteMode,
	enterDimMode,
	enterInsertMode,
	enterSecureMode,
	enterProtectedMode,
	enterReverseMode,
	enterStandoutMode,
	enterUnderlineMode,
	eraseChars,
	exitAltCharsetMode,
	exitAttributeMode,
	exitCaMode,
	exitDeleteMode,
	exitInsertMode,
	exitStandoutMode,
	exitUnderlineMode,
	flashScreen,
	formFeed,
	fromStatusLine,
	init1string,
	init2string,
	init3string,
	initFile,
	insertCharacter,
	insertLine,
	insertPadding,
	keyBackspace,
	keyCatab,
	keyClear,
	keyCtab,
	keyDc,
	keyDl,
	keyDown,
	keyEic,
	keyEol,
	keyEos,
	keyF0,
	keyF1,
	keyF10,
	keyF2,
	keyF3,
	keyF4,
	keyF5,
	keyF6,
	keyF7,
	keyF8,
	keyF9,
	keyHome,
	keyIc,
	keyIl,
	keyLeft,
	keyLl,
	keyNpage,
	keyPpage,
	keyRight,
	keySf,
	keySr,
	keyStab,
	keyUp,
	keypadLocal,
	keypadXmit,
	labF0,
	labF1,
	labF10,
	labF2,
	labF3,
	labF4,
	labF5,
	labF6,
	labF7,
	labF8,
	labF9,
	metaOff,
	metaOn,
	newline,
	padChar,
	parmDch,
	parmDeleteLine,
	parmDownCursor,
	parmIch,
	parmIndex,
	parmInsertLine,
	parmLeftCursor,
	parmRightCursor,
	parmRindex,
	parmUpCursor,
	pkeyKey,
	pkeyLocal,
	pkeyXmit,
	printScreen,
	prtrOff,
	prtrOn,
	repeatChar,
	reset1string,
	reset2string,
	reset3string,
	resetFile,
	restoreCursor,
	rowAddress,
	saveCursor,
	scrollForward,
	scrollReverse,
	setAttributes,
	setTab,
	setWindow,
	tab,
	toStatusLine,
	underlineChar,
	upHalfLine,
	initProg,
	keyA1,
	keyA3,
	keyB2,
	keyC1,
	keyC3,
	prtrNon,
	charPadding,
	acsChars,
	plabNorm,
	keyBtab,
	enterXonMode,
	exitXonMode,
	enterAmMode,
	exitAmMode,
	xonCharacter,
	xoffCharacter,
	enaAcs,
	labelOn,
	labelOff,
	keyBeg,
	keyCancel,
	keyClose,
	keyCommand,
	keyCopy,
	keyCreate,
	keyEnd,
	keyEnter,
	keyExit,
	keyFind,
	keyHelp,
	keyMark,
	keyMessage,
	keyMove,
	keyNext,
	keyOpen,
	keyOptions,
	keyPrevious,
	keyPrint,
	keyRedo,
	keyReference,
	keyRefresh,
	keyReplace,
	keyRestart,
	keyResume,
	keySave,
	keySuspend,
	keyUndo,
	keySbeg,
	keyScancel,
	keyScommand,
	keyScopy,
	keyScreate,
	keySdc,
	keySdl,
	keySelect,
	keySend,
	keySeol,
	keySexit,
	keySfind,
	keyShelp,
	keyShome,
	keySic,
	keySleft,
	keySmessage,
	keySmove,
	keySnext,
	keySoptions,
	keySprevious,
	keySprint,
	keySredo,
	keySreplace,
	keySright,
	keySrsume,
	keySsave,
	keySsuspend,
	keySundo,
	reqForInput,
	keyF11,
	keyF12,
	keyF13,
	keyF14,
	keyF15,
	keyF16,
	keyF17,
	keyF18,
	keyF19,
	keyF20,
	keyF21,
	keyF22,
	keyF23,
	keyF24,
	keyF25,
	keyF26,
	keyF27,
	keyF28,
	keyF29,
	keyF30,
	keyF31,
	keyF32,
	keyF33,
	keyF34,
	keyF35,
	keyF36,
	keyF37,
	keyF38,
	keyF39,
	keyF40,
	keyF41,
	keyF42,
	keyF43,
	keyF44,
	keyF45,
	keyF46,
	keyF47,
	keyF48,
	keyF49,
	keyF50,
	keyF51,
	keyF52,
	keyF53,
	keyF54,
	keyF55,
	keyF56,
	keyF57,
	keyF58,
	keyF59,
	keyF60,
	keyF61,
	keyF62,
	keyF63,
	clrBol,
	clearMargins,
	setLeftMargin,
	setRightMargin,
	labelFormat,
	setClock,
	displayClock,
	removeClock,
	createWindow,
	gotoWindow,
	hangup,
	dialPhone,
	quickDial,
	tone,
	pulse,
	flashHook,
	fixedPause,
	waitTone,
	user0,
	user1,
	user2,
	user3,
	user4,
	user5,
	user6,
	user7,
	user8,
	user9,
	origPair,
	origColors,
	initializeColor,
	initializePair,
	setColorPair,
	setForeground,
	setBackground,
	changeCharPitch,
	changeLinePitch,
	changeResHorz,
	changeResVert,
	defineChar,
	enterDoublewideMode,
	enterDraftQuality,
	enterItalicsMode,
	enterLeftwardMode,
	enterMicroMode,
	enterNearLetterQuality,
	enterNormalQuality,
	enterShadowMode,
	enterSubscriptMode,
	enterSuperscriptMode,
	enterUpwardMode,
	exitDoublewideMode,
	exitItalicsMode,
	exitLeftwardMode,
	exitMicroMode,
	exitShadowMode,
	exitSubscriptMode,
	exitSuperscriptMode,
	exitUpwardMode,
	microColumnAddress,
	microDown,
	microLeft,
	microRight,
	microRowAddress,
	microUp,
	orderOfPins,
	parmDownMicro,
	parmLeftMicro,
	parmRightMicro,
	parmUpMicro,
	selectCharSet,
	setBottomMargin,
	setBottomMarginParm,
	setLeftMarginParm,
	setRightMarginParm,
	setTopMargin,
	setTopMarginParm,
	startBitImage,
	startCharSetDef,
	stopBitImage,
	stopCharSetDef,
	subscriptCharacters,
	superscriptCharacters,
	theseCauseCr,
	zeroMotion,
	charSetNames,
	keyMouse,
	mouseInfo,
	reqMousePos,
	getMouse,
	setAForeground,
	setABackground,
	pkeyPlab,
	deviceType,
	codeSetInit,
	set0DesSeq,
	set1DesSeq,
	set2DesSeq,
	set3DesSeq,
	setLrMargin,
	setTbMargin,
	bitImageRepeat,
	bitImageNewline,
	bitImageCarriageReturn,
	colorNames,
	defineBitImageRegion,
	endBitImageRegion,
	setColorBand,
	setPageLength,
	displayPcChar,
	enterPcCharsetMode,
	exitPcCharsetMode,
	enterScancodeMode,
	exitScancodeMode,
	pcTermOptions,
	scancodeEscape,
	altScancodeEsc,
	enterHorizontalHlMode,
	enterLeftHlMode,
	enterLowHlMode,
	enterRightHlMode,
	enterTopHlMode,
	enterVerticalHlMode,
	setAAttributes,
	setPglenInch,
	termcapInit2,
	termcapReset,
	linefeedIfNotLf,
	backspaceIfNotBs,
	otherNonFunctionKeys,
	arrowKeyMap,
	acsUlcorner,
	acsLlcorner,
	acsUrcorner,
	acsLrcorner,
	acsLtee,
	acsRtee,
	acsBtee,
	acsTtee,
	acsHline,
	acsVline,
	acsPlus,
	memoryLock,
	memoryUnlock,
	boxChars1
}

immutable string[3][] BOOL_NAMES = [
	["bw",	"auto_left_margin",	"autoLeftMargin"],
	["am",	"auto_right_margin",	"autoRightMargin"],
	["xsb",	"no_esc_ctlc",	"noEscCtlc"],
	["xhp",	"ceol_standout_glitch",	"ceolStandoutGlitch"],
	["xenl",	"eat_newline_glitch",	"eatNewlineGlitch"],
	["eo",	"erase_overstrike",	"eraseOverstrike"],
	["gn",	"generic_type",	"genericType"],
	["hc",	"hard_copy",	"hardCopy"],
	["km",	"has_meta_key",	"hasMetaKey"],
	["hs",	"has_status_line",	"hasStatusLine"],
	["in",	"insert_null_glitch",	"insertNullGlitch"],
	["da",	"memory_above",	"memoryAbove"],
	["db",	"memory_below",	"memoryBelow"],
	["mir",	"move_insert_mode",	"moveInsertMode"],
	["msgr",	"move_standout_mode",	"moveStandoutMode"],
	["os",	"over_strike",	"overStrike"],
	["eslok",	"status_line_esc_ok",	"statusLineEscOk"],
	["xt",	"dest_tabs_magic_smso",	"destTabsMagicSmso"],
	["hz",	"tilde_glitch",	"tildeGlitch"],
	["ul",	"transparent_underline",	"transparentUnderline"],
	["xon",	"xon_xoff",	"xonXoff"],
	["nxon",	"needs_xon_xoff",	"needsXonXoff"],
	["mc5i",	"prtr_silent",	"prtrSilent"],
	["chts",	"hard_cursor",	"hardCursor"],
	["nrrmc",	"non_rev_rmcup",	"nonRevRmcup"],
	["npc",	"no_pad_char",	"noPadChar"],
	["ndscr",	"non_dest_scroll_region",	"nonDestScrollRegion"],
	["ccc",	"can_change",	"canChange"],
	["bce",	"back_color_erase",	"backColorErase"],
	["hls",	"hue_lightness_saturation",	"hueLightnessSaturation"],
	["xhpa",	"col_addr_glitch",	"colAddrGlitch"],
	["crxm",	"cr_cancels_micro_mode",	"crCancelsMicroMode"],
	["daisy",	"has_print_wheel",	"hasPrintWheel"],
	["xvpa",	"row_addr_glitch",	"rowAddrGlitch"],
	["sam",	"semi_auto_right_margin",	"semiAutoRightMargin"],
	["cpix",	"cpi_changes_res",	"cpiChangesRes"],
	["lpix",	"lpi_changes_res",	"lpiChangesRes"],
	["OTbs",	"backspaces_with_bs",	"backspacesWithBs"],
	["OTns",	"crt_no_scrolling",	"crtNoScrolling"],
	["OTnc",	"no_correctly_working_cr",	"noCorrectlyWorkingCr"],
	["OTMT",	"gnu_has_meta_key",	"gnuHasMetaKey"],
	["OTNL",	"linefeed_is_newline",	"linefeedIsNewline"],
	["OTpt",	"has_hardware_tabs",	"hasHardwareTabs"],
	["OTxr",	"return_does_clr_eol",	"returnDoesClrEol"]
];

immutable string[3][] NUM_NAMES = [
	["cols",	"columns",	"columns"],
	["it",	"init_tabs",	"initTabs"],
	["lines",	"lines",	"lines"],
	["lm",	"lines_of_memory",	"linesOfMemory"],
	["xmc",	"magic_cookie_glitch",	"magicCookieGlitch"],
	["pb",	"padding_baud_rate",	"paddingBaudRate"],
	["vt",	"virtual_terminal",	"virtualTerminal"],
	["wsl",	"width_status_line",	"widthStatusLine"],
	["nlab",	"num_labels",	"numLabels"],
	["lh",	"label_height",	"labelHeight"],
	["lw",	"label_width",	"labelWidth"],
	["ma",	"max_attributes",	"maxAttributes"],
	["wnum",	"maximum_windows",	"maximumWindows"],
	["colors",	"max_colors",	"maxColors"],
	["pairs",	"max_pairs",	"maxPairs"],
	["ncv",	"no_color_video",	"noColorVideo"],
	["bufsz",	"buffer_capacity",	"bufferCapacity"],
	["spinv",	"dot_vert_spacing",	"dotVertSpacing"],
	["spinh",	"dot_horz_spacing",	"dotHorzSpacing"],
	["maddr",	"max_micro_address",	"maxMicroAddress"],
	["mjump",	"max_micro_jump",	"maxMicroJump"],
	["mcs",	"micro_col_size",	"microColSize"],
	["mls",	"micro_line_size",	"microLineSize"],
	["npins",	"number_of_pins",	"numberOfPins"],
	["orc",	"output_res_char",	"outputResChar"],
	["orl",	"output_res_line",	"outputResLine"],
	["orhi",	"output_res_horz_inch",	"outputResHorzInch"],
	["orvi",	"output_res_vert_inch",	"outputResVertInch"],
	["cps",	"print_rate",	"printRate"],
	["widcs",	"wide_char_size",	"wideCharSize"],
	["btns",	"buttons",	"buttons"],
	["bitwin",	"bit_image_entwining",	"bitImageEntwining"],
	["bitype",	"bit_image_type",	"bitImageType"],
	["OTug",	"magic_cookie_glitch_ul",	"magicCookieGlitchUl"],
	["OTdC",	"carriage_return_delay",	"carriageReturnDelay"],
	["OTdN",	"new_line_delay",	"newLineDelay"],
	["OTdB",	"backspace_delay",	"backspaceDelay"],
	["OTdT",	"horizontal_tab_delay",	"horizontalTabDelay"],
	["OTkn",	"number_of_function_keys",	"numberOfFunctionKeys"]
];

immutable string[3][] STR_NAMES = [
	["cbt",	"back_tab",	"backTab"],
	["bel",	"bell",	"bell"],
	["cr",	"carriage_return",	"carriageReturn"],
	["csr",	"change_scroll_region",	"changeScrollRegion"],
	["tbc",	"clear_all_tabs",	"clearAllTabs"],
	["clear",	"clear_screen",	"clearScreen"],
	["el",	"clr_eol",	"clrEol"],
	["ed",	"clr_eos",	"clrEos"],
	["hpa",	"column_address",	"columnAddress"],
	["cmdch",	"command_character",	"commandCharacter"],
	["cup",	"cursor_address",	"cursorAddress"],
	["cud1",	"cursor_down",	"cursorDown"],
	["home",	"cursor_home",	"cursorHome"],
	["civis",	"cursor_invisible",	"cursorInvisible"],
	["cub1",	"cursor_left",	"cursorLeft"],
	["mrcup",	"cursor_mem_address",	"cursorMemAddress"],
	["cnorm",	"cursor_normal",	"cursorNormal"],
	["cuf1",	"cursor_right",	"cursorRight"],
	["ll",	"cursor_to_ll",	"cursorToLl"],
	["cuu1",	"cursor_up",	"cursorUp"],
	["cvvis",	"cursor_visible",	"cursorVisible"],
	["dch1",	"delete_character",	"deleteCharacter"],
	["dl1",	"delete_line",	"deleteLine"],
	["dsl",	"dis_status_line",	"disStatusLine"],
	["hd",	"down_half_line",	"downHalfLine"],
	["smacs",	"enter_alt_charset_mode",	"enterAltCharsetMode"],
	["blink",	"enter_blink_mode",	"enterBlinkMode"],
	["bold",	"enter_bold_mode",	"enterBoldMode"],
	["smcup",	"enter_ca_mode",	"enterCaMode"],
	["smdc",	"enter_delete_mode",	"enterDeleteMode"],
	["dim",	"enter_dim_mode",	"enterDimMode"],
	["smir",	"enter_insert_mode",	"enterInsertMode"],
	["invis",	"enter_secure_mode",	"enterSecureMode"],
	["prot",	"enter_protected_mode",	"enterProtectedMode"],
	["rev",	"enter_reverse_mode",	"enterReverseMode"],
	["smso",	"enter_standout_mode",	"enterStandoutMode"],
	["smul",	"enter_underline_mode",	"enterUnderlineMode"],
	["ech",	"erase_chars",	"eraseChars"],
	["rmacs",	"exit_alt_charset_mode",	"exitAltCharsetMode"],
	["sgr0",	"exit_attribute_mode",	"exitAttributeMode"],
	["rmcup",	"exit_ca_mode",	"exitCaMode"],
	["rmdc",	"exit_delete_mode",	"exitDeleteMode"],
	["rmir",	"exit_insert_mode",	"exitInsertMode"],
	["rmso",	"exit_standout_mode",	"exitStandoutMode"],
	["rmul",	"exit_underline_mode",	"exitUnderlineMode"],
	["flash",	"flash_screen",	"flashScreen"],
	["ff",	"form_feed",	"formFeed"],
	["fsl",	"from_status_line",	"fromStatusLine"],
	["is1",	"init_1string",	"init1string"],
	["is2",	"init_2string",	"init2string"],
	["is3",	"init_3string",	"init3string"],
	["if",	"init_file",	"initFile"],
	["ich1",	"insert_character",	"insertCharacter"],
	["il1",	"insert_line",	"insertLine"],
	["ip",	"insert_padding",	"insertPadding"],
	["kbs",	"key_backspace",	"keyBackspace"],
	["ktbc",	"key_catab",	"keyCatab"],
	["kclr",	"key_clear",	"keyClear"],
	["kctab",	"key_ctab",	"keyCtab"],
	["kdch1",	"key_dc",	"keyDc"],
	["kdl1",	"key_dl",	"keyDl"],
	["kcud1",	"key_down",	"keyDown"],
	["krmir",	"key_eic",	"keyEic"],
	["kel",	"key_eol",	"keyEol"],
	["ked",	"key_eos",	"keyEos"],
	["kf0",	"key_f0",	"keyF0"],
	["kf1",	"key_f1",	"keyF1"],
	["kf10",	"key_f10",	"keyF10"],
	["kf2",	"key_f2",	"keyF2"],
	["kf3",	"key_f3",	"keyF3"],
	["kf4",	"key_f4",	"keyF4"],
	["kf5",	"key_f5",	"keyF5"],
	["kf6",	"key_f6",	"keyF6"],
	["kf7",	"key_f7",	"keyF7"],
	["kf8",	"key_f8",	"keyF8"],
	["kf9",	"key_f9",	"keyF9"],
	["khome",	"key_home",	"keyHome"],
	["kich1",	"key_ic",	"keyIc"],
	["kil1",	"key_il",	"keyIl"],
	["kcub1",	"key_left",	"keyLeft"],
	["kll",	"key_ll",	"keyLl"],
	["knp",	"key_npage",	"keyNpage"],
	["kpp",	"key_ppage",	"keyPpage"],
	["kcuf1",	"key_right",	"keyRight"],
	["kind",	"key_sf",	"keySf"],
	["kri",	"key_sr",	"keySr"],
	["khts",	"key_stab",	"keyStab"],
	["kcuu1",	"key_up",	"keyUp"],
	["rmkx",	"keypad_local",	"keypadLocal"],
	["smkx",	"keypad_xmit",	"keypadXmit"],
	["lf0",	"lab_f0",	"labF0"],
	["lf1",	"lab_f1",	"labF1"],
	["lf10",	"lab_f10",	"labF10"],
	["lf2",	"lab_f2",	"labF2"],
	["lf3",	"lab_f3",	"labF3"],
	["lf4",	"lab_f4",	"labF4"],
	["lf5",	"lab_f5",	"labF5"],
	["lf6",	"lab_f6",	"labF6"],
	["lf7",	"lab_f7",	"labF7"],
	["lf8",	"lab_f8",	"labF8"],
	["lf9",	"lab_f9",	"labF9"],
	["rmm",	"meta_off",	"metaOff"],
	["smm",	"meta_on",	"metaOn"],
	["nel",	"newline",	"newline"],
	["pad",	"pad_char",	"padChar"],
	["dch",	"parm_dch",	"parmDch"],
	["dl",	"parm_delete_line",	"parmDeleteLine"],
	["cud",	"parm_down_cursor",	"parmDownCursor"],
	["ich",	"parm_ich",	"parmIch"],
	["indn",	"parm_index",	"parmIndex"],
	["il",	"parm_insert_line",	"parmInsertLine"],
	["cub",	"parm_left_cursor",	"parmLeftCursor"],
	["cuf",	"parm_right_cursor",	"parmRightCursor"],
	["rin",	"parm_rindex",	"parmRindex"],
	["cuu",	"parm_up_cursor",	"parmUpCursor"],
	["pfkey",	"pkey_key",	"pkeyKey"],
	["pfloc",	"pkey_local",	"pkeyLocal"],
	["pfx",	"pkey_xmit",	"pkeyXmit"],
	["mc0",	"print_screen",	"printScreen"],
	["mc4",	"prtr_off",	"prtrOff"],
	["mc5",	"prtr_on",	"prtrOn"],
	["rep",	"repeat_char",	"repeatChar"],
	["rs1",	"reset_1string",	"reset1string"],
	["rs2",	"reset_2string",	"reset2string"],
	["rs3",	"reset_3string",	"reset3string"],
	["rf",	"reset_file",	"resetFile"],
	["rc",	"restore_cursor",	"restoreCursor"],
	["vpa",	"row_address",	"rowAddress"],
	["sc",	"save_cursor",	"saveCursor"],
	["ind",	"scroll_forward",	"scrollForward"],
	["ri",	"scroll_reverse",	"scrollReverse"],
	["sgr",	"set_attributes",	"setAttributes"],
	["hts",	"set_tab",	"setTab"],
	["wind",	"set_window",	"setWindow"],
	["ht",	"tab",	"tab"],
	["tsl",	"to_status_line",	"toStatusLine"],
	["uc",	"underline_char",	"underlineChar"],
	["hu",	"up_half_line",	"upHalfLine"],
	["iprog",	"init_prog",	"initProg"],
	["ka1",	"key_a1",	"keyA1"],
	["ka3",	"key_a3",	"keyA3"],
	["kb2",	"key_b2",	"keyB2"],
	["kc1",	"key_c1",	"keyC1"],
	["kc3",	"key_c3",	"keyC3"],
	["mc5p",	"prtr_non",	"prtrNon"],
	["rmp",	"char_padding",	"charPadding"],
	["acsc",	"acs_chars",	"acsChars"],
	["pln",	"plab_norm",	"plabNorm"],
	["kcbt",	"key_btab",	"keyBtab"],
	["smxon",	"enter_xon_mode",	"enterXonMode"],
	["rmxon",	"exit_xon_mode",	"exitXonMode"],
	["smam",	"enter_am_mode",	"enterAmMode"],
	["rmam",	"exit_am_mode",	"exitAmMode"],
	["xonc",	"xon_character",	"xonCharacter"],
	["xoffc",	"xoff_character",	"xoffCharacter"],
	["enacs",	"ena_acs",	"enaAcs"],
	["smln",	"label_on",	"labelOn"],
	["rmln",	"label_off",	"labelOff"],
	["kbeg",	"key_beg",	"keyBeg"],
	["kcan",	"key_cancel",	"keyCancel"],
	["kclo",	"key_close",	"keyClose"],
	["kcmd",	"key_command",	"keyCommand"],
	["kcpy",	"key_copy",	"keyCopy"],
	["kcrt",	"key_create",	"keyCreate"],
	["kend",	"key_end",	"keyEnd"],
	["kent",	"key_enter",	"keyEnter"],
	["kext",	"key_exit",	"keyExit"],
	["kfnd",	"key_find",	"keyFind"],
	["khlp",	"key_help",	"keyHelp"],
	["kmrk",	"key_mark",	"keyMark"],
	["kmsg",	"key_message",	"keyMessage"],
	["kmov",	"key_move",	"keyMove"],
	["knxt",	"key_next",	"keyNext"],
	["kopn",	"key_open",	"keyOpen"],
	["kopt",	"key_options",	"keyOptions"],
	["kprv",	"key_previous",	"keyPrevious"],
	["kprt",	"key_print",	"keyPrint"],
	["krdo",	"key_redo",	"keyRedo"],
	["kref",	"key_reference",	"keyReference"],
	["krfr",	"key_refresh",	"keyRefresh"],
	["krpl",	"key_replace",	"keyReplace"],
	["krst",	"key_restart",	"keyRestart"],
	["kres",	"key_resume",	"keyResume"],
	["ksav",	"key_save",	"keySave"],
	["kspd",	"key_suspend",	"keySuspend"],
	["kund",	"key_undo",	"keyUndo"],
	["kBEG",	"key_sbeg",	"keySbeg"],
	["kCAN",	"key_scancel",	"keyScancel"],
	["kCMD",	"key_scommand",	"keyScommand"],
	["kCPY",	"key_scopy",	"keyScopy"],
	["kCRT",	"key_screate",	"keyScreate"],
	["kDC",	"key_sdc",	"keySdc"],
	["kDL",	"key_sdl",	"keySdl"],
	["kslt",	"key_select",	"keySelect"],
	["kEND",	"key_send",	"keySend"],
	["kEOL",	"key_seol",	"keySeol"],
	["kEXT",	"key_sexit",	"keySexit"],
	["kFND",	"key_sfind",	"keySfind"],
	["kHLP",	"key_shelp",	"keyShelp"],
	["kHOM",	"key_shome",	"keyShome"],
	["kIC",	"key_sic",	"keySic"],
	["kLFT",	"key_sleft",	"keySleft"],
	["kMSG",	"key_smessage",	"keySmessage"],
	["kMOV",	"key_smove",	"keySmove"],
	["kNXT",	"key_snext",	"keySnext"],
	["kOPT",	"key_soptions",	"keySoptions"],
	["kPRV",	"key_sprevious",	"keySprevious"],
	["kPRT",	"key_sprint",	"keySprint"],
	["kRDO",	"key_sredo",	"keySredo"],
	["kRPL",	"key_sreplace",	"keySreplace"],
	["kRIT",	"key_sright",	"keySright"],
	["kRES",	"key_srsume",	"keySrsume"],
	["kSAV",	"key_ssave",	"keySsave"],
	["kSPD",	"key_ssuspend",	"keySsuspend"],
	["kUND",	"key_sundo",	"keySundo"],
	["rfi",	"req_for_input",	"reqForInput"],
	["kf11",	"key_f11",	"keyF11"],
	["kf12",	"key_f12",	"keyF12"],
	["kf13",	"key_f13",	"keyF13"],
	["kf14",	"key_f14",	"keyF14"],
	["kf15",	"key_f15",	"keyF15"],
	["kf16",	"key_f16",	"keyF16"],
	["kf17",	"key_f17",	"keyF17"],
	["kf18",	"key_f18",	"keyF18"],
	["kf19",	"key_f19",	"keyF19"],
	["kf20",	"key_f20",	"keyF20"],
	["kf21",	"key_f21",	"keyF21"],
	["kf22",	"key_f22",	"keyF22"],
	["kf23",	"key_f23",	"keyF23"],
	["kf24",	"key_f24",	"keyF24"],
	["kf25",	"key_f25",	"keyF25"],
	["kf26",	"key_f26",	"keyF26"],
	["kf27",	"key_f27",	"keyF27"],
	["kf28",	"key_f28",	"keyF28"],
	["kf29",	"key_f29",	"keyF29"],
	["kf30",	"key_f30",	"keyF30"],
	["kf31",	"key_f31",	"keyF31"],
	["kf32",	"key_f32",	"keyF32"],
	["kf33",	"key_f33",	"keyF33"],
	["kf34",	"key_f34",	"keyF34"],
	["kf35",	"key_f35",	"keyF35"],
	["kf36",	"key_f36",	"keyF36"],
	["kf37",	"key_f37",	"keyF37"],
	["kf38",	"key_f38",	"keyF38"],
	["kf39",	"key_f39",	"keyF39"],
	["kf40",	"key_f40",	"keyF40"],
	["kf41",	"key_f41",	"keyF41"],
	["kf42",	"key_f42",	"keyF42"],
	["kf43",	"key_f43",	"keyF43"],
	["kf44",	"key_f44",	"keyF44"],
	["kf45",	"key_f45",	"keyF45"],
	["kf46",	"key_f46",	"keyF46"],
	["kf47",	"key_f47",	"keyF47"],
	["kf48",	"key_f48",	"keyF48"],
	["kf49",	"key_f49",	"keyF49"],
	["kf50",	"key_f50",	"keyF50"],
	["kf51",	"key_f51",	"keyF51"],
	["kf52",	"key_f52",	"keyF52"],
	["kf53",	"key_f53",	"keyF53"],
	["kf54",	"key_f54",	"keyF54"],
	["kf55",	"key_f55",	"keyF55"],
	["kf56",	"key_f56",	"keyF56"],
	["kf57",	"key_f57",	"keyF57"],
	["kf58",	"key_f58",	"keyF58"],
	["kf59",	"key_f59",	"keyF59"],
	["kf60",	"key_f60",	"keyF60"],
	["kf61",	"key_f61",	"keyF61"],
	["kf62",	"key_f62",	"keyF62"],
	["kf63",	"key_f63",	"keyF63"],
	["el1",	"clr_bol",	"clrBol"],
	["mgc",	"clear_margins",	"clearMargins"],
	["smgl",	"set_left_margin",	"setLeftMargin"],
	["smgr",	"set_right_margin",	"setRightMargin"],
	["fln",	"label_format",	"labelFormat"],
	["sclk",	"set_clock",	"setClock"],
	["dclk",	"display_clock",	"displayClock"],
	["rmclk",	"remove_clock",	"removeClock"],
	["cwin",	"create_window",	"createWindow"],
	["wingo",	"goto_window",	"gotoWindow"],
	["hup",	"hangup",	"hangup"],
	["dial",	"dial_phone",	"dialPhone"],
	["qdial",	"quick_dial",	"quickDial"],
	["tone",	"tone",	"tone"],
	["pulse",	"pulse",	"pulse"],
	["hook",	"flash_hook",	"flashHook"],
	["pause",	"fixed_pause",	"fixedPause"],
	["wait",	"wait_tone",	"waitTone"],
	["u0",	"user0",	"user0"],
	["u1",	"user1",	"user1"],
	["u2",	"user2",	"user2"],
	["u3",	"user3",	"user3"],
	["u4",	"user4",	"user4"],
	["u5",	"user5",	"user5"],
	["u6",	"user6",	"user6"],
	["u7",	"user7",	"user7"],
	["u8",	"user8",	"user8"],
	["u9",	"user9",	"user9"],
	["op",	"orig_pair",	"origPair"],
	["oc",	"orig_colors",	"origColors"],
	["initc",	"initialize_color",	"initializeColor"],
	["initp",	"initialize_pair",	"initializePair"],
	["scp",	"set_color_pair",	"setColorPair"],
	["setf",	"set_foreground",	"setForeground"],
	["setb",	"set_background",	"setBackground"],
	["cpi",	"change_char_pitch",	"changeCharPitch"],
	["lpi",	"change_line_pitch",	"changeLinePitch"],
	["chr",	"change_res_horz",	"changeResHorz"],
	["cvr",	"change_res_vert",	"changeResVert"],
	["defc",	"define_char",	"defineChar"],
	["swidm",	"enter_doublewide_mode",	"enterDoublewideMode"],
	["sdrfq",	"enter_draft_quality",	"enterDraftQuality"],
	["sitm",	"enter_italics_mode",	"enterItalicsMode"],
	["slm",	"enter_leftward_mode",	"enterLeftwardMode"],
	["smicm",	"enter_micro_mode",	"enterMicroMode"],
	["snlq",	"enter_near_letter_quality",	"enterNearLetterQuality"],
	["snrmq",	"enter_normal_quality",	"enterNormalQuality"],
	["sshm",	"enter_shadow_mode",	"enterShadowMode"],
	["ssubm",	"enter_subscript_mode",	"enterSubscriptMode"],
	["ssupm",	"enter_superscript_mode",	"enterSuperscriptMode"],
	["sum",	"enter_upward_mode",	"enterUpwardMode"],
	["rwidm",	"exit_doublewide_mode",	"exitDoublewideMode"],
	["ritm",	"exit_italics_mode",	"exitItalicsMode"],
	["rlm",	"exit_leftward_mode",	"exitLeftwardMode"],
	["rmicm",	"exit_micro_mode",	"exitMicroMode"],
	["rshm",	"exit_shadow_mode",	"exitShadowMode"],
	["rsubm",	"exit_subscript_mode",	"exitSubscriptMode"],
	["rsupm",	"exit_superscript_mode",	"exitSuperscriptMode"],
	["rum",	"exit_upward_mode",	"exitUpwardMode"],
	["mhpa",	"micro_column_address",	"microColumnAddress"],
	["mcud1",	"micro_down",	"microDown"],
	["mcub1",	"micro_left",	"microLeft"],
	["mcuf1",	"micro_right",	"microRight"],
	["mvpa",	"micro_row_address",	"microRowAddress"],
	["mcuu1",	"micro_up",	"microUp"],
	["porder",	"order_of_pins",	"orderOfPins"],
	["mcud",	"parm_down_micro",	"parmDownMicro"],
	["mcub",	"parm_left_micro",	"parmLeftMicro"],
	["mcuf",	"parm_right_micro",	"parmRightMicro"],
	["mcuu",	"parm_up_micro",	"parmUpMicro"],
	["scs",	"select_char_set",	"selectCharSet"],
	["smgb",	"set_bottom_margin",	"setBottomMargin"],
	["smgbp",	"set_bottom_margin_parm",	"setBottomMarginParm"],
	["smglp",	"set_left_margin_parm",	"setLeftMarginParm"],
	["smgrp",	"set_right_margin_parm",	"setRightMarginParm"],
	["smgt",	"set_top_margin",	"setTopMargin"],
	["smgtp",	"set_top_margin_parm",	"setTopMarginParm"],
	["sbim",	"start_bit_image",	"startBitImage"],
	["scsd",	"start_char_set_def",	"startCharSetDef"],
	["rbim",	"stop_bit_image",	"stopBitImage"],
	["rcsd",	"stop_char_set_def",	"stopCharSetDef"],
	["subcs",	"subscript_characters",	"subscriptCharacters"],
	["supcs",	"superscript_characters",	"superscriptCharacters"],
	["docr",	"these_cause_cr",	"theseCauseCr"],
	["zerom",	"zero_motion",	"zeroMotion"],
	["csnm",	"char_set_names",	"charSetNames"],
	["kmous",	"key_mouse",	"keyMouse"],
	["minfo",	"mouse_info",	"mouseInfo"],
	["reqmp",	"req_mouse_pos",	"reqMousePos"],
	["getm",	"get_mouse",	"getMouse"],
	["setaf",	"set_a_foreground",	"setAForeground"],
	["setab",	"set_a_background",	"setABackground"],
	["pfxl",	"pkey_plab",	"pkeyPlab"],
	["devt",	"device_type",	"deviceType"],
	["csin",	"code_set_init",	"codeSetInit"],
	["s0ds",	"set0_des_seq",	"set0DesSeq"],
	["s1ds",	"set1_des_seq",	"set1DesSeq"],
	["s2ds",	"set2_des_seq",	"set2DesSeq"],
	["s3ds",	"set3_des_seq",	"set3DesSeq"],
	["smglr",	"set_lr_margin",	"setLrMargin"],
	["smgtb",	"set_tb_margin",	"setTbMargin"],
	["birep",	"bit_image_repeat",	"bitImageRepeat"],
	["binel",	"bit_image_newline",	"bitImageNewline"],
	["bicr",	"bit_image_carriage_return",	"bitImageCarriageReturn"],
	["colornm",	"color_names",	"colorNames"],
	["defbi",	"define_bit_image_region",	"defineBitImageRegion"],
	["endbi",	"end_bit_image_region",	"endBitImageRegion"],
	["setcolor",	"set_color_band",	"setColorBand"],
	["slines",	"set_page_length",	"setPageLength"],
	["dispc",	"display_pc_char",	"displayPcChar"],
	["smpch",	"enter_pc_charset_mode",	"enterPcCharsetMode"],
	["rmpch",	"exit_pc_charset_mode",	"exitPcCharsetMode"],
	["smsc",	"enter_scancode_mode",	"enterScancodeMode"],
	["rmsc",	"exit_scancode_mode",	"exitScancodeMode"],
	["pctrm",	"pc_term_options",	"pcTermOptions"],
	["scesc",	"scancode_escape",	"scancodeEscape"],
	["scesa",	"alt_scancode_esc",	"altScancodeEsc"],
	["ehhlm",	"enter_horizontal_hl_mode",	"enterHorizontalHlMode"],
	["elhlm",	"enter_left_hl_mode",	"enterLeftHlMode"],
	["elohlm",	"enter_low_hl_mode",	"enterLowHlMode"],
	["erhlm",	"enter_right_hl_mode",	"enterRightHlMode"],
	["ethlm",	"enter_top_hl_mode",	"enterTopHlMode"],
	["evhlm",	"enter_vertical_hl_mode",	"enterVerticalHlMode"],
	["sgr1",	"set_a_attributes",	"setAAttributes"],
	["slength",	"set_pglen_inch",	"setPglenInch"],
	["OTi2",	"termcap_init2",	"termcapInit2"],
	["OTrs",	"termcap_reset",	"termcapReset"],
	["OTnl",	"linefeed_if_not_lf",	"linefeedIfNotLf"],
	["OTbc",	"backspace_if_not_bs",	"backspaceIfNotBs"],
	["OTko",	"other_non_function_keys",	"otherNonFunctionKeys"],
	["OTma",	"arrow_key_map",	"arrowKeyMap"],
	["OTG2",	"acs_ulcorner",	"acsUlcorner"],
	["OTG3",	"acs_llcorner",	"acsLlcorner"],
	["OTG1",	"acs_urcorner",	"acsUrcorner"],
	["OTG4",	"acs_lrcorner",	"acsLrcorner"],
	["OTGR",	"acs_ltee",	"acsLtee"],
	["OTGL",	"acs_rtee",	"acsRtee"],
	["OTGU",	"acs_btee",	"acsBtee"],
	["OTGD",	"acs_ttee",	"acsTtee"],
	["OTGH",	"acs_hline",	"acsHline"],
	["OTGV",	"acs_vline",	"acsVline"],
	["OTGC",	"acs_plus",	"acsPlus"],
	["meml",	"memory_lock",	"memoryLock"],
	["memu",	"memory_unlock",	"memoryUnlock"],
	["box1",	"box_chars_1",	"boxChars1"]
];