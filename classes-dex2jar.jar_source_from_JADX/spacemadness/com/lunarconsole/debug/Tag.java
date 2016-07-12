package spacemadness.com.lunarconsole.debug;

public class Tag {
    public boolean enabled;
    public final String name;

    public Tag(String str) {
        this(str, false);
    }

    public Tag(String str, boolean z) {
        this.name = str;
        this.enabled = z;
    }
}
