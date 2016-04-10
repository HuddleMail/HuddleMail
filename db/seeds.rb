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
# dg.recipients.create(email: 'recipient2@test.com', pub_key: 'sfsfsefrgregegrge')
# dg.recipients.create(email: 'recipient3@test.com', pub_key: 'htrhyhtrhhrthtrht')
# dg.recipients.create(email: 'recipient4@test.com', pub_key: '34r3243gegdgdfggg')
# dg.recipients.create(email: 'recipient5@test.com', pub_key: 'etewtewrtewtrewte')
