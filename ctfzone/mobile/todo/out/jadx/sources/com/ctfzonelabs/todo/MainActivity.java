package com.ctfzonelabs.todo;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.ctfzonelabs.todo.data.TaskDatabase;
import com.ctfzonelabs.todo.data.TaskRepository;
import com.ctfzonelabs.todo.ui.screens.TodoScreenKt;
import com.ctfzonelabs.todo.ui.theme.ThemeKt;
import com.ctfzonelabs.todo.viewmodel.TaskViewModel;
import com.ctfzonelabs.todo.viewmodel.TaskViewModelFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u0007"}, d2 = {"Lcom/ctfzonelabs/todo/MainActivity;", "Landroidx/activity/ComponentActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class MainActivity extends ComponentActivity {
    public static final int $stable = 0;

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable$default(this, null, null, 3, null);
        TaskDatabase.Companion companion = TaskDatabase.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        TaskDatabase database = companion.getDatabase(applicationContext);
        TaskRepository repository = new TaskRepository(database.taskDao());
        final TaskViewModelFactory viewModelFactory = new TaskViewModelFactory(repository);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(-1633732280, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.MainActivity.onCreate.1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer $composer, int $changed) {
                ComposerKt.sourceInformation($composer, "C28@1134L351:MainActivity.kt#cup462");
                if (($changed & 11) != 2 || !$composer.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1633732280, $changed, -1, "com.ctfzonelabs.todo.MainActivity.onCreate.<anonymous> (MainActivity.kt:28)");
                    }
                    final TaskViewModelFactory taskViewModelFactory = viewModelFactory;
                    ThemeKt.TodoTheme(false, false, ComposableLambdaKt.composableLambda($composer, -1889189506, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.MainActivity.onCreate.1.1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer2, int $changed2) {
                            ComposerKt.sourceInformation($composer2, "C31@1268L11,29@1162L309:MainActivity.kt#cup462");
                            if (($changed2 & 11) != 2 || !$composer2.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1889189506, $changed2, -1, "com.ctfzonelabs.todo.MainActivity.onCreate.<anonymous>.<anonymous> (MainActivity.kt:29)");
                                }
                                Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                                long background = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable | 0).getBackground();
                                final TaskViewModelFactory taskViewModelFactory2 = taskViewModelFactory;
                                SurfaceKt.m2525SurfaceT9BRK9s(modifierFillMaxSize$default, null, background, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.composableLambda($composer2, 1727971843, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.MainActivity.onCreate.1.1.1
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                        invoke(composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer $composer3, int $changed3) {
                                        CreationExtras extras$iv;
                                        ComposerKt.sourceInformation($composer3, "C33@1362L37,34@1420L33:MainActivity.kt#cup462");
                                        if (($changed3 & 11) != 2 || !$composer3.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1727971843, $changed3, -1, "com.ctfzonelabs.todo.MainActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:33)");
                                            }
                                            ViewModelProvider.Factory factory$iv = taskViewModelFactory2;
                                            ComposerKt.sourceInformationMarkerStart($composer3, 1729797275, "CC(viewModel)P(3,2,1)56@2573L7,67@2980L63:ViewModel.kt#3tja67");
                                            ViewModelStoreOwner viewModelStoreOwner$iv = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, 6);
                                            if (viewModelStoreOwner$iv == null) {
                                                throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                                            }
                                            if (viewModelStoreOwner$iv instanceof HasDefaultViewModelProviderFactory) {
                                                extras$iv = ((HasDefaultViewModelProviderFactory) viewModelStoreOwner$iv).getDefaultViewModelCreationExtras();
                                            } else {
                                                extras$iv = CreationExtras.Empty.INSTANCE;
                                            }
                                            ViewModel viewModel = ViewModelKt.viewModel((KClass<ViewModel>) Reflection.getOrCreateKotlinClass(TaskViewModel.class), viewModelStoreOwner$iv, (String) null, factory$iv, extras$iv, $composer3, ((0 << 3) & 112) | ((0 << 3) & 896) | ((0 << 3) & 7168) | (57344 & (0 << 3)), 0);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            TaskViewModel viewModel2 = (TaskViewModel) viewModel;
                                            TodoScreenKt.TodoScreen(viewModel2, $composer3, 8);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer3.skipToGroupEnd();
                                    }
                                }), $composer2, 12582918, 122);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer2.skipToGroupEnd();
                        }
                    }), $composer, 384, 3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer.skipToGroupEnd();
            }
        }), 1, null);
    }
}
