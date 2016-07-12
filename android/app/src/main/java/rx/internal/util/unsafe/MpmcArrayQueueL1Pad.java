package rx.internal.util.unsafe;

abstract class MpmcArrayQueueL1Pad<E> extends ConcurrentSequencedCircularArrayQueue<E> {
    long p10;
    long p11;
    long p12;
    long p13;
    long p14;
    long p15;
    long p16;
    long p30;
    long p31;
    long p32;
    long p33;
    long p34;
    long p35;
    long p36;
    long p37;

    public MpmcArrayQueueL1Pad(int i) {
        super(i);
    }
}
