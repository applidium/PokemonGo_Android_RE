package spacemadness.com.lunarconsole.console;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.nianticlabs.pokemongo.R;

public class ConsoleAdapter extends BaseAdapter {
    private DataSource dataSource;

    public interface DataSource {
        ConsoleEntry getEntry(int i);

        int getEntryCount();
    }

    public static abstract class ViewHolder<T extends ConsoleEntry> {
        protected final View itemView;

        public ViewHolder(View view) {
            this.itemView = view;
        }

        void bindViewHolder(ConsoleEntry consoleEntry) {
            onBindViewHolder(consoleEntry);
        }

        protected int getColor(int i) {
            return getResources().getColor(i);
        }

        protected Context getContext() {
            return this.itemView.getContext();
        }

        protected Resources getResources() {
            return getContext().getResources();
        }

        protected String getString(int i) {
            return getResources().getString(i);
        }

        public abstract void onBindViewHolder(T t);
    }

    public ConsoleAdapter(DataSource dataSource) {
        if (dataSource == null) {
            throw new NullPointerException("Data source is null");
        }
        this.dataSource = dataSource;
    }

    public int getCount() {
        return this.dataSource.getEntryCount();
    }

    public Object getItem(int i) {
        return this.dataSource.getEntry(i);
    }

    public long getItemId(int i) {
        return (long) this.dataSource.getEntry(i).type;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view != null) {
            viewHolder = (ViewHolder) view.getTag();
        } else {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.lunar_layout_console_log_entry, viewGroup, false);
            viewHolder = new spacemadness.com.lunarconsole.console.ConsoleEntry.ViewHolder(view);
            view.setTag(viewHolder);
        }
        viewHolder.bindViewHolder(this.dataSource.getEntry(i));
        return view;
    }
}
