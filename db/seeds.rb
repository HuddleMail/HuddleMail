# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# user = User.create(email: 'email', encrypted_password: 'test password', sign_in_count: '1')
dg = DistGroup.create(dist_name: 'test', pub_key: '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

mI0EVwoJQAEEAOk3UOu5ANKQaAEAQPi+9d0KUQeykVzcc4KT8uJzFBhOoiUyXW8I
jQOqe10yI17NsTFiTRhm3GYdtDiYpI1YwYExncXSYzxeBbWvxoZCHodtpX22/eDW
5NrhVHemOjO/0ZMPghk4qKBpIDSmVYexs/5EdPaIEr3xKP3cHlpiqqaHABEBAAG0
Ck5lYWxzR3JvdXCIuAQTAQIAIgUCVwoJQAIbLwYLCQgHAwIGFQgCCQoLBBYCAwEC
HgECF4AACgkQtT5I9s+NJFsRmAQAmZkZcPGrXvCCnAtXSy2fuoqUEX/uXRbiEpEa
5mM27pM5x44alkBS2IwOCNjeMgQZCC7cdT/4L2D6U1teQOdYaC/R4OO+R0H2P7rn
C9f+zzYL/3M9KiN0p274r5fMvPLql3un/z57MasUILLDj/Wfm65CA1pMdhcTcGN/
mEe/A/S4jQRXCglAAQQA2ENWfJzHB/PKUt1CN3eyxFcajCAMSxq1zCSRKmBdFqUe
uS7kJPqUDytXFxvgobdAW9mc+WPb3Db6z89EMGTH20K8PycJqJqE53ZjQcQUcTdE
wzZyYYfOJKbnykwrqBFb8njGYAokXQ2HrjwWvCMHbB2gGq6xXDoodzE8DJSyQg8A
EQEAAYkBPQQYAQIACQUCVwoJQAIbLgCoCRC1Pkj2z40kW50gBBkBAgAGBQJXCglA
AAoJEKriaOJ29qJkESIEAMdyZdTdEplYFudU0yamTKckoQvnSWJ/8kHtKZmLYsTj
9xU1Djg73KgUjLjdgHuavPfa3H/G6jQhNAUL6FPybQuqkSfJGEBdW3f/e2gDxR0I
BgZZL4kP+Yh3agfrFUWY1t6k578+AfFW6KYBajp1CYRw+BX7ajK55DcFVWJ+hn8f
qlQEANp6t254S5x0JNMxoZrLdY2itWLllzC2JnV70FoAhdKT9NtvL9W6aOIZvhpi
Rmrfvj9nqwfprwmKhnSX/pZvl1PVOce3msSrCRpfGU5WHGjt9PBGuhZZ9MfSxT5L
3Aqt9alNCirksiRK8ubJtvNUh68qFuoQN55DUNyLmt9aIetz
=TMvZ
-----END PGP PUBLIC KEY BLOCK-----', user_id: '1')
dg.recipients.create(email: 'nealiof1000@gmail.com', pub_key: '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: Mailvelope v1.3.6
Comment: https://www.mailvelope.com

xo0EVwrl6wEEAN3HoKHaSivEiYXN9pV7iB6cUMd3iN1ktKCtAd6hSfnSEN5f
9TomgH9osLJNPMMqRhdLg/UwgaGX4N9XccthGJNJB1Wdj12lfS4VzVzYhRS8
RYys/Lh6s5ciwIfuQ8GhdSplEDZv4/OMPrDgb/FDzsXJDWScFaQ0LCJe72F2
X7U9ABEBAAHNIW15dGVzdGtleSA8bmVhbGlvZjEwMDBAZ21haWwuY29tPsK4
BBMBAgAiBQJXCuXrAhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRA2
mMWGDinKOecIA/4iYvJ79fpIIRacRUFbo4QQA1X2W92/J79zH7kIzo1tzCuu
g4bLqeILa2sjU1skQlXpKnM54ZtO3rsaWoqaZF16LPYLqx+IQ6eog+RaR7C7
ELoIqwxxkjH0HWec70N2BKhfnbn0kUqKdUbAmLwdeixJpI4lBnN0FvnsNXIQ
Mh53Ks6NBFcK5esBBADB8HZAxohpfgwROuP9OhOwa4t+kzcJrzxb9BKR15u8
JgAS9JNmenJRhM5DOZS3hs5vJ6HIWnGeWRS7LBrMpQMvu5L45zt2A//Epq4z
clMgAtNMMO4wWYUaDXlY1hk5m12Hef8VY8wPOPXcqCAdEn/xi0fF2EJmiuIw
Vrnl6iY/IwARAQABwp8EGAECAAkFAlcK5esCGwwACgkQNpjFhg4pyjnHFgQA
m3Rw6hhG4AjtqHhqK0mKhEx5lMLf4ApUQbmSfl/AJkKEcrkOSfu8B9lD0wZd
9AYeKEZlU9UT4E989YC63YTCobtDgLliA0sXlwRIOnVcjFzGLVATbJcrb/Wt
Lij4XfiV82aiLJ1RcJ7+UeyiG+YBhA80jlYekU9JMoiaL3kNVLQ=
=8AWs
-----END PGP PUBLIC KEY BLOCK-----')
 dg.recipients.create(email: 'sannvoun@gmail.com', pub_key: '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

mQENBFcKgzkBCAC+3a3yS2X1eKcEHs9+mikZSM57unvT/+seFL364/IMq1gZ2COu
OVvHy9+DBqPA2A9G9Lxoex0vjVmCwBRwVP60oSsz+JdSYjvc/SelMltRozitV/Ma
7Ki5fBOrp8gaJy0MtAItUNsruMBBd9SdujjPUoDLUUJ3L4+jkHwykYze5KHDnuzP
zB5eHReh4OAHBb8wRzFaTt9Pv4xj4I3R7dNO+zUNDPSgIKke9iLMDSt4u001zrxj
tKZMzz+OKMh9KRbdwkjvQ9MWgoriUx1Z4jn66f6EkEa1D6MRKGrgad4k0kyzUnNC
o5auQ+3mkDaCvF5o2UapurHxew846Js3QusvABEBAAG0G1Nhbm4gViA8c2FubnZv
dW5AZ21haWwuY29tPokBOAQTAQIAIgUCVwqDOQIbAwYLCQgHAwIGFQgCCQoLBBYC
AwECHgECF4AACgkQvcSv6ghcYvWPkggAswnsTEs4bNyIa1wN1eMcm98EVKTm/wg8
qPstRHD5okWz6UVeSet47PhAbY5HOG55XYi7aJIcLumTEkaT7wYwT2rdqflk6GI+
Iuy9iJgCXfJPngG2MQ374YuUGXwGGutpFetllFCpShYCcU/3OC1gZNoR+DlznTrr
GMN9gDrr7uJxqwKC5f9E6E0VMAlyH4713EdP3UzttX7+Q3ED6/73DD5rh+H3GMY+
xgAM2qst91ISYj+/KZ5+AtzWbAMlbypazMJVFRWBbi7hWYIQ5G82iJXuS9/HkGQI
jRGXk5Qy/RmyN0RA1zCIROEeKIbcKyj+/dlDFHcfR7lX0Yb0S19z97kBDQRXCoM5
AQgA53lwR2LQ9b7RGr9fA2SQsdte4mXl2SRj/685Cm9BDXIZtCdzAMNTcT/LdPif
WtupMiftcSueSmy3oK87z0pAGBFDn0ZwMjdX89pR1+dNz7Hg7qUF5Kht7Sep9EdG
VYuKC6vxJxP14r8gM5Twdb7fvbJaYWhZcQx3KqpY+6QEylSJc2Wqeg4nc5IE5509
UxaJg2zvBzA4WUv88t8mv9/fSX+uY6tEuJ1ASAKwOzJAkGsjuOm9YBLzqWtMG5al
jnMojLKU+VqRUvU1KGN30zA9ED6lrBVU+Clu4J7Q1T9NO34CLK/7hPyJCBgwQ64E
HIrNYKK3zWQYjJUFBeQJDzfRywARAQABiQEfBBgBAgAJBQJXCoM5AhsMAAoJEL3E
r+oIXGL1jcoH/2aGrXb70CNNysUue2Xkl5CbanLDxTauYm50FaTugPNWy8FPSaWq
I4vZtygWkvS80C0c198KyGZx8IeoEp1BvfAY5qly6C/t90oIp0hCxPJlKQKjWYIF
zU8yaSVU2MRvHDcN+D+c2FRE4YRIfRLJczfF+OHsDL1ua9Qp0sVaMpK1Ag5RpjIq
t8OplZR7YinOQWNDXKnxd4iP8pyXPDaAq7R1Bdnc/Fh8Qhjff4p2D97/HRzfLoJZ
AZDyUZPwSaDvpJ4SnbXK0SDT45AsqJ5nJeb+NlPTDC/WDHrdYcIrr6IHAokCAUt6
siTziN9JTtvun/xLA1//7gCvIVPski8Aw4s=
=vP1h
-----END PGP PUBLIC KEY BLOCK-----')
 dg.recipients.create(email: 'chaddierking@gmail.com', pub_key: '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

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
lGrSGdM=
=hu6o
-----END PGP PUBLIC KEY BLOCK-----')

dg.recipients.create(email: 'cmonson91@gmail.com', pub_key: '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: Mailvelope v1.3.6
Comment: https://www.mailvelope.com

xsBNBFcKpDgBCADZ57VQEzQWsFL159/2HW/A2/tNt5Qw70QPhJgduG0Syv7O
qAKVyXklJGaNKcr6GTEwWUuXVawnc19JswMctL9rDk+N2hL9YPMsAsZL8bwG
nuMT7Rkm5YIIMbCEFeVYLZgPXVMQ/AU1Qs3GQWKHsSioxhihveNmiF66n1HW
8BdfxGifvMHsl63SbE8zy1XJkDMW0JugYYozl4R5EuRAnbRrFG7yXuvjQN/V
/H4iAmj1j93725cKrfugTkn2mV+vT7jteMY95W+xJUc6dibhpeQhb6kcJaJM
r/AFB59BKAQVMMuX3SBs+PJ3hp5w+e0e2yZ9cLdZONIf2FkFTiEvXr7JABEB
AAHNIkNhc2V5IE1vbnNvbiA8Q21vbnNvbjkxQGdtYWlsLmNvbT7CwHgEEwEC
ACIFAlcKpDgCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEF922pJm
PmiH8f8H/1XxFyK/wSE/490DLP90CFEmDfwGmGer68YD6GkVmMsar2CG2CBk
77Q0FqzyVer0Tp6zndbnlk14/+YLGK80We5aIgHgbxEQrJuLZqBWNPWsb8rw
1DZoedc9A7vSbc1OYwGixEqtlmdvdKQ+3Fh2bZLGyHtZax2hMYJ6326O114j
0/c/PXv1krDfCRyPKlJAIdAIQo0KHYYmrO2yNUPaQNIws5ZWvHMM6lSR5vPH
j8ng+/HmAaLcMqL8TRZA+ohB9eKHMLPFUkj9TuhAx3HkXpfzRR5A72WX8oHP
zeYiTRw95KjYmiVEvS+3FqvSao5b9XPXNPTzlCwyCwmL8TcMtE3OwE0EVwqk
OAEIANtrxzw9sxPRr0TKiUvo1hGp9mZqkSYiqVqQ6zkbx3Lxydz3Zxmzjo3b
C4p5cUfjnXELY2xrnF85iTzxQlWs+4G+erI/gWDm8PSKLtjMfQP2hsDmB0SF
xGF+RWq22A7AuswdPTEPvMNw7fgvniqbeIXfUTyl3I+crCTAJFrRM7lJfhbm
vJ0YHH0mu6jJDVb3BdIxpOF9+dcFIQpLadtrb/SbRRMP+UBj5CVi2aBriyiJ
CcQLTrEGFsNg7ok3gH99tznkGfJgVjaD2qqGQa5a55mn6O7qtG2aCnh9FAuk
Tl2zOPhYPf3KnPkscKoVIWdZGJMpjK/mgP+RW6pT9vupdM8AEQEAAcLAXwQY
AQIACQUCVwqkOAIbDAAKCRBfdtqSZj5ohyJXCACXzbtrX4x8Rtp57efKwAFc
KAymhM7u+v+bt5mpbUYW17YD1laO0h+0joVpn8sbvZJTy8zpEfnb2eJ8kSLj
Vy3daVWgCQAefRhb32MupfiiribSbCo9MOwzKoDswycqnfE6pPRF42hpiGgF
Nv3mVeg+gsfi/WaZ/tlEv/rnyY9aMBr5qLrxwwPJHsMdODacJeBBQBk7YLHG
8H4byMKlMaNPC4Do6oObCIljAQBpF+XC2xGVrXGbGJhx+GAqZWSB+ALMcR7Z
78P8lDtbQNBey3JAXmXv356+pP0w00I+lcRab8TMu8aYfAXjUzd1a8QQhq16
r+7+xfVco5Hh4VdibtIC
=NvCk
-----END PGP PUBLIC KEY BLOCK-----')
# dg.recipients.create(email: 'recipient5@test.com', pub_key: 'etewtewrtewtrewte')
