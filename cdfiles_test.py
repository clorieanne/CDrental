import unittest
from cd_files import CD_files
from cd_files import Customer_files

class TestCD(unittest.TestCase):
  def test_cd_and_customer_identity_created(self):
    cd_files = CD_files()
    customer_files = Customer_files()
   

class TestCD(unittest.TestCase):
  def test_cd(self):
    cd_files = CD_files("1" , "cd1")
    self.assertEqual(cd_files.cd_id, "1")
    self.assertEqual(cd_files.cd_name, "cd1")

class TestCD(unittest.TestCase):
  def test_customer(self):
    customer_files = Customer_files("001", "jen")
    self.assertEqual(customer_files.customer_id ,"001")
    self.assertEqual(customer_files.customer_name, "jen")


if __name__ == '__main__':
  unittest.main()