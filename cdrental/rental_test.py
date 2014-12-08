import unittest
from rental import *

class TestCheckout(unittest.TestCase):
  def test_do_checkout(self):
    do_checkout(1, 1)
    assertTrue(getrental)