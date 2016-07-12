package spacemadness.com.lunarconsole.console;

import android.view.ViewGroup;
import spacemadness.com.lunarconsole.console.ConsoleAdapter.ViewHolder;

public abstract class ViewHolderBuilder<T extends ConsoleEntry> {
    public abstract ViewHolder<T> createViewHolder(ViewGroup viewGroup);
}
