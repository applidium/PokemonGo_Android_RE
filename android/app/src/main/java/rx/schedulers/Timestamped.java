package rx.schedulers;

public final class Timestamped<T> {
    private final long timestampMillis;
    private final T value;

    public Timestamped(long j, T t) {
        this.value = t;
        this.timestampMillis = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || !(obj instanceof Timestamped)) {
                return false;
            }
            Timestamped timestamped = (Timestamped) obj;
            if (this.timestampMillis != timestamped.timestampMillis) {
                return false;
            }
            if (this.value == null) {
                if (timestamped.value != null) {
                    return false;
                }
            } else if (!this.value.equals(timestamped.value)) {
                return false;
            }
        }
        return true;
    }

    public long getTimestampMillis() {
        return this.timestampMillis;
    }

    public T getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.value == null ? 0 : this.value.hashCode()) + ((((int) (this.timestampMillis ^ (this.timestampMillis >>> 32))) + 31) * 31);
    }

    public String toString() {
        return String.format("Timestamped(timestampMillis = %d, value = %s)", new Object[]{Long.valueOf(this.timestampMillis), this.value.toString()});
    }
}
