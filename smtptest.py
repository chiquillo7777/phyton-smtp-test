import smtplib

# Set rcptto to a valid google-hosted email address to receive the email
rcptto = ""
 
# Using this from_header, reply-to fails
from_header = '"a@a" <noreply-FAIL@test>'

# Using this from_header, reply-to works. Uncomment the line below to use it
# from_header = '"aa" <noreply-FAIL@test>'

conn = smtplib.SMTP("aspmx.l.google.com",25)

msg = "From: "+from_header
msg += "\nTo: "+rcptto
msg += "\nSubject: Testing"
msg += "\nReply-To: <reply-SUCCESS@test>"
msg += "\n\nTesting"

conn.helo("test.test")
conn.sendmail("testing@test", rcptto, msg)
conn.quit()