package com.ctfzonelabs.todo.data;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* loaded from: classes3.dex */
public final class TaskDao_Impl implements TaskDao {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<Task> __deletionAdapterOfTask;
    private final EntityInsertionAdapter<Task> __insertionAdapterOfTask;
    private final SharedSQLiteStatement __preparedStmtOfDeleteCompletedTasks;
    private final EntityDeletionOrUpdateAdapter<Task> __updateAdapterOfTask;

    public TaskDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfTask = new EntityInsertionAdapter<Task>(__db) { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `tasks` (`id`,`title`,`description`,`isCompleted`,`createdAt`) VALUES (nullif(?, 0),?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Task task) {
                supportSQLiteStatement.bindLong(1, task.getId());
                if (task.getTitle() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, task.getTitle());
                }
                if (task.getDescription() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, task.getDescription());
                }
                supportSQLiteStatement.bindLong(4, task.isCompleted() ? 1L : 0L);
                supportSQLiteStatement.bindLong(5, task.getCreatedAt());
            }
        };
        this.__deletionAdapterOfTask = new EntityDeletionOrUpdateAdapter<Task>(__db) { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "DELETE FROM `tasks` WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final Task entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__updateAdapterOfTask = new EntityDeletionOrUpdateAdapter<Task>(__db) { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `tasks` SET `id` = ?,`title` = ?,`description` = ?,`isCompleted` = ?,`createdAt` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Task task) {
                supportSQLiteStatement.bindLong(1, task.getId());
                if (task.getTitle() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, task.getTitle());
                }
                if (task.getDescription() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, task.getDescription());
                }
                supportSQLiteStatement.bindLong(4, task.isCompleted() ? 1L : 0L);
                supportSQLiteStatement.bindLong(5, task.getCreatedAt());
                supportSQLiteStatement.bindLong(6, task.getId());
            }
        };
        this.__preparedStmtOfDeleteCompletedTasks = new SharedSQLiteStatement(__db) { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM tasks WHERE isCompleted = 1";
            }
        };
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Object insertTask(final Task task, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                TaskDao_Impl.this.__db.beginTransaction();
                try {
                    Long _result = Long.valueOf(TaskDao_Impl.this.__insertionAdapterOfTask.insertAndReturnId(task));
                    TaskDao_Impl.this.__db.setTransactionSuccessful();
                    return _result;
                } finally {
                    TaskDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Object deleteTask(final Task task, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                TaskDao_Impl.this.__db.beginTransaction();
                try {
                    TaskDao_Impl.this.__deletionAdapterOfTask.handle(task);
                    TaskDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    TaskDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Object updateTask(final Task task, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                TaskDao_Impl.this.__db.beginTransaction();
                try {
                    TaskDao_Impl.this.__updateAdapterOfTask.handle(task);
                    TaskDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    TaskDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Object deleteCompletedTasks(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement _stmt = TaskDao_Impl.this.__preparedStmtOfDeleteCompletedTasks.acquire();
                try {
                    TaskDao_Impl.this.__db.beginTransaction();
                    try {
                        _stmt.executeUpdateDelete();
                        TaskDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        TaskDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    TaskDao_Impl.this.__preparedStmtOfDeleteCompletedTasks.release(_stmt);
                }
            }
        }, $completion);
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Flow<List<Task>> getActiveTasks() {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM tasks WHERE isCompleted = 0 ORDER BY createdAt DESC", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"tasks"}, new Callable<List<Task>>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.9
            @Override // java.util.concurrent.Callable
            public List<Task> call() throws Exception {
                String _tmpTitle;
                String _tmpDescription;
                Cursor _cursor = DBUtil.query(TaskDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
                    int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
                    int _cursorIndexOfIsCompleted = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompleted");
                    int _cursorIndexOfCreatedAt = CursorUtil.getColumnIndexOrThrow(_cursor, "createdAt");
                    List<Task> _result = new ArrayList<>(_cursor.getCount());
                    while (_cursor.moveToNext()) {
                        long _tmpId = _cursor.getLong(_cursorIndexOfId);
                        if (_cursor.isNull(_cursorIndexOfTitle)) {
                            _tmpTitle = null;
                        } else {
                            _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
                        }
                        if (_cursor.isNull(_cursorIndexOfDescription)) {
                            _tmpDescription = null;
                        } else {
                            String _tmpDescription2 = _cursor.getString(_cursorIndexOfDescription);
                            _tmpDescription = _tmpDescription2;
                        }
                        int _tmp = _cursor.getInt(_cursorIndexOfIsCompleted);
                        boolean _tmpIsCompleted = _tmp != 0;
                        long _tmpCreatedAt = _cursor.getLong(_cursorIndexOfCreatedAt);
                        Task _item = new Task(_tmpId, _tmpTitle, _tmpDescription, _tmpIsCompleted, _tmpCreatedAt);
                        _result.add(_item);
                    }
                    return _result;
                } finally {
                    _cursor.close();
                }
            }

            protected void finalize() {
                _statement.release();
            }
        });
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Flow<List<Task>> getCompletedTasks() {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM tasks WHERE isCompleted = 1 ORDER BY createdAt DESC", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"tasks"}, new Callable<List<Task>>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.10
            @Override // java.util.concurrent.Callable
            public List<Task> call() throws Exception {
                String _tmpTitle;
                String _tmpDescription;
                Cursor _cursor = DBUtil.query(TaskDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
                    int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
                    int _cursorIndexOfIsCompleted = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompleted");
                    int _cursorIndexOfCreatedAt = CursorUtil.getColumnIndexOrThrow(_cursor, "createdAt");
                    List<Task> _result = new ArrayList<>(_cursor.getCount());
                    while (_cursor.moveToNext()) {
                        long _tmpId = _cursor.getLong(_cursorIndexOfId);
                        if (_cursor.isNull(_cursorIndexOfTitle)) {
                            _tmpTitle = null;
                        } else {
                            _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
                        }
                        if (_cursor.isNull(_cursorIndexOfDescription)) {
                            _tmpDescription = null;
                        } else {
                            String _tmpDescription2 = _cursor.getString(_cursorIndexOfDescription);
                            _tmpDescription = _tmpDescription2;
                        }
                        int _tmp = _cursor.getInt(_cursorIndexOfIsCompleted);
                        boolean _tmpIsCompleted = _tmp != 0;
                        long _tmpCreatedAt = _cursor.getLong(_cursorIndexOfCreatedAt);
                        Task _item = new Task(_tmpId, _tmpTitle, _tmpDescription, _tmpIsCompleted, _tmpCreatedAt);
                        _result.add(_item);
                    }
                    return _result;
                } finally {
                    _cursor.close();
                }
            }

            protected void finalize() {
                _statement.release();
            }
        });
    }

    @Override // com.ctfzonelabs.todo.data.TaskDao
    public Flow<List<Task>> getAllTasks() {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM tasks ORDER BY createdAt DESC", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"tasks"}, new Callable<List<Task>>() { // from class: com.ctfzonelabs.todo.data.TaskDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<Task> call() throws Exception {
                String _tmpTitle;
                String _tmpDescription;
                Cursor _cursor = DBUtil.query(TaskDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
                    int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
                    int _cursorIndexOfIsCompleted = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompleted");
                    int _cursorIndexOfCreatedAt = CursorUtil.getColumnIndexOrThrow(_cursor, "createdAt");
                    List<Task> _result = new ArrayList<>(_cursor.getCount());
                    while (_cursor.moveToNext()) {
                        long _tmpId = _cursor.getLong(_cursorIndexOfId);
                        if (_cursor.isNull(_cursorIndexOfTitle)) {
                            _tmpTitle = null;
                        } else {
                            _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
                        }
                        if (_cursor.isNull(_cursorIndexOfDescription)) {
                            _tmpDescription = null;
                        } else {
                            String _tmpDescription2 = _cursor.getString(_cursorIndexOfDescription);
                            _tmpDescription = _tmpDescription2;
                        }
                        int _tmp = _cursor.getInt(_cursorIndexOfIsCompleted);
                        boolean _tmpIsCompleted = _tmp != 0;
                        long _tmpCreatedAt = _cursor.getLong(_cursorIndexOfCreatedAt);
                        Task _item = new Task(_tmpId, _tmpTitle, _tmpDescription, _tmpIsCompleted, _tmpCreatedAt);
                        _result.add(_item);
                    }
                    return _result;
                } finally {
                    _cursor.close();
                }
            }

            protected void finalize() {
                _statement.release();
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
