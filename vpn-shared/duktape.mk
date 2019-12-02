# Orchid - WebRTC P2P VPN Market (on Ethereum)
# Copyright (C) 2017-2019  The Orchid Authors

# Zero Clause BSD license {{{
#
# Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
# }}}


pwd/duktape := $(pwd)/duktape

prep := prep/nondebug

$(pwd/duktape)/%/duktape.c $(pwd/duktape)/%/duktape.h $(pwd/duktape)/%/duk_config.h: $(pwd/duktape)/Makefile
	cd $(pwd/duktape) && rm -rf $* && make $*

source += $(pwd/duktape)/$(prep)/duktape.c
header += $(pwd/duktape)/$(prep)/duktape.h
header += $(pwd/duktape)/$(prep)/duk_config.h

cflags += -I$(pwd/duktape)/$(prep)
