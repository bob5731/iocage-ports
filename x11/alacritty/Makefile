# $FreeBSD$

PORTNAME=	alacritty
PORTVERSION=	0.2.1
DISTVERSIONPREFIX=	v
CATEGORIES=	x11

MAINTAINER=	zeising@FreeBSD.org
COMMENT=	GPU-accelerated terminal emulator

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE-APACHE

LIB_DEPENDS=	libfontconfig.so:x11-fonts/fontconfig

USES=		cargo

USE_GITHUB=	yes
GH_ACCOUNT=	jwilm
GH_TUPLE=	jwilm:rust-fontconfig:be2b94de833ec69cf767186262a5fb8360fa5b45:servofontconfig \
		jwilm:libfontconfig:5c1845e1bffa11cf4d3e6fb27f456bf5c814ce1b:servofontconfigsys

OPTIONS_DEFINE=	EXAMPLES

PLIST_FILES=	bin/alacritty \
		man/man1/alacritty.1.gz \
		etc/bash_completion.d/alacritty-completions.bash \
		share/fish/completions/alacritty-completions.fish \
		share/zsh/site-functions/_alacritty \
		${DESKTOPDIR:S,^${PREFIX}/,,}/alacritty.desktop

PORTEXAMPLES=	alacritty.yml

CARGO_CRATES=	aho-corasick-0.6.8 \
		android_glue-0.2.3 \
		ansi_term-0.11.0 \
		approx-0.1.1 \
		arraydeque-0.4.3 \
		atty-0.2.11 \
		base64-0.9.3 \
		bitflags-0.7.0 \
		bitflags-1.0.4 \
		block-0.1.6 \
		byteorder-1.2.6 \
		bytes-0.4.10 \
		cc-1.0.25 \
		cfg-if-0.1.5 \
		cgl-0.2.3 \
		cgmath-0.16.1 \
		clap-2.32.0 \
		cloudabi-0.0.3 \
		cmake-0.1.34 \
		cocoa-0.15.0 \
		core-foundation-0.6.1 \
		core-foundation-sys-0.6.1 \
		core-graphics-0.14.0 \
		core-graphics-0.17.1 \
		core-text-13.0.0 \
		crossbeam-utils-0.5.0 \
		dirs-1.0.3 \
		dlib-0.4.1 \
		downcast-rs-1.0.3 \
		dtoa-0.4.3 \
		env_logger-0.5.13 \
		errno-0.2.4 \
		errno-dragonfly-0.1.1 \
		euclid-0.17.3 \
		expat-sys-2.1.5 \
		filetime-0.2.1 \
		fnv-1.0.6 \
		foreign-types-0.3.2 \
		foreign-types-shared-0.1.1 \
		freetype-rs-0.19.0 \
		freetype-sys-0.7.0 \
		fsevent-0.2.17 \
		fsevent-sys-0.1.6 \
		fuchsia-zircon-0.3.3 \
		fuchsia-zircon-sys-0.3.3 \
		futures-0.1.24 \
		gcc-0.3.54 \
		gl_generator-0.9.0 \
		gleam-0.6.0 \
		glutin-0.16.0 \
		humantime-1.1.1 \
		inotify-0.6.1 \
		inotify-sys-0.1.3 \
		iovec-0.1.2 \
		itoa-0.4.3 \
		kernel32-sys-0.2.2 \
		khronos_api-2.2.0 \
		lazy_static-1.1.0 \
		lazycell-0.4.0 \
		lazycell-1.2.0 \
		libc-0.2.43 \
		libloading-0.5.0 \
		libz-sys-1.0.22 \
		linked-hash-map-0.5.1 \
		lock_api-0.1.3 \
		log-0.3.9 \
		log-0.4.5 \
		malloc_buf-0.0.6 \
		memchr-2.1.0 \
		memmap-0.6.2 \
		mio-0.6.16 \
		mio-extras-2.0.5 \
		mio-more-0.1.0 \
		miow-0.2.1 \
		net2-0.2.33 \
		nix-0.11.0 \
		nom-4.0.0 \
		notify-4.0.6 \
		num-traits-0.1.43 \
		num-traits-0.2.6 \
		num_cpus-1.8.0 \
		objc-0.2.5 \
		objc-foundation-0.1.1 \
		objc_id-0.1.1 \
		osmesa-sys-0.1.2 \
		owning_ref-0.3.3 \
		parking_lot-0.5.5 \
		parking_lot-0.6.4 \
		parking_lot_core-0.2.14 \
		parking_lot_core-0.3.1 \
		percent-encoding-1.0.1 \
		phf-0.7.23 \
		phf_codegen-0.7.23 \
		phf_generator-0.7.23 \
		phf_shared-0.7.23 \
		pkg-config-0.3.14 \
		proc-macro2-0.4.19 \
		quick-error-1.2.2 \
		quote-0.6.8 \
		rand-0.4.3 \
		rand-0.5.5 \
		rand_core-0.2.1 \
		redox_syscall-0.1.40 \
		redox_termios-0.1.1 \
		regex-1.0.5 \
		regex-syntax-0.6.2 \
		remove_dir_all-0.5.1 \
		rustc_version-0.2.3 \
		ryu-0.2.6 \
		safemem-0.3.0 \
		same-file-1.0.3 \
		scopeguard-0.3.3 \
		semver-0.9.0 \
		semver-parser-0.7.0 \
		serde-1.0.79 \
		serde_derive-1.0.79 \
		serde_json-1.0.28 \
		serde_yaml-0.7.5 \
		servo-fontconfig-0.4.0 \
		servo-fontconfig-sys-4.0.7 \
		shared_library-0.1.9 \
		siphasher-0.2.3 \
		slab-0.3.0 \
		slab-0.4.1 \
		smallvec-0.6.5 \
		smithay-client-toolkit-0.2.6 \
		stable_deref_trait-1.1.1 \
		static_assertions-0.2.5 \
		strsim-0.7.0 \
		syn-0.15.4 \
		tempfile-3.0.4 \
		termcolor-1.0.4 \
		terminfo-0.6.1 \
		termion-1.5.1 \
		textwrap-0.10.0 \
		thread_local-0.3.6 \
		tokio-executor-0.1.4 \
		tokio-io-0.1.8 \
		tokio-reactor-0.1.5 \
		ucd-util-0.1.1 \
		unicode-width-0.1.5 \
		unicode-xid-0.1.0 \
		unreachable-1.0.0 \
		utf8-ranges-1.0.1 \
		utf8parse-0.1.0 \
		vcpkg-0.2.6 \
		vec_map-0.8.1 \
		version_check-0.1.4 \
		void-1.0.2 \
		vte-0.3.3 \
		walkdir-2.2.5 \
		wayland-client-0.20.12 \
		wayland-commons-0.20.12 \
		wayland-protocols-0.20.12 \
		wayland-scanner-0.20.12 \
		wayland-sys-0.20.12 \
		winapi-0.2.8 \
		winapi-0.3.5 \
		winapi-build-0.1.1 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-util-0.1.1 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		wincolor-1.0.1 \
		winit-0.15.1 \
		ws2_32-sys-0.2.1 \
		x11-dl-2.18.3 \
		xdg-2.1.0 \
		xml-rs-0.7.0 \
		yaml-rust-0.4.2
CARGO_USE_GITHUB=	yes
CARGO_GH_CARGOTOML=	${CARGO_CARGOTOML} \
			${WRKSRC}/font/Cargo.toml \
			${WRKSRC_servofontconfig}/Cargo.toml

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/alacritty
	${INSTALL_DATA} ${WRKSRC}/alacritty.desktop ${STAGEDIR}${DESKTOPDIR}
	${INSTALL_MAN} ${WRKSRC}/alacritty.man ${STAGEDIR}${MANPREFIX}/man/man1/alacritty.1
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/bash_completion.d
	${INSTALL_DATA} ${WRKSRC}/alacritty-completions.bash \
		${STAGEDIR}${PREFIX}/etc/bash_completion.d
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${WRKSRC}/alacritty-completions.fish \
		${STAGEDIR}${PREFIX}/share/fish/completions
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/alacritty-completions.zsh \
		${STAGEDIR}${PREFIX}/share/zsh/site-functions/_alacritty

post-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTEXAMPLES} ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
