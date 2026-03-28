package com.ctfzonelabs.todo.viewmodel;

import androidx.core.view.MotionEventCompat;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.ctfzonelabs.todo.data.Task;
import com.ctfzonelabs.todo.data.TaskRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* compiled from: TaskViewModel.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\bJ\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\bR\u001d\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lcom/ctfzonelabs/todo/data/TaskRepository;", "(Lcom/ctfzonelabs/todo/data/TaskRepository;)V", "activeTasks", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/ctfzonelabs/todo/data/Task;", "getActiveTasks", "()Lkotlinx/coroutines/flow/Flow;", "completedTasks", "getCompletedTasks", "addTask", "", "title", "", "description", "deleteCompletedTasks", "deleteTask", "task", "getSecretFlag", "toggleTaskCompletion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TaskViewModel extends ViewModel {
    public static final int $stable = 8;
    private final Flow<List<Task>> activeTasks;
    private final Flow<List<Task>> completedTasks;
    private final TaskRepository repository;

    public TaskViewModel(TaskRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
        this.activeTasks = this.repository.getActiveTasks();
        this.completedTasks = this.repository.getCompletedTasks();
    }

    public final Flow<List<Task>> getActiveTasks() {
        return this.activeTasks;
    }

    public final Flow<List<Task>> getCompletedTasks() {
        return this.completedTasks;
    }

    public static /* synthetic */ void addTask$default(TaskViewModel taskViewModel, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        taskViewModel.addTask(str, str2);
    }

    /* compiled from: TaskViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.ctfzonelabs.todo.viewmodel.TaskViewModel$addTask$1", f = "TaskViewModel.kt", i = {}, l = {19}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.ctfzonelabs.todo.viewmodel.TaskViewModel$addTask$1, reason: invalid class name */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $description;
        final /* synthetic */ String $title;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$title = str;
            this.$description = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TaskViewModel.this.new AnonymousClass1(this.$title, this.$description, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (TaskViewModel.this.repository.insertTask(new Task(0L, StringsKt.trim((CharSequence) this.$title).toString(), StringsKt.trim((CharSequence) this.$description).toString(), false, 0L, 25, null), this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void addTask(String title, String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        if (!StringsKt.isBlank(title)) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(title, description, null), 3, null);
        }
    }

    /* compiled from: TaskViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.ctfzonelabs.todo.viewmodel.TaskViewModel$toggleTaskCompletion$1", f = "TaskViewModel.kt", i = {}, l = {26}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.ctfzonelabs.todo.viewmodel.TaskViewModel$toggleTaskCompletion$1, reason: invalid class name and case insensitive filesystem */
    static final class C06891 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Task $task;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06891(Task task, Continuation<? super C06891> continuation) {
            super(2, continuation);
            this.$task = task;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TaskViewModel.this.new C06891(this.$task, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06891) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    TaskRepository taskRepository = TaskViewModel.this.repository;
                    Task task = this.$task;
                    this.label = 1;
                    if (taskRepository.updateTask(task.copy((23 & 1) != 0 ? task.id : 0L, (23 & 2) != 0 ? task.title : null, (23 & 4) != 0 ? task.description : null, (23 & 8) != 0 ? task.isCompleted : !this.$task.isCompleted(), (23 & 16) != 0 ? task.createdAt : 0L), this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void toggleTaskCompletion(Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C06891(task, null), 3, null);
    }

    /* compiled from: TaskViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.ctfzonelabs.todo.viewmodel.TaskViewModel$deleteTask$1", f = "TaskViewModel.kt", i = {}, l = {32}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.ctfzonelabs.todo.viewmodel.TaskViewModel$deleteTask$1, reason: invalid class name and case insensitive filesystem */
    static final class C06881 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Task $task;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06881(Task task, Continuation<? super C06881> continuation) {
            super(2, continuation);
            this.$task = task;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TaskViewModel.this.new C06881(this.$task, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06881) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (TaskViewModel.this.repository.deleteTask(this.$task, this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void deleteTask(Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C06881(task, null), 3, null);
    }

    /* compiled from: TaskViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.ctfzonelabs.todo.viewmodel.TaskViewModel$deleteCompletedTasks$1", f = "TaskViewModel.kt", i = {}, l = {MotionEventCompat.AXIS_GENERIC_7}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.ctfzonelabs.todo.viewmodel.TaskViewModel$deleteCompletedTasks$1, reason: invalid class name and case insensitive filesystem */
    static final class C06871 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C06871(Continuation<? super C06871> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TaskViewModel.this.new C06871(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06871) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (TaskViewModel.this.repository.deleteCompletedTasks(this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void deleteCompletedTasks() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C06871(null), 3, null);
    }

    public final String getSecretFlag() {
        return "urchinsec{r3v3rs1ng_4ndr0id_APK_rgrdless}";
    }
}
