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
Version: GnuPG v1

mQENBFcKeVEBCADBYzc1Bb1AG4Z6eExWJ7wEXteUFUjwrgM/9w82ji7Gdg6cFETr
XXhz56D5owVKYZusSm6q6ZYlW+sPWhGm4ghzJ1d+5USAr1w41+WYEX79DHBJbeza
6jg+0tB8aWh3JbM4Gd+X2PZQIoYIsUA4+JMWGMxzP+koDwHKRPzYEqxogHi/olun
wWJuzIwVV28LSnWllf8gUOzB13WHkKPDJ55Qqc5HTGxGQQEnIsNwu+02PzlSnW1T
SxZRweCPKnvJVGutYJi0mBRQaMMzNAiAbO1Gn4CHT2IcEsLFyy9YC/72fzO4I9Ro
xqq46m1WsLh808uGYuem5mM6J+tfts8fjvJ3ABEBAAG0Bm5lYWxpb4kBOAQTAQIA
IgUCVwp5UQIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQf7QfGGmNiUlu
WQf+OHXzMZkgJIjFXk+pEfjsIki1Z5QLQklzQQF5Dx7p+6xvj2ravuETy59vpzJ4
5fY4zWLZA9TOhJXl9bow8JZswfJ4rylEYunBwza+xX3GWG4EJMuvHeKlbixPQB8U
8p9JMsmlEdPaNB6e29jfqdF4JujifJVfdC9OCcHmQTf0IwtZ+l+vRjkZXv5ebRQs
62RQKrybW36hq5o7ZA9rRyvetxJQ067/6hDtmdwo3s+DcM1kvIKeHTsTWtoQyeg0
LcdnJZlHaIpJW7N8BMv8TnciGBsWYngXtoihAHx3ihbSMlL366d7QhxeTJUSCAWJ
6hkNPwK5W35cy75VRiatRZ/UPbkBDQRXCnlRAQgAuZSP/dQ+WhxG6BCVq4ni1Msz
myOLQDoB3s0uPp2oOIjoHO0CLcsL+DvmQsOytqaeb/hJZxY0PrG5yBV/0KCKdvhp
kUJh3xVESLgt7bjZDoIF2MSzIC90qYoJ0GkC1IOrhlp4hgOVwEYneticU2us0d6f
aaPPnFdMs1+n/X1aUD2QAXx9U3zBJuQWryc2o1raY8gO6G2vBMCmAuZ7YRn25ogz
CQ6zM37bjkibj46HnU0a3GV2DdUiMO7mhuldnTk/8jNQjbwDavMraZl2k8Enjo7q
U1qFJlTQPTWEc6LROlNczE6C9ONyHtp4s4C0jNheqVVtrTh3OYUimOrycy0aqwAR
AQABiQEfBBgBAgAJBQJXCnlRAhsMAAoJEH+0HxhpjYlJyTUH/2DqN0Sn2LzeYOSd
zz28cm20qgTWqNApkgoUzBhgiGCncbpUa2IJLZiw9s+meP3biFHw9NYQ4mP+UPqK
H70LP6YbzcqrWPwtrkKhfCYXF4MPWGMit/+J6rigQ3e3tME+1DctUwbfe+t9eWbd
J4iQC0TcVN5Sj3Q1PVWa0jEE6fvimvlHXgIF6OAo807V7EUeKWygcAmKbl6EDJFh
39pNaLNZkE22gDzrNQgajwp1YCooE+tOWS2IW+5esvXrDAYOv6O2ZH2dzO/tnXQv
eVJqRkfifWsOpN8hrtvKFaz239ANiShkLEE+hWjABmqYluQ9kAvJ4WBOzsgdYNyW
5CfLAh8=
=ofqE
-----END PGP PUBLIC KEY BLOCK-----
')
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
# dg.recipients.create(email: 'recipient3@test.com', pub_key: 'htrhyhtrhhrthtrht')
# dg.recipients.create(email: 'recipient4@test.com', pub_key: '34r3243gegdgdfggg')
# dg.recipients.create(email: 'recipient5@test.com', pub_key: 'etewtewrtewtrewte')
