# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Pentoo forensics meta ebuild"
HOMEPAGE="http://www.pentoo.ch"

LICENSE="GPL-3"
SLOT="0"
IUSE="minipentoo"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}
	app-admin/testdisk
	app-forensics/inception
	app-forensics/sleuthkit
	app-forensics/volatility
	sys-fs/ddrescue

	!minipentoo? (
		app-crypt/xor-analyze
		!arm? ( app-forensics/cmospwd )
		app-forensics/foremost
		app-forensics/galleta
		app-forensics/libvshadow
		app-forensics/make-pdf
		app-forensics/memdump
		app-forensics/origami-pdf
		app-forensics/pasco
		app-forensics/pdf-parser
		app-forensics/pdfid
		app-forensics/rdd
		app-misc/hivex
		sys-apps/dcfldd
		sys-block/partimage
		sys-fs/dd-rescue
	)"

#https://github.com/arxsys/dff/issues/23
#	app-forensics/dff
