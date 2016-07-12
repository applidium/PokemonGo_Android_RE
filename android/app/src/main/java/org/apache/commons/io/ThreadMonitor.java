package org.apache.commons.io;

class ThreadMonitor implements Runnable {
    private final Thread thread;
    private final long timeout;

    private ThreadMonitor(Thread thread, long j) {
        this.thread = thread;
        this.timeout = j;
    }

    public static Thread start(long j) {
        return start(Thread.currentThread(), j);
    }

    public static Thread start(Thread thread, long j) {
        if (j <= 0) {
            return null;
        }
        Thread thread2 = new Thread(new ThreadMonitor(thread, j), ThreadMonitor.class.getSimpleName());
        thread2.setDaemon(true);
        thread2.start();
        return thread2;
    }

    public static void stop(Thread thread) {
        if (thread != null) {
            thread.interrupt();
        }
    }

    public void run() {
        try {
            Thread.sleep(this.timeout);
            this.thread.interrupt();
        } catch (InterruptedException e) {
        }
    }
}
