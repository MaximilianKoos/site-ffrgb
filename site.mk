GLUON_MULTIDOMAIN=1
GLUON_DEPRECATED ?= upgrade

DEFAULT_GLUON_RELEASE := snapshot~$(shell date '+%Y%m%d')
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_REGION ?= eu
GLUON_LANGS ?= en de

INCLUDE_USB := \
    usbutils

EXCLUDE_USB := \
    -usbutils

INCLUDE_USB_HID := \
    kmod-usb-hid \
    kmod-hid-generic

EXCLUDE_USB_HID := \
    -kmod-usb-hid \
    -kmod-hid-generic

INCLUDE_USB_SERIAL := \
    kmod-usb-serial \
    kmod-usb-serial-ftdi \
    kmod-usb-serial-pl2303

EXCLUDE_USB_SERIAL := \
    -kmod-usb-serial \
    -kmod-usb-serial-ftdi \
    -kmod-usb-serial-pl2303

INCLUDE_USB_STORAGE := \
    block-mount \
    blkid \
    kmod-fs-ext4 \
    kmod-fs-ntfs \
    kmod-fs-vfat \
    kmod-usb-storage \
    kmod-usb-storage-extras \
    kmod-usb-storage-uas \
    kmod-nls-base \
    kmod-nls-cp1250 \
    kmod-nls-cp437 \
    kmod-nls-cp850 \
    kmod-nls-cp852 \
    kmod-nls-iso8859-1 \
    kmod-nls-iso8859-13 \
    kmod-nls-iso8859-15 \
    kmod-nls-iso8859-2 \
    kmod-nls-utf8

EXCLUDE_USB_STORAGE := \
    -block-mount \
    -blkid \
    -kmod-fs-ext4 \
    -kmod-fs-ntfs \
    -kmod-fs-vfat \
    -kmod-usb-storage \
    -kmod-usb-storage-extras \
    -kmod-usb-storage-uas \
    -kmod-nls-base \
    -kmod-nls-cp1250 \
    -kmod-nls-cp437 \
    -kmod-nls-cp850 \
    -kmod-nls-cp852 \
    -kmod-nls-iso8859-1 \
    -kmod-nls-iso8859-13 \
    -kmod-nls-iso8859-15 \
    -kmod-nls-iso8859-2 \
    -kmod-nls-utf8

INCLUDE_USB_NET := \
    kmod-mii \
    kmod-usb-net \
    kmod-usb-net-asix \
    kmod-usb-net-asix-ax88179 \
    kmod-usb-net-cdc-eem \
    kmod-usb-net-cdc-ether \
    kmod-usb-net-cdc-subset \
    kmod-usb-net-dm9601-ether \
    kmod-usb-net-hso \
    kmod-usb-net-ipheth \
    kmod-usb-net-mcs7830 \
    kmod-usb-net-pegasus \
    kmod-usb-net-rndis \
    kmod-usb-net-rtl8152 \
    kmod-usb-net-smsc95xx

EXCLUDE_USB_NET := \
    -kmod-mii \
    -kmod-usb-net \
    -kmod-usb-net-asix \
    -kmod-usb-net-asix-ax88179 \
    -kmod-usb-net-cdc-eem \
    -kmod-usb-net-cdc-ether \
    -kmod-usb-net-cdc-subset \
    -kmod-usb-net-dm9601-ether \
    -kmod-usb-net-hso \
    -kmod-usb-net-ipheth \
    -kmod-usb-net-mcs7830 \
    -kmod-usb-net-pegasus \
    -kmod-usb-net-rndis \
    -kmod-usb-net-rtl8152 \
    -kmod-usb-net-smsc95xx

INCLUDE_PCI := \
    pciutils

EXCLUDE_PCI := \
    -pciutils

INCLUDE_PCI_NET := \
    kmod-bnx2

EXCLUDE_PCI_NET := \
    -kmod-bnx2

INCLUDE_TLS := \
    ca-bundle \
    libustream-openssl

EXCLUDE_TLS := \
    -ca-bundle \
    -libustream-openssl

USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2

USB_PACKAGES_STORAGE := \
	block-mount \
	blkid \
	kmod-fs-ext4 \
	kmod-fs-vfat \
	kmod-usb-storage \
	kmod-usb-storage-extras \
	kmod-nls-cp1250 \
	kmod-nls-cp1251 \
	kmod-nls-cp437 \
	kmod-nls-cp775 \
	kmod-nls-cp850 \
	kmod-nls-cp852 \
	kmod-nls-cp866 \
	kmod-nls-iso8859-1 \
	kmod-nls-iso8859-13 \
	kmod-nls-iso8859-15 \
	kmod-nls-iso8859-2 \
	kmod-nls-koi8r \
	kmod-nls-utf8 \
	swap-utils

USB_PACKAGES_NET := \
	kmod-mii \
	kmod-nls-base \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx

USB_PACKAGES_NET_ADD := \
	kmod-rtl8192cu \
	kmod-rtl8187 \
	kmod-ath9k-htc \
	kmod-ath9k-common \
	kmod-ath \
	kmod-rt73-usb \
	kmod-carl9170 \
	kmod-brcmfmac

PCI_PACKAGES_NET := \
	kmod-3c59x \
	kmod-e100 \
	kmod-e1000 \
	kmod-e1000e \
	kmod-forcedeth \
	kmod-natsemi \
	kmod-ne2k-pci \
	kmod-pcnet32 \
	kmod-r8169 \
	kmod-sis900 \
	kmod-sky2 \
	kmod-tg3 \
	kmod-tulip \
	kmod-via-rhine

TOOLS_PACKAGES := \
	iperf \
	socat \
	tcpdump \
	usbutils \
	vnstat
