pkgname=os-age
pkgver=1.0.0
pkgrel=1
pkgdesc="Check Linux installation age"
arch=('any')
url="https://github.com/Daniel-Fuerst/os-age"

license=('GPL-3.0')
depends=('ruby')

source=('os-age.rb')

sha256sums=('SKIP')

package() {
    install -Dm755 "${srcdir}/os-age.rb" "${pkgdir}/usr/bin/os-age"
}