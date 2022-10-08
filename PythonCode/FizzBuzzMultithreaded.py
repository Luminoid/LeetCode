import threading
from typing import Callable


class FizzBuzz:
    def __init__(self, n: int):
        self.n = n
        self.done = False
        self.fizzLock = threading.Lock()
        self.buzzLock = threading.Lock()
        self.fizzbuzzLock = threading.Lock()
        self.numberLock = threading.Lock()
        self.fizzLock.acquire()
        self.buzzLock.acquire()
        self.fizzbuzzLock.acquire()

    # printFizz() outputs "fizz"
    def fizz(self, printFizz: 'Callable[[], None]') -> None:
        while True:
            self.fizzLock.acquire()
            if self.done:
                return
            printFizz()
            self.numberLock.release()

    # printBuzz() outputs "buzz"
    def buzz(self, printBuzz: 'Callable[[], None]') -> None:
        while True:
            self.buzzLock.acquire()
            if self.done:
                return
            printBuzz()
            self.numberLock.release()

    # printFizzBuzz() outputs "fizzbuzz"
    def fizzbuzz(self, printFizzBuzz: 'Callable[[], None]') -> None:
        while True:
            self.fizzbuzzLock.acquire()
            if self.done:
                return
            printFizzBuzz()
            self.numberLock.release()

    # printNumber(x) outputs "x", where x is an integer.
    def number(self, printNumber: 'Callable[[int], None]') -> None:
        for i in range(1, self.n + 1):
            self.numberLock.acquire()
            if i % 15 == 0:
                self.fizzbuzzLock.release()
            elif i % 3 == 0:
                self.fizzLock.release()
            elif i % 5 == 0:
                self.buzzLock.release()
            else:
                printNumber(i)
                self.numberLock.release()
        self.numberLock.acquire()
        self.done = True
        self.fizzLock.release()
        self.buzzLock.release()
        self.fizzbuzzLock.release()
        return


if __name__ == '__main__':
    fizzBuzz = FizzBuzz(15)

    t1 = threading.Thread(target=fizzBuzz.fizz, args=(lambda: print("fizz"),))
    t2 = threading.Thread(target=fizzBuzz.buzz, args=(lambda: print("buzz"),))
    t3 = threading.Thread(target=fizzBuzz.fizzbuzz, args=(lambda: print("fizzbuzz"),))
    t4 = threading.Thread(target=fizzBuzz.number, args=(lambda x: print(x),))
    t1.start()
    t2.start()
    t3.start()
    t4.start()
