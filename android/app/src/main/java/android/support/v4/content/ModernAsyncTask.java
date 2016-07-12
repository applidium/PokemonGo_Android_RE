package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

abstract class ModernAsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static InternalHandler sHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final FutureTask<Result> mFuture;
    private volatile Status mStatus;
    private final AtomicBoolean mTaskInvoked;
    private final WorkerRunnable<Params, Result> mWorker;

    /* renamed from: android.support.v4.content.ModernAsyncTask.1 */
    static final class C00361 implements ThreadFactory {
        private final AtomicInteger mCount;

        C00361() {
            this.mCount = new AtomicInteger(ModernAsyncTask.MESSAGE_POST_RESULT);
        }

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.mCount.getAndIncrement());
        }
    }

    private static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] mParams;

        private WorkerRunnable() {
        }
    }

    /* renamed from: android.support.v4.content.ModernAsyncTask.2 */
    class C00372 extends WorkerRunnable<Params, Result> {
        C00372() {
            super();
        }

        public Result call() throws Exception {
            ModernAsyncTask.this.mTaskInvoked.set(true);
            Process.setThreadPriority(10);
            return ModernAsyncTask.this.postResult(ModernAsyncTask.this.doInBackground(this.mParams));
        }
    }

    /* renamed from: android.support.v4.content.ModernAsyncTask.3 */
    class C00383 extends FutureTask<Result> {
        C00383(Callable callable) {
            super(callable);
        }

        protected void done() {
            try {
                ModernAsyncTask.this.postResultIfNotInvoked(get());
            } catch (Throwable e) {
                Log.w(ModernAsyncTask.LOG_TAG, e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (CancellationException e3) {
                ModernAsyncTask.this.postResultIfNotInvoked(null);
            } catch (Throwable e4) {
                RuntimeException runtimeException = new RuntimeException("An error occurred while executing doInBackground()", e4);
            }
        }
    }

    /* renamed from: android.support.v4.content.ModernAsyncTask.4 */
    static /* synthetic */ class C00394 {
        static final /* synthetic */ int[] $SwitchMap$android$support$v4$content$ModernAsyncTask$Status;

        static {
            $SwitchMap$android$support$v4$content$ModernAsyncTask$Status = new int[Status.values().length];
            try {
                $SwitchMap$android$support$v4$content$ModernAsyncTask$Status[Status.RUNNING.ordinal()] = ModernAsyncTask.MESSAGE_POST_RESULT;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$support$v4$content$ModernAsyncTask$Status[Status.FINISHED.ordinal()] = ModernAsyncTask.MESSAGE_POST_PROGRESS;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private static class AsyncTaskResult<Data> {
        final Data[] mData;
        final ModernAsyncTask mTask;

        AsyncTaskResult(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.mTask = modernAsyncTask;
            this.mData = dataArr;
        }
    }

    private static class InternalHandler extends Handler {
        public InternalHandler() {
            super(Looper.getMainLooper());
        }

        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            switch (message.what) {
                case ModernAsyncTask.MESSAGE_POST_RESULT /*1*/:
                    asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
                case ModernAsyncTask.MESSAGE_POST_PROGRESS /*2*/:
                    asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
                default:
            }
        }
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    static {
        sThreadFactory = new C00361();
        sPoolWorkQueue = new LinkedBlockingQueue(10);
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);
        sDefaultExecutor = THREAD_POOL_EXECUTOR;
    }

    public ModernAsyncTask() {
        this.mStatus = Status.PENDING;
        this.mTaskInvoked = new AtomicBoolean();
        this.mWorker = new C00372();
        this.mFuture = new C00383(this.mWorker);
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    private void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }

    private static Handler getHandler() {
        Handler handler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new InternalHandler();
                }
                handler = sHandler;
            } catch (Throwable th) {
                Class cls = ModernAsyncTask.class;
            }
        }
        return handler;
    }

    private Result postResult(Result result) {
        Handler handler = getHandler();
        Object[] objArr = new Object[MESSAGE_POST_RESULT];
        objArr[0] = result;
        handler.obtainMessage(MESSAGE_POST_RESULT, new AsyncTaskResult(this, objArr)).sendToTarget();
        return result;
    }

    private void postResultIfNotInvoked(Result result) {
        if (!this.mTaskInvoked.get()) {
            postResult(result);
        }
    }

    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    public final boolean cancel(boolean z) {
        return this.mFuture.cancel(z);
    }

    protected abstract Result doInBackground(Params... paramsArr);

    public final ModernAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    public final ModernAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.mStatus != Status.PENDING) {
            switch (C00394.$SwitchMap$android$support$v4$content$ModernAsyncTask$Status[this.mStatus.ordinal()]) {
                case MESSAGE_POST_RESULT /*1*/:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case MESSAGE_POST_PROGRESS /*2*/:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.mStatus = Status.RUNNING;
        onPreExecute();
        this.mWorker.mParams = paramsArr;
        executor.execute(this.mFuture);
        return this;
    }

    public final Result get() throws InterruptedException, ExecutionException {
        return this.mFuture.get();
    }

    public final Result get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.mFuture.get(j, timeUnit);
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final boolean isCancelled() {
        return this.mFuture.isCancelled();
    }

    protected void onCancelled() {
    }

    protected void onCancelled(Result result) {
        onCancelled();
    }

    protected void onPostExecute(Result result) {
    }

    protected void onPreExecute() {
    }

    protected void onProgressUpdate(Progress... progressArr) {
    }

    protected final void publishProgress(Progress... progressArr) {
        if (!isCancelled()) {
            getHandler().obtainMessage(MESSAGE_POST_PROGRESS, new AsyncTaskResult(this, progressArr)).sendToTarget();
        }
    }
}
