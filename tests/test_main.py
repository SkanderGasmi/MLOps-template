import unittest
from src import main

class TestMain(unittest.TestCase):
    def test_data_shape(self):
        self.assertEqual(main.X.shape[0], 100)
        self.assertEqual(main.y.shape[0], 100)

if __name__ == '__main__':
    unittest.main()
