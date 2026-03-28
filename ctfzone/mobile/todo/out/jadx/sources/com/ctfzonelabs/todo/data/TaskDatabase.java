package com.ctfzonelabs.todo.data;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TaskDatabase.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&¨\u0006\u0006"}, d2 = {"Lcom/ctfzonelabs/todo/data/TaskDatabase;", "Landroidx/room/RoomDatabase;", "()V", "taskDao", "Lcom/ctfzonelabs/todo/data/TaskDao;", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class TaskDatabase extends RoomDatabase {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile TaskDatabase INSTANCE;

    public abstract TaskDao taskDao();

    /* compiled from: TaskDatabase.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;", "", "()V", "INSTANCE", "Lcom/ctfzonelabs/todo/data/TaskDatabase;", "getDatabase", "context", "Landroid/content/Context;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TaskDatabase getDatabase(Context context) {
            TaskDatabase instance;
            Intrinsics.checkNotNullParameter(context, "context");
            TaskDatabase taskDatabase = TaskDatabase.INSTANCE;
            if (taskDatabase != null) {
                return taskDatabase;
            }
            synchronized (this) {
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                instance = (TaskDatabase) Room.databaseBuilder(applicationContext, TaskDatabase.class, "task_database").build();
                Companion companion = TaskDatabase.INSTANCE;
                TaskDatabase.INSTANCE = instance;
            }
            return instance;
        }
    }
}
