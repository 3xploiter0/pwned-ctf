package com.ctfzonelabs.todo.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* compiled from: TaskRepository.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000e0\rJ\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000e0\rJ\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000e0\rJ\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0019\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/ctfzonelabs/todo/data/TaskRepository;", "", "taskDao", "Lcom/ctfzonelabs/todo/data/TaskDao;", "(Lcom/ctfzonelabs/todo/data/TaskDao;)V", "deleteCompletedTasks", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteTask", "task", "Lcom/ctfzonelabs/todo/data/Task;", "(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getActiveTasks", "Lkotlinx/coroutines/flow/Flow;", "", "getAllTasks", "getCompletedTasks", "insertTask", "", "updateTask", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TaskRepository {
    public static final int $stable = 8;
    private final TaskDao taskDao;

    public TaskRepository(TaskDao taskDao) {
        Intrinsics.checkNotNullParameter(taskDao, "taskDao");
        this.taskDao = taskDao;
    }

    public final Flow<List<Task>> getActiveTasks() {
        return this.taskDao.getActiveTasks();
    }

    public final Flow<List<Task>> getCompletedTasks() {
        return this.taskDao.getCompletedTasks();
    }

    public final Flow<List<Task>> getAllTasks() {
        return this.taskDao.getAllTasks();
    }

    public final Object insertTask(Task task, Continuation<? super Long> continuation) {
        return this.taskDao.insertTask(task, continuation);
    }

    public final Object updateTask(Task task, Continuation<? super Unit> continuation) {
        Object objUpdateTask = this.taskDao.updateTask(task, continuation);
        return objUpdateTask == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdateTask : Unit.INSTANCE;
    }

    public final Object deleteTask(Task task, Continuation<? super Unit> continuation) {
        Object objDeleteTask = this.taskDao.deleteTask(task, continuation);
        return objDeleteTask == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDeleteTask : Unit.INSTANCE;
    }

    public final Object deleteCompletedTasks(Continuation<? super Unit> continuation) {
        Object objDeleteCompletedTasks = this.taskDao.deleteCompletedTasks(continuation);
        return objDeleteCompletedTasks == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDeleteCompletedTasks : Unit.INSTANCE;
    }
}
