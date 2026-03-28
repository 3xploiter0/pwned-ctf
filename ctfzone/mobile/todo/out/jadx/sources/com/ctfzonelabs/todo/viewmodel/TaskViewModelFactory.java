package com.ctfzonelabs.todo.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.ctfzonelabs.todo.data.TaskRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TaskViewModel.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0002H\u0006\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\tH\u0016¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "repository", "Lcom/ctfzonelabs/todo/data/TaskRepository;", "(Lcom/ctfzonelabs/todo/data/TaskRepository;)V", "create", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TaskViewModelFactory implements ViewModelProvider.Factory {
    public static final int $stable = 8;
    private final TaskRepository repository;

    public TaskViewModelFactory(TaskRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        if (modelClass.isAssignableFrom(TaskViewModel.class)) {
            return new TaskViewModel(this.repository);
        }
        throw new IllegalArgumentException("Unknown ViewModel class");
    }
}
