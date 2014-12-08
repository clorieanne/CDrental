from dosql import *
import cgi
import json

def do_checkout(cd_id, cus_id):
  cd_id = cgi.escape(cd_id)
  cus_id = cgi.escape(cus_id)

  x = doSql()
  checkouts = x.execqry("select * from checkout(" + cd_id + "," + cus_id + "," +", 'Rented');", True)

  return checkouts
  

def getcount(cus_id):
  cus_id = cgi.escape(cus_id)

  x = doSql()
  counts = x.execqry("select * from getcount(" + cus_id + ");", False)
  
  return counts

def main(cd_id, cus_id):

  if getcount() != [0]:
    do_checkout(cd_id, cus_id)
  else:
    print 'Exceed maximum number of CDs allowed to be rented'
