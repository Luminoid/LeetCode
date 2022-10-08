import threading
from typing import Callable


class Foo:
    def __init__(self):
        self.firstLock = threading.Lock()
        self.secondLock = threading.Lock()
        self.firstLock.acquire()
        self.secondLock.acquire()

    def first(self, printFirst: 'Callable[[], None]') -> None:
        # printFirst() outputs "first". Do not change or remove this line.
        printFirst()
        self.firstLock.release()

    def second(self, printSecond: 'Callable[[], None]') -> None:
        with self.firstLock:
            # printSecond() outputs "second". Do not change or remove this line.
            printSecond()
            self.secondLock.release()

    def third(self, printThird: 'Callable[[], None]') -> None:
        with self.secondLock:
            # printThird() outputs "third". Do not change or remove this line.
            printThird()


if __name__ == '__main__':
    foo = Foo()

    t1 = threading.Thread(target=foo.first, args=(lambda: print("first"),))
    t2 = threading.Thread(target=foo.second, args=(lambda: print("second"),))
    t3 = threading.Thread(target=foo.third, args=(lambda: print("third"),))

    t3.start()
    t2.start()
    t1.start()
    # firstsecondthird
