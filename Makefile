-include config.mk

GAME            ?= dune2000

LSCRIPT         ?= patch.lds
INBIN           ?= $(GAME).dat
PHYS_ALIGNMENT  ?= 0x400
VIRT_ALIGNMENT  ?= 0x1000

IMPORT          ?= 1 0x4CF000 280

INCLUDES        ?= -Iinc/

LIBS            ?=
OBJS            ?= callsites.o \
	\
	src/high-res/vqa-set-video-mode.o \
	src/high-res/vqa-set-video-mode-func.o \
	src/high-res/high-res.o \
	src/high-res/high-res-func.o \
	src/high-res/uibb.r16-generator.o \
	src/high-res/uibb.r8-generator.o \
	\
	src/spawner/short-game.o \
	src/spawner/ai.o \
	src/spawner/ai-func.o \
	src/spawner/spawner.o \
	src/spawner/spawner-func.o \
	src/spawner/spectators.o \
	src/spawner/spectators-func.o \
	src/spawner/stats.o \
	src/spawner/stats-func.o \
	src/spawner/starting-locations.o \
	src/spawner/starting-locations-func.o \
	src/spawner/nethack.o \
	src/spawner/mission-events.o \
	src/spawner/preplaced-buildings-and-units.o \
	src/spawner/make-chosen-units-buildings-optional.o \
	src/spawner/auto-surrender-on-abort.o \
	\
	src/extended-maps/in-game-briefing.o \
	src/extended-maps/event.o \
	src/extended-maps/event-func.o \
	src/extended-maps/rules.ini.o \
	src/extended-maps/music-func.o \
	src/extended-maps/music.o \
	src/extended-maps/show-message-event.o \
	src/extended-maps/infinite-spice.o \
	src/extended-maps/start-with-mcv.o \
	\
	src/fixes/rand-seed-fix.o \
	src/fixes/map-reveal-fix.o \
	src/fixes/message-box-fix.o \
	src/fixes/setcash-fix.o \
	src/fixes/spam-fix.o \
	src/fixes/sub-houses-fix.o \
	src/fixes/wol-fixes.o \
	src/fixes/high-fps-fix.o \
	src/fixes/win8-fix.o \
	src/fixes/Disable-Max-Windowed-Mode.o \
	src/fixes/cannot-place-building-fix.o \
	src/fixes/single-processor-affinity.o \
	src/fixes/gettickcount-fix-func.o \
	src/fixes/gettickcount-fix.o \
	src/fixes/resolution-fix.o \
	\
	src/hotkeys/hotkeys.o \
	src/hotkeys/hotkeys-func.o \
	src/hotkeys/mouse-wheel.o \
	src/hotkeys/force-quick-exit.o \
	src/hotkeys/slow-sidebar-scrolling.o \
	src/hotkeys/map-scrolling.o \
	\
	src/hardware-cursor.o \
	src/hardware-cursor-func.o \
	src/ai-alliances.o \
	src/load-save-restart-exit.o \
	src/load-save-restart-exit-func.o \
	src/failure.txt.o \
	src/fps-limiter-func.o \
	src/fps-limiter.o \
	src/blowup-everything.o \
	src/dune2000.ini.o \
	src/jump-to-menu-on-start.o \
	src/command-line-parameters-func.o \
	src/multiplayer-network-settings.o \
	src/show-in-game-mes-longer.o \
	src/multi-language.o \
	src/window-procedure.o \
	src/no-cd.o \
	src/version.o \
    src/oos-log.o \
    src/oos-log-func.o \
    src/imports.o \
	\
	utils/crc32.o \
	utils/crc32_utils.o \
	utils/stdio.o \
	utils/utils.o \
	utils/ini.o \
	res/dune2000.o \
    debug-func.o \
	sym.o

#        src/mission-editor.o \

PURE_OBJS       ?= sym.o res/dune2000.o

.PHONY: default
default: $(GAME).exe

$(GAME).exe: .dump-.strip-.patch-.import-.$(GAME).exe
	$(CP) $< $@

pure-$(GAME).exe: .dump-.import-.pure-$(GAME).exe
	$(CP) $< $@

include ./generic.mk

#CFLAGS          += -D_MSVCRT_ -mpush-args -mno-accumulate-outgoing-args -mno-stack-arg-probe -O0
CFLAGS         += -D_MSVCRT_
WFLAGS          += -Ires/

ifdef WWDEBUG
    CFLAGS += -D WWDEBUG
    NFLAGS += -D WWDEBUG
endif
