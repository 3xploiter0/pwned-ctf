package com.ctfzonelabs.todo.ui.screens;

import android.content.res.Resources;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationConstants;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.ListKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CheckboxDefaults;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.core.location.LocationRequestCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.profileinstaller.ProfileVerifier;
import com.ctfzonelabs.todo.R;
import com.ctfzonelabs.todo.data.Task;
import com.ctfzonelabs.todo.viewmodel.TaskViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: TodoScreen.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u001aC\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a5\u0010\t\u001a\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\rH\u0007¢\u0006\u0002\u0010\u000f\u001a#\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0007¢\u0006\u0002\u0010\u0013\u001a=\u0010\u0014\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00062\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0007¢\u0006\u0002\u0010\u0016\u001a\u0017\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\u0010\u001a\u001a#\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u000e2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0007¢\u0006\u0002\u0010\u001d\u001a1\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0007¢\u0006\u0002\u0010 \u001a\u0015\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0007¢\u0006\u0002\u0010$¨\u0006%²\u0006\n\u0010&\u001a\u00020'X\u008a\u008e\u0002²\u0006\n\u0010(\u001a\u00020'X\u008a\u008e\u0002²\u0006\n\u0010)\u001a\u00020*X\u008a\u008e\u0002²\u0006\n\u0010+\u001a\u00020'X\u008a\u008e\u0002²\u0006\u0010\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u008a\u0084\u0002²\u0006\u0010\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u008a\u0084\u0002²\u0006\n\u0010.\u001a\u00020\u000eX\u008a\u008e\u0002²\u0006\n\u0010/\u001a\u00020\u000eX\u008a\u008e\u0002"}, d2 = {"ActiveTasksList", "", "tasks", "", "Lcom/ctfzonelabs/todo/data/Task;", "onTaskClick", "Lkotlin/Function1;", "onDeleteTask", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "AddTaskDialog", "onDismiss", "Lkotlin/Function0;", "onAddTask", "Lkotlin/Function2;", "", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "CompletedTaskItem", "task", "onClick", "(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "CompletedTasksList", "onDeleteAll", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "EmptyState", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "SecretFlagDialog", "flag", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "TaskItem", "onDelete", "(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "TodoScreen", "viewModel", "Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;", "(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/Composer;I)V", "app_debug", "showCompletedTasks", "", "showAddTaskDialog", "secretTapCount", "", "showSecretFlag", "activeTasks", "completedTasks", "title", "description"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TodoScreenKt {
    public static final void TodoScreen(final TaskViewModel viewModel, Composer $composer, final int $changed) {
        Object value$iv$iv;
        Object value$iv$iv2;
        Object value$iv$iv3;
        Object value$iv$iv4;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Composer $composer3 = $composer.startRestartGroup(-714603204);
        ComposerKt.sourceInformation($composer3, "C(TodoScreen)32@1303L34,33@1367L34,34@1428L30,35@1485L34,37@1570L55,38@1677L55,40@1738L4866:TodoScreen.kt#73otoh");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(viewModel) ? 4 : 2;
        }
        if (($dirty & 11) != 2 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-714603204, $changed, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen (TodoScreen.kt:31)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -492369756, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv = $composer3.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final MutableState showCompletedTasks$delegate = (MutableState) value$iv$iv;
            ComposerKt.sourceInformationMarkerStart($composer3, -492369756, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv2 = $composer3.rememberedValue();
            if (it$iv$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(value$iv$iv2);
            } else {
                value$iv$iv2 = it$iv$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final MutableState showAddTaskDialog$delegate = (MutableState) value$iv$iv2;
            ComposerKt.sourceInformationMarkerStart($composer3, -492369756, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv3 = $composer3.rememberedValue();
            if (it$iv$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv$iv3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
                $composer3.updateRememberedValue(value$iv$iv3);
            } else {
                value$iv$iv3 = it$iv$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final MutableState secretTapCount$delegate = (MutableState) value$iv$iv3;
            ComposerKt.sourceInformationMarkerStart($composer3, -492369756, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv4 = $composer3.rememberedValue();
            if (it$iv$iv4 == Composer.INSTANCE.getEmpty()) {
                value$iv$iv4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(value$iv$iv4);
            } else {
                value$iv$iv4 = it$iv$iv4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final MutableState showSecretFlag$delegate = (MutableState) value$iv$iv4;
            final State activeTasks$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel.getActiveTasks(), CollectionsKt.emptyList(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer3, 56, 14);
            final State completedTasks$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel.getCompletedTasks(), CollectionsKt.emptyList(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer3, 56, 14);
            ComposableLambda composableLambda = ComposableLambdaKt.composableLambda($composer3, 1558475768, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C69@3110L11,70@3194L11,68@3042L200,42@1779L2010:TodoScreen.kt#73otoh");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1558475768, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous> (TodoScreen.kt:42)");
                        }
                        TopAppBarColors topAppBarColorsM2832topAppBarColorszjMxDiM = TopAppBarDefaults.INSTANCE.m2832topAppBarColorszjMxDiM(MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getPrimaryContainer(), 0L, 0L, MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getOnPrimaryContainer(), 0L, $composer4, (TopAppBarDefaults.$stable | 0) << 15, 22);
                        final MutableState<Integer> mutableState = secretTapCount$delegate;
                        final MutableState<Boolean> mutableState2 = showSecretFlag$delegate;
                        final MutableState<Boolean> mutableState3 = showCompletedTasks$delegate;
                        ComposableLambda composableLambda2 = ComposableLambdaKt.composableLambda($composer4, -1170132292, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                invoke(composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer $composer5, int $changed3) {
                                Object value$iv$iv5;
                                ComposerKt.sourceInformation($composer5, "C47@2044L262,44@1836L1143:TodoScreen.kt#73otoh");
                                if (($changed3 & 11) != 2 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1170132292, $changed3, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous>.<anonymous> (TodoScreen.kt:44)");
                                    }
                                    Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                                    Arrangement.HorizontalOrVertical horizontalOrVerticalM561spacedBy0680j_4 = Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(12));
                                    Modifier.Companion companion = Modifier.INSTANCE;
                                    Object key1$iv = mutableState;
                                    Object key2$iv = mutableState2;
                                    final MutableState<Integer> mutableState4 = mutableState;
                                    final MutableState<Boolean> mutableState5 = mutableState2;
                                    ComposerKt.sourceInformationMarkerStart($composer5, 511388516, "CC(remember)P(1,2):Composables.kt#9igjgp");
                                    boolean invalid$iv$iv = $composer5.changed(key1$iv) | $composer5.changed(key2$iv);
                                    Object it$iv$iv5 = $composer5.rememberedValue();
                                    if (invalid$iv$iv || it$iv$iv5 == Composer.INSTANCE.getEmpty()) {
                                        value$iv$iv5 = (Function0) new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$1$1$1$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(0);
                                            }

                                            @Override // kotlin.jvm.functions.Function0
                                            public /* bridge */ /* synthetic */ Unit invoke() {
                                                invoke2();
                                                return Unit.INSTANCE;
                                            }

                                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                            public final void invoke2() {
                                                TodoScreenKt.TodoScreen$lambda$8(mutableState4, TodoScreenKt.TodoScreen$lambda$7(mutableState4) + 1);
                                                if (TodoScreenKt.TodoScreen$lambda$7(mutableState4) >= 7) {
                                                    TodoScreenKt.TodoScreen$lambda$11(mutableState5, true);
                                                    TodoScreenKt.TodoScreen$lambda$8(mutableState4, 0);
                                                }
                                            }
                                        };
                                        $composer5.updateRememberedValue(value$iv$iv5);
                                    } else {
                                        value$iv$iv5 = it$iv$iv5;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    Modifier modifierM269clickableXHw0xAI$default = ClickableKt.m269clickableXHw0xAI$default(companion, false, null, null, (Function0) value$iv$iv5, 7, null);
                                    MutableState<Boolean> mutableState6 = mutableState3;
                                    ComposerKt.sourceInformationMarkerStart($composer5, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                                    MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalOrVerticalM561spacedBy0680j_4, centerVertically, $composer5, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                    int $changed$iv$iv = (432 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                    CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifierM269clickableXHw0xAI$default);
                                    Function0 factory$iv$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
                                    int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!($composer5.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer5.startReusableNode();
                                    if ($composer5.getInserting()) {
                                        $composer5.createNode(factory$iv$iv$iv);
                                    } else {
                                        $composer5.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer5);
                                    Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                                    }
                                    Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i = ($changed$iv$iv$iv >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    int i2 = ((432 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, 1817258295, "C56@2400L45,59@2643L11,55@2355L345,61@2725L232:TodoScreen.kt#73otoh");
                                    ImageKt.Image(PainterResources_androidKt.painterResource(R.drawable.ic_todo_logo, $composer5, 0), "Todo Logo", SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(32)), (Alignment) null, (ContentScale) null, 0.0f, ColorFilter.Companion.m4044tintxETnrds$default(ColorFilter.INSTANCE, MaterialTheme.INSTANCE.getColorScheme($composer5, MaterialTheme.$stable | 0).getOnPrimaryContainer(), 0, 2, null), $composer5, 440, 56);
                                    TextKt.m2673Text4IGK_g(TodoScreenKt.TodoScreen$lambda$1(mutableState6) ? "Completed Tasks" : "My Todo List", (Modifier) null, 0L, TextUnitKt.getSp(24), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199680, 0, 131030);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    $composer5.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        });
                        final MutableState<Boolean> mutableState4 = showCompletedTasks$delegate;
                        AppBarKt.TopAppBar(composableLambda2, null, null, ComposableLambdaKt.composableLambda($composer4, -2120332889, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope TopAppBar, Composer $composer5, int $changed3) {
                                Object value$iv$iv5;
                                Intrinsics.checkNotNullParameter(TopAppBar, "$this$TopAppBar");
                                ComposerKt.sourceInformation($composer5, "C73@3313L44,73@3292L465:TodoScreen.kt#73otoh");
                                if (($changed3 & 81) == 16 && $composer5.getSkipping()) {
                                    $composer5.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2120332889, $changed3, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous>.<anonymous> (TodoScreen.kt:73)");
                                }
                                Object key1$iv = mutableState4;
                                final MutableState<Boolean> mutableState5 = mutableState4;
                                ComposerKt.sourceInformationMarkerStart($composer5, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                                boolean invalid$iv$iv = $composer5.changed(key1$iv);
                                Object it$iv$iv5 = $composer5.rememberedValue();
                                if (invalid$iv$iv || it$iv$iv5 == Composer.INSTANCE.getEmpty()) {
                                    value$iv$iv5 = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$1$2$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(0);
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        public /* bridge */ /* synthetic */ Unit invoke() {
                                            invoke2();
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2() {
                                            TodoScreenKt.TodoScreen$lambda$2(mutableState5, !TodoScreenKt.TodoScreen$lambda$1(mutableState5));
                                        }
                                    };
                                    $composer5.updateRememberedValue(value$iv$iv5);
                                } else {
                                    value$iv$iv5 = it$iv$iv5;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                Object key1$iv2 = value$iv$iv5;
                                final MutableState<Boolean> mutableState6 = mutableState4;
                                IconButtonKt.IconButton((Function0) key1$iv2, null, false, null, null, ComposableLambdaKt.composableLambda($composer5, 1526980970, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.1.2.2
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                        invoke(composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer $composer6, int $changed4) {
                                        ComposerKt.sourceInformation($composer6, "C77@3679L11,74@3385L350:TodoScreen.kt#73otoh");
                                        if (($changed4 & 11) != 2 || !$composer6.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1526980970, $changed4, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous>.<anonymous>.<anonymous> (TodoScreen.kt:74)");
                                            }
                                            IconKt.m2147Iconww6aTOc(TodoScreenKt.TodoScreen$lambda$1(mutableState6) ? ListKt.getList(Icons.INSTANCE.getDefault()) : CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), TodoScreenKt.TodoScreen$lambda$1(mutableState6) ? "Show Active Tasks" : "Show Completed Tasks", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer6, MaterialTheme.$stable | 0).getOnPrimaryContainer(), $composer6, 0, 4);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer6.skipToGroupEnd();
                                    }
                                }), $composer5, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }), null, topAppBarColorsM2832topAppBarColorszjMxDiM, null, $composer4, 3078, 86);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            });
            ComposableLambda composableLambda2 = ComposableLambdaKt.composableLambda($composer3, -652550507, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    Object value$iv$iv5;
                    ComposerKt.sourceInformation($composer4, "C86@3941L28,87@4022L11,88@4092L11,85@3889L480:TodoScreen.kt#73otoh");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-652550507, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous> (TodoScreen.kt:84)");
                        }
                        if (!TodoScreenKt.TodoScreen$lambda$1(showCompletedTasks$delegate)) {
                            Object key1$iv = showAddTaskDialog$delegate;
                            final MutableState<Boolean> mutableState = showAddTaskDialog$delegate;
                            ComposerKt.sourceInformationMarkerStart($composer4, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                            boolean invalid$iv$iv = $composer4.changed(key1$iv);
                            Object it$iv$iv5 = $composer4.rememberedValue();
                            if (invalid$iv$iv || it$iv$iv5 == Composer.INSTANCE.getEmpty()) {
                                value$iv$iv5 = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$2$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Unit invoke() {
                                        invoke2();
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2() {
                                        TodoScreenKt.TodoScreen$lambda$5(mutableState, true);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv$iv5);
                            } else {
                                value$iv$iv5 = it$iv$iv5;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Object key1$iv2 = value$iv$iv5;
                            FloatingActionButtonKt.m2126FloatingActionButtonXz6DiA((Function0) key1$iv2, null, null, MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getPrimary(), MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getOnPrimary(), null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6942getLambda1$app_debug(), $composer4, 12582912, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            });
            ComposableLambda composableLambda3 = ComposableLambdaKt.composableLambda($composer3, 210585805, true, new Function3<PaddingValues, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(PaddingValues paddingValues, Composer composer, Integer num) throws Throwable {
                    invoke(paddingValues, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(PaddingValues paddingValues, Composer $composer4, int $changed2) throws Throwable {
                    Function0 factory$iv$iv$iv;
                    Object value$iv$iv5;
                    Object value$iv$iv6;
                    Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
                    ComposerKt.sourceInformation($composer4, "C106@4691L11,107@4757L11,99@4427L1663,156@6548L26,154@6452L136:TodoScreen.kt#73otoh");
                    int $dirty2 = $changed2;
                    if (($changed2 & 14) == 0) {
                        $dirty2 |= $composer4.changed(paddingValues) ? 4 : 2;
                    }
                    if (($dirty2 & 91) == 18 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(210585805, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous> (TodoScreen.kt:99)");
                    }
                    Modifier modifierPadding = PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), paddingValues);
                    Brush.Companion companion = Brush.INSTANCE;
                    long surfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getSurfaceVariant();
                    Modifier modifier$iv = BackgroundKt.background$default(modifierPadding, Brush.Companion.m3960verticalGradient8A3gB4$default(companion, CollectionsKt.listOf((Object[]) new Color[]{Color.m3993boximpl(MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getBackground()), Color.m3993boximpl(Color.m4001copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4005getAlphaimpl(surfaceVariant) : 0.3f, (14 & 2) != 0 ? Color.m4009getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(surfaceVariant) : 0.0f))}), 0.0f, 0.0f, 0, 14, (Object) null), null, 0.0f, 6, null);
                    MutableState<Boolean> mutableState = showCompletedTasks$delegate;
                    final State<List<Task>> state = completedTasks$delegate;
                    final TaskViewModel taskViewModel = viewModel;
                    final State<List<Task>> state2 = activeTasks$delegate;
                    ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                    int $changed$iv$iv = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                    Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer4.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                        factory$iv$iv$iv = factory$iv$iv$iv2;
                        $composer4.createNode(factory$iv$iv$iv);
                    } else {
                        factory$iv$iv$iv = factory$iv$iv$iv2;
                        $composer4.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer4);
                    Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                    }
                    Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                    int i = ($changed$iv$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    int i2 = ((0 >> 6) & 112) | 6;
                    BoxScope $this$invoke_u24lambda_u240 = BoxScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer4, -465195648, "C112@4893L998:TodoScreen.kt#73otoh");
                    AnimatedContentKt.AnimatedContent(Boolean.valueOf(TodoScreenKt.TodoScreen$lambda$1(mutableState)), null, new Function1<AnimatedContentTransitionScope<Boolean>, ContentTransform>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$1$1
                        @Override // kotlin.jvm.functions.Function1
                        public final ContentTransform invoke(AnimatedContentTransitionScope<Boolean> AnimatedContent) {
                            Intrinsics.checkNotNullParameter(AnimatedContent, "$this$AnimatedContent");
                            return AnimatedContent.using(AnimatedContentKt.togetherWith(EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(AnimationConstants.DefaultDurationMillis, 0, null, 6, null), 0.0f, 2, null), EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(AnimationConstants.DefaultDurationMillis, 0, null, 6, null), 0.0f, 2, null)), AnimatedContentKt.SizeTransform$default(false, null, 2, null));
                        }
                    }, null, "screen_transition", null, ComposableLambdaKt.composableLambda($composer4, -833394410, true, new Function4<AnimatedContentScope, Boolean, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$1$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(4);
                        }

                        @Override // kotlin.jvm.functions.Function4
                        public /* bridge */ /* synthetic */ Unit invoke(AnimatedContentScope animatedContentScope, Boolean bool, Composer composer, Integer num) {
                            invoke(animatedContentScope, bool.booleanValue(), composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(AnimatedContentScope AnimatedContent, boolean showCompleted, Composer $composer5, int $changed3) {
                            Intrinsics.checkNotNullParameter(AnimatedContent, "$this$AnimatedContent");
                            ComposerKt.sourceInformation($composer5, "C:TodoScreen.kt#73otoh");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-833394410, $changed3, -1, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous>.<anonymous>.<anonymous> (TodoScreen.kt:121)");
                            }
                            if (showCompleted) {
                                $composer5.startReplaceableGroup(1817261260);
                                ComposerKt.sourceInformation($composer5, "122@5342L242");
                                List listTodoScreen$lambda$13 = TodoScreenKt.TodoScreen$lambda$13(state);
                                final TaskViewModel taskViewModel2 = taskViewModel;
                                Function1<Task, Unit> function1 = new Function1<Task, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$1$2.1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Task task) {
                                        invoke2(task);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(Task it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        taskViewModel2.toggleTaskCompletion(it);
                                    }
                                };
                                final TaskViewModel taskViewModel3 = taskViewModel;
                                TodoScreenKt.CompletedTasksList(listTodoScreen$lambda$13, function1, new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$1$2.2
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Unit invoke() {
                                        invoke2();
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2() {
                                        taskViewModel3.deleteCompletedTasks();
                                    }
                                }, $composer5, 8);
                                $composer5.endReplaceableGroup();
                            } else {
                                $composer5.startReplaceableGroup(1817261548);
                                ComposerKt.sourceInformation($composer5, "128@5630L229");
                                List listTodoScreen$lambda$12 = TodoScreenKt.TodoScreen$lambda$12(state2);
                                final TaskViewModel taskViewModel4 = taskViewModel;
                                Function1<Task, Unit> function12 = new Function1<Task, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$1$2.3
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Task task) {
                                        invoke2(task);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(Task it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        taskViewModel4.toggleTaskCompletion(it);
                                    }
                                };
                                final TaskViewModel taskViewModel5 = taskViewModel;
                                TodoScreenKt.ActiveTasksList(listTodoScreen$lambda$12, function12, new Function1<Task, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$1$2.4
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Task task) {
                                        invoke2(task);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(Task it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        taskViewModel5.deleteTask(it);
                                    }
                                }, $composer5, 8);
                                $composer5.endReplaceableGroup();
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }), $composer4, 1597824, 42);
                    $composer4.startReplaceableGroup(-397442477);
                    ComposerKt.sourceInformation($composer4, "137@5973L93");
                    if (TodoScreenKt.TodoScreen$lambda$12(state2).isEmpty() && !TodoScreenKt.TodoScreen$lambda$1(mutableState)) {
                        TodoScreenKt.EmptyState($this$invoke_u24lambda_u240.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenter()), $composer4, 0, 0);
                    }
                    $composer4.endReplaceableGroup();
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.startReplaceableGroup(-397442282);
                    ComposerKt.sourceInformation($composer4, "145@6180L29,144@6137L261");
                    if (TodoScreenKt.TodoScreen$lambda$4(showAddTaskDialog$delegate)) {
                        Object key1$iv = showAddTaskDialog$delegate;
                        final MutableState<Boolean> mutableState2 = showAddTaskDialog$delegate;
                        ComposerKt.sourceInformationMarkerStart($composer4, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean invalid$iv$iv = $composer4.changed(key1$iv);
                        Object it$iv$iv5 = $composer4.rememberedValue();
                        if (invalid$iv$iv || it$iv$iv5 == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv6 = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$2$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Unit invoke() {
                                    invoke2();
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2() {
                                    TodoScreenKt.TodoScreen$lambda$5(mutableState2, false);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv$iv6);
                        } else {
                            value$iv$iv6 = it$iv$iv5;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        final TaskViewModel taskViewModel2 = viewModel;
                        final MutableState<Boolean> mutableState3 = showAddTaskDialog$delegate;
                        TodoScreenKt.AddTaskDialog((Function0) value$iv$iv6, new Function2<String, String, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.3.3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(String str, String str2) {
                                invoke2(str, str2);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String title, String description) {
                                Intrinsics.checkNotNullParameter(title, "title");
                                Intrinsics.checkNotNullParameter(description, "description");
                                taskViewModel2.addTask(title, description);
                                TodoScreenKt.TodoScreen$lambda$5(mutableState3, false);
                            }
                        }, $composer4, 0);
                    }
                    $composer4.endReplaceableGroup();
                    if (TodoScreenKt.TodoScreen$lambda$10(showSecretFlag$delegate)) {
                        String secretFlag = viewModel.getSecretFlag();
                        Object key1$iv2 = showSecretFlag$delegate;
                        final MutableState<Boolean> mutableState4 = showSecretFlag$delegate;
                        ComposerKt.sourceInformationMarkerStart($composer4, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean invalid$iv$iv2 = $composer4.changed(key1$iv2);
                        Object it$iv$iv6 = $composer4.rememberedValue();
                        if (invalid$iv$iv2 || it$iv$iv6 == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv5 = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TodoScreen$3$4$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Unit invoke() {
                                    invoke2();
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2() {
                                    TodoScreenKt.TodoScreen$lambda$11(mutableState4, false);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv$iv5);
                        } else {
                            value$iv$iv5 = it$iv$iv6;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        TodoScreenKt.SecretFlagDialog(secretFlag, (Function0) value$iv$iv5, $composer4, 0);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            });
            $composer2 = $composer3;
            ScaffoldKt.m2328ScaffoldTvnljyQ(null, composableLambda, null, null, composableLambda2, 0, 0L, 0L, null, composableLambda3, $composer2, 805330992, 493);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TodoScreen.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                TodoScreenKt.TodoScreen(viewModel, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean TodoScreen$lambda$1(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void TodoScreen$lambda$2(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean TodoScreen$lambda$4(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void TodoScreen$lambda$5(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int TodoScreen$lambda$7(MutableState<Integer> mutableState) {
        MutableState<Integer> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void TodoScreen$lambda$8(MutableState<Integer> mutableState, int value) {
        mutableState.setValue(Integer.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean TodoScreen$lambda$10(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void TodoScreen$lambda$11(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Task> TodoScreen$lambda$12(State<? extends List<Task>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Task> TodoScreen$lambda$13(State<? extends List<Task>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    public static final void SecretFlagDialog(final String flag, final Function0<Unit> onDismiss, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(flag, "flag");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Composer $composer3 = $composer.startRestartGroup(1829211672);
        ComposerKt.sourceInformation($composer3, "C(SecretFlagDialog)168@6734L653:TodoScreen.kt#73otoh");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(flag) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(onDismiss) ? 32 : 16;
        }
        final int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1829211672, $dirty2, -1, "com.ctfzonelabs.todo.ui.screens.SecretFlagDialog (TodoScreen.kt:167)");
            }
            $composer2 = $composer3;
            AndroidAlertDialog_androidKt.m1774AlertDialogOix01E0(onDismiss, ComposableLambdaKt.composableLambda($composer3, -1841214768, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.SecretFlagDialog.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C185@7255L73:TodoScreen.kt#73otoh");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1841214768, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.SecretFlagDialog.<anonymous> (TodoScreen.kt:185)");
                        }
                        ButtonKt.Button(onDismiss, null, false, null, null, null, null, null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6944getLambda2$app_debug(), $composer4, (($dirty2 >> 3) & 14) | 805306368, 510);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), null, null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6945getLambda3$app_debug(), ComposableLambdaKt.composableLambda($composer3, -525338965, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.SecretFlagDialog.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C180@7090L10,178@7017L188:TodoScreen.kt#73otoh");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-525338965, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.SecretFlagDialog.<anonymous> (TodoScreen.kt:178)");
                        }
                        TextStyle bodyLarge = MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable | 0).getBodyLarge();
                        TextKt.m2673Text4IGK_g(flag, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) FontFamily.INSTANCE.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyLarge, $composer4, $dirty2 & 14, 0, 65470);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), RoundedCornerShapeKt.m964RoundedCornerShape0680j_4(Dp.m6485constructorimpl(20)), 0L, 0L, 0L, 0L, 0.0f, null, $composer2, (($dirty2 >> 3) & 14) | 1769520, 0, 16156);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.SecretFlagDialog.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                TodoScreenKt.SecretFlagDialog(flag, onDismiss, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    public static final void ActiveTasksList(final List<Task> tasks, final Function1<? super Task, Unit> onTaskClick, final Function1<? super Task, Unit> onDeleteTask, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        Intrinsics.checkNotNullParameter(onTaskClick, "onTaskClick");
        Intrinsics.checkNotNullParameter(onDeleteTask, "onDeleteTask");
        Composer $composer2 = $composer.startRestartGroup(1986639181);
        ComposerKt.sourceInformation($composer2, "C(ActiveTasksList)P(2,1)199@7521L437:TodoScreen.kt#73otoh");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1986639181, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ActiveTasksList (TodoScreen.kt:198)");
        }
        LazyDslKt.LazyColumn(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), null, PaddingKt.m674PaddingValues0680j_4(Dp.m6485constructorimpl(16)), false, Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(12)), null, null, false, new Function1<LazyListScope, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.ActiveTasksList.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LazyListScope lazyListScope) {
                invoke2(lazyListScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LazyListScope LazyColumn) {
                Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
                final List items$iv = tasks;
                final Function1 key$iv = new Function1<Task, Object>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.ActiveTasksList.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Task it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Long.valueOf(it.getId());
                    }
                };
                final Function1<Task, Unit> function1 = onTaskClick;
                final Function1<Task, Unit> function12 = onDeleteTask;
                final Function1 contentType$iv = new Function1() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                        return invoke((Task) p1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Void invoke(Task task) {
                        return null;
                    }
                };
                LazyColumn.items(items$iv.size(), key$iv != null ? new Function1<Integer, Object>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                        return invoke(num.intValue());
                    }

                    public final Object invoke(int index) {
                        return key$iv.invoke(items$iv.get(index));
                    }
                } : null, new Function1<Integer, Object>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                        return invoke(num.intValue());
                    }

                    public final Object invoke(int index) {
                        return contentType$iv.invoke(items$iv.get(index));
                    }
                }, ComposableLambdaKt.composableLambdaInstance(-632812321, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(4);
                    }

                    @Override // kotlin.jvm.functions.Function4
                    public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                        invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(LazyItemScope $this$items, int it, Composer $composer3, int $changed2) {
                        ComposerKt.sourceInformation($composer3, "C152@7074L22:LazyDsl.kt#428nma");
                        int $dirty = $changed2;
                        if (($changed2 & 6) == 0) {
                            $dirty |= $composer3.changed($this$items) ? 4 : 2;
                        }
                        if (($changed2 & 48) == 0) {
                            $dirty |= $composer3.changed(it) ? 32 : 16;
                        }
                        if (($dirty & 147) == 146 && $composer3.getSkipping()) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-632812321, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)");
                        }
                        final Task task = (Task) items$iv.get(it);
                        ComposerKt.sourceInformationMarkerStart($composer3, -2103785672, "C*208@7791L151:TodoScreen.kt#73otoh");
                        final Function1 function13 = function1;
                        Function0<Unit> function0 = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$ActiveTasksList$1$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                function13.invoke(task);
                            }
                        };
                        final Function1 function14 = function12;
                        TodoScreenKt.TaskItem(task, function0, new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$ActiveTasksList$1$2$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                function14.invoke(task);
                            }
                        }, $composer3, Task.$stable | ((($dirty & 14) >> 3) & 14));
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
            }
        }, $composer2, 24966, 234);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.ActiveTasksList.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                TodoScreenKt.ActiveTasksList(tasks, onTaskClick, onDeleteTask, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    public static final void CompletedTasksList(final List<Task> tasks, final Function1<? super Task, Unit> onTaskClick, final Function0<Unit> onDeleteAll, Composer $composer, final int $changed) {
        Function0 factory$iv$iv$iv;
        String str;
        String str2;
        String str3;
        Composer $composer$iv;
        Composer $composer2;
        String str4;
        Composer $composer3;
        Function0 factory$iv$iv$iv2;
        Function0 factory$iv$iv$iv3;
        Function0 factory$iv$iv$iv4;
        MeasurePolicy measurePolicy$iv;
        Alignment.Horizontal horizontalAlignment$iv;
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        Intrinsics.checkNotNullParameter(onTaskClick, "onTaskClick");
        Intrinsics.checkNotNullParameter(onDeleteAll, "onDeleteAll");
        Composer $composer4 = $composer.startRestartGroup(-1010538699);
        ComposerKt.sourceInformation($composer4, "C(CompletedTasksList)P(2,1)223@8090L2160:TodoScreen.kt#73otoh");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1010538699, $changed, -1, "com.ctfzonelabs.todo.ui.screens.CompletedTasksList (TodoScreen.kt:222)");
        }
        Modifier modifier$iv = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
        ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
        Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
        MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv2, $composer4, ((6 >> 3) & 14) | ((6 >> 3) & 112));
        int $changed$iv$iv = (6 << 3) & 112;
        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
        Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
        if (!($composer4.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        $composer4.startReusableNode();
        if ($composer4.getInserting()) {
            factory$iv$iv$iv = factory$iv$iv$iv5;
            $composer4.createNode(factory$iv$iv$iv);
        } else {
            factory$iv$iv$iv = factory$iv$iv$iv5;
            $composer4.useNode();
        }
        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer4);
        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
        }
        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
        int i = ($changed$iv$iv$iv >> 6) & 14;
        ComposerKt.sourceInformationMarkerStart($composer4, -384784025, "C88@4444L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        int i2 = ((6 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer4, 902083983, "C245@8803L481:TodoScreen.kt#73otoh");
        $composer4.startReplaceableGroup(902083983);
        ComposerKt.sourceInformation($composer4, "227@8194L589");
        if (tasks.isEmpty()) {
            str = "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh";
            str2 = "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp";
            str3 = "C88@4444L9:Column.kt#2w3rfo";
            $composer$iv = $composer4;
            $composer2 = $composer4;
            str4 = "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo";
            $composer3 = $composer4;
        } else {
            Modifier modifier$iv2 = PaddingKt.m681padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6485constructorimpl(16));
            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getEnd();
            ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv3 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv2 = (54 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier$iv2);
            Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer4.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer4.startReusableNode();
            if ($composer4.getInserting()) {
                factory$iv$iv$iv4 = factory$iv$iv$iv6;
                $composer4.createNode(factory$iv$iv$iv4);
            } else {
                factory$iv$iv$iv4 = factory$iv$iv$iv6;
                $composer4.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3496constructorimpl($composer4);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                measurePolicy$iv = measurePolicy$iv3;
                horizontalAlignment$iv = horizontalAlignment$iv2;
            } else {
                measurePolicy$iv = measurePolicy$iv3;
                horizontalAlignment$iv = horizontalAlignment$iv2;
                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                }
                Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer4, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i4 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer4, 1898038304, "C233@8396L373:TodoScreen.kt#73otoh");
                str = "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh";
                str4 = "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo";
                str2 = "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp";
                str3 = "C88@4444L9:Column.kt#2w3rfo";
                $composer$iv = $composer4;
                $composer2 = $composer4;
                $composer3 = $composer4;
                ButtonKt.TextButton(onDeleteAll, null, false, null, null, null, null, null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6946getLambda4$app_debug(), $composer4, (($changed >> 6) & 14) | 805306368, 510);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
            int i32 = ($changed$iv$iv$iv2 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer4, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            int i42 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer4, 1898038304, "C233@8396L373:TodoScreen.kt#73otoh");
            str = "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh";
            str4 = "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo";
            str2 = "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp";
            str3 = "C88@4444L9:Column.kt#2w3rfo";
            $composer$iv = $composer4;
            $composer2 = $composer4;
            $composer3 = $composer4;
            ButtonKt.TextButton(onDeleteAll, null, false, null, null, null, null, null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6946getLambda4$app_debug(), $composer4, (($changed >> 6) & 14) | 805306368, 510);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
        }
        $composer2.endReplaceableGroup();
        LazyDslKt.LazyColumn(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), null, PaddingKt.m675PaddingValuesYgX7TsA(Dp.m6485constructorimpl(16), Dp.m6485constructorimpl(8)), false, Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(12)), null, null, false, new Function1<LazyListScope, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LazyListScope lazyListScope) {
                invoke2(lazyListScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LazyListScope LazyColumn) {
                Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
                final List items$iv = tasks;
                final Function1 key$iv = new Function1<Task, Object>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Task it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Long.valueOf(it.getId());
                    }
                };
                final Function1<Task, Unit> function1 = onTaskClick;
                final Function1 contentType$iv = new Function1() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                        return invoke((Task) p1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Void invoke(Task task) {
                        return null;
                    }
                };
                LazyColumn.items(items$iv.size(), key$iv != null ? new Function1<Integer, Object>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                        return invoke(num.intValue());
                    }

                    public final Object invoke(int index) {
                        return key$iv.invoke(items$iv.get(index));
                    }
                } : null, new Function1<Integer, Object>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                        return invoke(num.intValue());
                    }

                    public final Object invoke(int index) {
                        return contentType$iv.invoke(items$iv.get(index));
                    }
                }, ComposableLambdaKt.composableLambdaInstance(-632812321, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(4);
                    }

                    @Override // kotlin.jvm.functions.Function4
                    public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                        invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(LazyItemScope $this$items, int it, Composer $composer5, int $changed2) {
                        ComposerKt.sourceInformation($composer5, "C152@7074L22:LazyDsl.kt#428nma");
                        int $dirty = $changed2;
                        if (($changed2 & 6) == 0) {
                            $dirty |= $composer5.changed($this$items) ? 4 : 2;
                        }
                        if (($changed2 & 48) == 0) {
                            $dirty |= $composer5.changed(it) ? 32 : 16;
                        }
                        if (($dirty & 147) == 146 && $composer5.getSkipping()) {
                            $composer5.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-632812321, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)");
                        }
                        final Task task = (Task) items$iv.get(it);
                        ComposerKt.sourceInformationMarkerStart($composer5, 817523496, "C*254@9139L121:TodoScreen.kt#73otoh");
                        final Function1 function12 = function1;
                        TodoScreenKt.CompletedTaskItem(task, new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTasksList$1$2$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                function12.invoke(task);
                            }
                        }, $composer5, Task.$stable | ((($dirty & 14) >> 3) & 14));
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
            }
        }, $composer2, 24966, 234);
        Composer $composer5 = $composer2;
        $composer5.startReplaceableGroup(-26148128);
        ComposerKt.sourceInformation($composer5, "262@9329L905");
        if (tasks.isEmpty()) {
            Modifier modifier$iv3 = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            int $changed$iv$iv3 = (54 << 3) & 112;
            String str5 = str;
            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, str5);
            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
            CompositionLocalMap localMap$iv$iv3 = $composer5.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer5, modifier$iv3);
            Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
            String str6 = str2;
            ComposerKt.sourceInformationMarkerStart($composer5, -692256719, str6);
            if (!($composer5.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer5.startReusableNode();
            if ($composer5.getInserting()) {
                factory$iv$iv$iv2 = factory$iv$iv$iv7;
                $composer5.createNode(factory$iv$iv$iv2);
            } else {
                factory$iv$iv$iv2 = factory$iv$iv$iv7;
                $composer5.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3496constructorimpl($composer5);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
            }
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = ($changed$iv$iv$iv3 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i6 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer5, 1898039377, "C266@9469L751:TodoScreen.kt#73otoh");
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.HorizontalOrVertical horizontalOrVerticalM561spacedBy0680j_4 = Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer5, -483455358, str4);
            Modifier modifier$iv4 = Modifier.INSTANCE;
            MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(horizontalOrVerticalM561spacedBy0680j_4, centerHorizontally, $composer5, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            int $changed$iv$iv4 = (432 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, str5);
            int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
            CompositionLocalMap localMap$iv$iv4 = $composer5.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer5, modifier$iv4);
            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer5, -692256719, str6);
            if (!($composer5.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer5.startReusableNode();
            if ($composer5.getInserting()) {
                factory$iv$iv$iv3 = factory$iv$iv$iv8;
                $composer5.createNode(factory$iv$iv$iv3);
            } else {
                factory$iv$iv$iv3 = factory$iv$iv$iv8;
                $composer5.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3496constructorimpl($composer5);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
            }
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
            int i7 = ($changed$iv$iv$iv4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer5, -384784025, str3);
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            int i8 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer5, 817524015, "C274@9882L11,270@9658L284,278@10072L10,279@10140L11,276@9963L239:TodoScreen.kt#73otoh");
            ImageVector checkCircle = CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault());
            Modifier modifierM726size3ABfNKs = SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(64));
            long primary = MaterialTheme.INSTANCE.getColorScheme($composer5, MaterialTheme.$stable | 0).getPrimary();
            IconKt.m2147Iconww6aTOc(checkCircle, (String) null, modifierM726size3ABfNKs, Color.m4001copywmQWz5c(primary, (14 & 1) != 0 ? Color.m4005getAlphaimpl(primary) : 0.5f, (14 & 2) != 0 ? Color.m4009getRedimpl(primary) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(primary) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(primary) : 0.0f), $composer5, 432, 0);
            TextStyle bodyLarge = MaterialTheme.INSTANCE.getTypography($composer5, MaterialTheme.$stable | 0).getBodyLarge();
            long onSurface = MaterialTheme.INSTANCE.getColorScheme($composer5, MaterialTheme.$stable | 0).getOnSurface();
            TextKt.m2673Text4IGK_g("No completed tasks yet", (Modifier) null, Color.m4001copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4005getAlphaimpl(onSurface) : 0.6f, (14 & 2) != 0 ? Color.m4009getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(onSurface) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyLarge, $composer5, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            $composer5.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            $composer5.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
            ComposerKt.sourceInformationMarkerEnd($composer5);
        }
        $composer5.endReplaceableGroup();
        ComposerKt.sourceInformationMarkerEnd($composer5);
        ComposerKt.sourceInformationMarkerEnd($composer$iv);
        $composer3.endNode();
        ComposerKt.sourceInformationMarkerEnd($composer3);
        ComposerKt.sourceInformationMarkerEnd($composer3);
        ComposerKt.sourceInformationMarkerEnd($composer3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.CompletedTasksList.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i9) {
                TodoScreenKt.CompletedTasksList(tasks, onTaskClick, onDeleteAll, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    public static final void TaskItem(final Task task, final Function0<Unit> onClick, final Function0<Unit> onDelete, Composer $composer, final int $changed) {
        Object value$iv$iv;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onDelete, "onDelete");
        Composer $composer3 = $composer.startRestartGroup(-1528158524);
        ComposerKt.sourceInformation($composer3, "C(TaskItem)P(2)296@10439L13,299@10582L11,298@10527L84,301@10646L38,293@10354L2294:TodoScreen.kt#73otoh");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(task) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(onClick) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer3.changedInstance(onDelete) ? 256 : 128;
        }
        final int $dirty2 = $dirty;
        if (($dirty2 & 731) != 146 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1528158524, $dirty2, -1, "com.ctfzonelabs.todo.ui.screens.TaskItem (TodoScreen.kt:292)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            int i = ($dirty2 >> 3) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean invalid$iv$iv = $composer3.changed(onClick);
            Object it$iv$iv = $composer3.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TaskItem$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        onClick.invoke();
                    }
                };
                $composer3.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierM269clickableXHw0xAI$default = ClickableKt.m269clickableXHw0xAI$default(modifierFillMaxWidth$default, false, null, null, (Function0) value$iv$iv, 7, null);
            RoundedCornerShape roundedCornerShapeM964RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m964RoundedCornerShape0680j_4(Dp.m6485constructorimpl(16));
            CardColors cardColorsM1837cardColorsro_MJ88 = CardDefaults.INSTANCE.m1837cardColorsro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable | 0).getSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable | 0) << 12, 14);
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            float fM6485constructorimpl = Dp.m6485constructorimpl(2);
            int $i$f$getDp = CardDefaults.$stable;
            $composer2 = $composer3;
            CardKt.Card(modifierM269clickableXHw0xAI$default, roundedCornerShapeM964RoundedCornerShape0680j_4, cardColorsM1837cardColorsro_MJ88, cardDefaults.m1838cardElevationaqJV_2Y(fM6485constructorimpl, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (($i$f$getDp | 0) << 18) | 6, 62), null, ComposableLambdaKt.composableLambda($composer3, 341108790, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TaskItem.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv;
                    Function0 factory$iv$iv$iv2;
                    Object value$iv$iv2;
                    Function0 factory$iv$iv$iv3;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C303@10701L1941:TodoScreen.kt#73otoh");
                    if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(341108790, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.TaskItem.<anonymous> (TodoScreen.kt:303)");
                        }
                        Modifier modifier$iv = PaddingKt.m681padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6485constructorimpl(16));
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        Function0<Unit> function0 = onDelete;
                        int i2 = $dirty2;
                        Task task2 = task;
                        final Function0<Unit> function02 = onClick;
                        ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv = (438 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                        Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv = factory$iv$iv$iv4;
                            $composer4.createNode(factory$iv$iv$iv);
                        } else {
                            factory$iv$iv$iv = factory$iv$iv$iv4;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer4);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        }
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i3 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        int i4 = ((438 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, 931549889, "C310@10948L1287,339@12248L384:TodoScreen.kt#73otoh");
                        Modifier modifierWeight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                        Arrangement.HorizontalOrVertical horizontalOrVerticalM561spacedBy0680j_4 = Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(12));
                        ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv2 = RowKt.rowMeasurePolicy(horizontalOrVerticalM561spacedBy0680j_4, centerVertically, $composer4, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                        int $changed$iv$iv2 = (432 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifierWeight$default);
                        Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                        int $i$f$Layout = $changed$iv$iv2 << 6;
                        int $changed$iv$iv$iv2 = ($i$f$Layout & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv2 = factory$iv$iv$iv5;
                            $composer4.createNode(factory$iv$iv$iv2);
                        } else {
                            factory$iv$iv$iv2 = factory$iv$iv$iv5;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3496constructorimpl($composer4);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                        }
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i5 = ($changed$iv$iv$iv2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        int i6 = ((432 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u243_u24lambda_u242 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2064104901, "C317@11261L13,319@11383L11,318@11322L102,315@11165L277,322@11459L762:TodoScreen.kt#73otoh");
                        boolean zIsCompleted = task2.isCompleted();
                        int i7 = (i2 >> 3) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean invalid$iv$iv2 = $composer4.changed(function02);
                        Object it$iv$iv2 = $composer4.rememberedValue();
                        if (invalid$iv$iv2 || it$iv$iv2 == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv2 = (Function1) new Function1<Boolean, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$TaskItem$2$1$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                    invoke(bool.booleanValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(boolean it) {
                                    function02.invoke();
                                }
                            };
                            $composer4.updateRememberedValue(value$iv$iv2);
                        } else {
                            value$iv$iv2 = it$iv$iv2;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        CheckboxKt.Checkbox(zIsCompleted, (Function1) value$iv$iv2, null, false, CheckboxDefaults.INSTANCE.m1864colors5tl4gsc(MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getPrimary(), 0L, 0L, 0L, 0L, 0L, $composer4, (CheckboxDefaults.$stable | 0) << 18, 62), null, $composer4, 0, 44);
                        Modifier modifier$iv2 = RowScope.weight$default($this$invoke_u24lambda_u243_u24lambda_u242, Modifier.INSTANCE, 1.0f, false, 2, null);
                        ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        int $i$f$Column = ((0 >> 3) & 14) | ((0 >> 3) & 112);
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, $i$f$Column);
                        int $changed$iv$iv3 = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer4, modifier$iv2);
                        Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv3 = factory$iv$iv$iv6;
                            $composer4.createNode(factory$iv$iv$iv3);
                        } else {
                            factory$iv$iv$iv3 = factory$iv$iv$iv6;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3496constructorimpl($composer4);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                        }
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i8 = ($changed$iv$iv$iv3 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        int i9 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 22825151, "C325@11615L10,327@11743L11,323@11520L266:TodoScreen.kt#73otoh");
                        TextKt.m2673Text4IGK_g(task2.getTitle(), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getOnSurface(), 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable | 0).getTitleMedium(), $composer4, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65498);
                        $composer4.startReplaceableGroup(-2064104259);
                        ComposerKt.sourceInformation($composer4, "330@11868L40,333@12042L10,334@12115L11,331@11933L248");
                        if (!StringsKt.isBlank(task2.getDescription())) {
                            SpacerKt.Spacer(SizeKt.m712height3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(4)), $composer4, 6);
                            String description = task2.getDescription();
                            TextStyle bodyMedium = MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable | 0).getBodyMedium();
                            long onSurface = MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getOnSurface();
                            TextKt.m2673Text4IGK_g(description, (Modifier) null, Color.m4001copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4005getAlphaimpl(onSurface) : 0.7f, (14 & 2) != 0 ? Color.m4009getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(onSurface) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyMedium, $composer4, 0, 0, 65530);
                        }
                        $composer4.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        Modifier materialized$iv$iv4 = SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(40));
                        IconButtonKt.IconButton(function0, materialized$iv$iv4, false, null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6947getLambda5$app_debug(), $composer4, ((i2 >> 6) & 14) | 196656, 28);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.TaskItem.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i2) {
                TodoScreenKt.TaskItem(task, onClick, onDelete, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    public static final void CompletedTaskItem(final Task task, final Function0<Unit> onClick, Composer $composer, final int $changed) {
        Object value$iv$iv;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer $composer3 = $composer.startRestartGroup(1403017929);
        ComposerKt.sourceInformation($composer3, "C(CompletedTaskItem)P(1)362@12820L13,365@12963L11,364@12908L110,367@13053L38,359@12735L1739:TodoScreen.kt#73otoh");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(task) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(onClick) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1403017929, $dirty2, -1, "com.ctfzonelabs.todo.ui.screens.CompletedTaskItem (TodoScreen.kt:358)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            int i = ($dirty2 >> 3) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean invalid$iv$iv = $composer3.changed(onClick);
            Object it$iv$iv = $composer3.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new Function0<Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$CompletedTaskItem$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        onClick.invoke();
                    }
                };
                $composer3.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierM269clickableXHw0xAI$default = ClickableKt.m269clickableXHw0xAI$default(modifierFillMaxWidth$default, false, null, null, (Function0) value$iv$iv, 7, null);
            RoundedCornerShape roundedCornerShapeM964RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m964RoundedCornerShape0680j_4(Dp.m6485constructorimpl(16));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long surfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable | 0).getSurfaceVariant();
            CardColors cardColorsM1837cardColorsro_MJ88 = cardDefaults.m1837cardColorsro_MJ88(Color.m4001copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4005getAlphaimpl(surfaceVariant) : 0.5f, (14 & 2) != 0 ? Color.m4009getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(surfaceVariant) : 0.0f), 0L, 0L, 0L, $composer3, (CardDefaults.$stable | 0) << 12, 14);
            CardDefaults cardDefaults2 = CardDefaults.INSTANCE;
            float fM6485constructorimpl = Dp.m6485constructorimpl(1);
            int $i$f$getDp = CardDefaults.$stable;
            $composer2 = $composer3;
            CardKt.Card(modifierM269clickableXHw0xAI$default, roundedCornerShapeM964RoundedCornerShape0680j_4, cardColorsM1837cardColorsro_MJ88, cardDefaults2.m1838cardElevationaqJV_2Y(fM6485constructorimpl, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (($i$f$getDp | 0) << 18) | 6, 62), null, ComposableLambdaKt.composableLambda($composer2, 1878958871, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.CompletedTaskItem.2
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv;
                    Function0 factory$iv$iv$iv2;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C369@13108L1360:TodoScreen.kt#73otoh");
                    if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1878958871, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.CompletedTaskItem.<anonymous> (TodoScreen.kt:369)");
                        }
                        Modifier modifier$iv = PaddingKt.m681padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6485constructorimpl(16));
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(12));
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        Task task2 = task;
                        ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv = (438 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                        Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv = factory$iv$iv$iv3;
                            $composer4.createNode(factory$iv$iv$iv);
                        } else {
                            factory$iv$iv$iv = factory$iv$iv$iv3;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer4);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        }
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i2 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        int i3 = ((438 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u241 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, 1443265434, "C379@13508L11,376@13358L232,382@13603L855:TodoScreen.kt#73otoh");
                        IconKt.m2147Iconww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), "Completed", SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(24)), MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getPrimary(), $composer4, 432, 0);
                        Modifier modifier$iv2 = RowScope.weight$default($this$invoke_u24lambda_u241, Modifier.INSTANCE, 1.0f, false, 2, null);
                        ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        int $changed$iv = ((0 >> 3) & 14) | ((0 >> 3) & 112);
                        MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, $changed$iv);
                        int $changed$iv$iv2 = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier$iv2);
                        Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv2 = factory$iv$iv$iv4;
                            $composer4.createNode(factory$iv$iv$iv2);
                        } else {
                            factory$iv$iv$iv2 = factory$iv$iv$iv4;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3496constructorimpl($composer4);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                        }
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i4 = ($changed$iv$iv$iv2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        int i5 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 739359977, "C385@13747L10,388@13932L11,383@13660L330:TodoScreen.kt#73otoh");
                        String title = task2.getTitle();
                        TextStyle titleMedium = MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable | 0).getTitleMedium();
                        FontWeight semiBold = FontWeight.INSTANCE.getSemiBold();
                        TextDecoration lineThrough = TextDecoration.INSTANCE.getLineThrough();
                        long onSurface = MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getOnSurface();
                        TextKt.m2673Text4IGK_g(title, (Modifier) null, Color.m4001copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4005getAlphaimpl(onSurface) : 0.6f, (14 & 2) != 0 ? Color.m4009getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(onSurface) : 0.0f), 0L, (FontStyle) null, semiBold, (FontFamily) null, 0L, lineThrough, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, titleMedium, $composer4, 100859904, 0, 65242);
                        $composer4.startReplaceableGroup(1443266083);
                        ComposerKt.sourceInformation($composer4, "391@14064L40,394@14226L10,396@14364L11,392@14125L301");
                        if (!StringsKt.isBlank(task2.getDescription())) {
                            SpacerKt.Spacer(SizeKt.m712height3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(4)), $composer4, 6);
                            String description = task2.getDescription();
                            TextStyle bodyMedium = MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable | 0).getBodyMedium();
                            TextDecoration lineThrough2 = TextDecoration.INSTANCE.getLineThrough();
                            long onSurface2 = MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getOnSurface();
                            TextKt.m2673Text4IGK_g(description, (Modifier) null, Color.m4001copywmQWz5c(onSurface2, (14 & 1) != 0 ? Color.m4005getAlphaimpl(onSurface2) : 0.5f, (14 & 2) != 0 ? Color.m4009getRedimpl(onSurface2) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(onSurface2) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(onSurface2) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, lineThrough2, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyMedium, $composer4, 100663296, 0, 65274);
                        }
                        $composer4.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), $composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.CompletedTaskItem.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i2) {
                TodoScreenKt.CompletedTaskItem(task, onClick, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    public static final void EmptyState(Modifier modifier, Composer $composer, final int $changed, final int i) throws XmlPullParserException, Resources.NotFoundException, IllegalArgumentException {
        final Modifier modifier2;
        Composer $composer2 = $composer.startRestartGroup(-1102723726);
        ComposerKt.sourceInformation($composer2, "C(EmptyState)406@14542L856:TodoScreen.kt#73otoh");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 14) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($dirty & 11) != 2 || !$composer2.getSkipping()) {
            Modifier.Companion modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1102723726, $dirty, -1, "com.ctfzonelabs.todo.ui.screens.EmptyState (TodoScreen.kt:405)");
            }
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.HorizontalOrVertical horizontalOrVerticalM561spacedBy0680j_4 = Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(16));
            int $changed$iv = ($dirty & 14) | 432;
            ComposerKt.sourceInformationMarkerStart($composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(horizontalOrVerticalM561spacedBy0680j_4, centerHorizontally, $composer2, (($changed$iv >> 3) & 14) | (($changed$iv >> 3) & 112));
            int $changed$iv$iv = ($changed$iv << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier3);
            Function0 factory$iv$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(factory$iv$iv$iv);
            } else {
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer2);
            Modifier modifier4 = modifier3;
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            }
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i4 = (($changed$iv >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 1274588937, "C412@14742L45,415@14931L11,411@14713L267,419@15064L10,420@15124L11,417@14989L185,424@15285L10,425@15342L11,422@15183L209:TodoScreen.kt#73otoh");
            Painter painterPainterResource = PainterResources_androidKt.painterResource(R.drawable.ic_todo_logo, $composer2, 0);
            Modifier modifierM726size3ABfNKs = SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(100));
            ColorFilter.Companion companion = ColorFilter.INSTANCE;
            long primary = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable | 0).getPrimary();
            ImageKt.Image(painterPainterResource, (String) null, modifierM726size3ABfNKs, (Alignment) null, (ContentScale) null, 0.0f, ColorFilter.Companion.m4044tintxETnrds$default(companion, Color.m4001copywmQWz5c(primary, (14 & 1) != 0 ? Color.m4005getAlphaimpl(primary) : 0.6f, (14 & 2) != 0 ? Color.m4009getRedimpl(primary) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(primary) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(primary) : 0.0f), 0, 2, null), $composer2, 440, 56);
            TextStyle headlineSmall = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable | 0).getHeadlineSmall();
            long onSurface = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable | 0).getOnSurface();
            TextKt.m2673Text4IGK_g("No tasks yet", (Modifier) null, Color.m4001copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4005getAlphaimpl(onSurface) : 0.6f, (14 & 2) != 0 ? Color.m4009getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(onSurface) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, headlineSmall, $composer2, 6, 0, 65530);
            TextStyle bodyMedium = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable | 0).getBodyMedium();
            long onSurface2 = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable | 0).getOnSurface();
            TextKt.m2673Text4IGK_g("Tap the + button to add your first task", (Modifier) null, Color.m4001copywmQWz5c(onSurface2, (14 & 1) != 0 ? Color.m4005getAlphaimpl(onSurface2) : 0.5f, (14 & 2) != 0 ? Color.m4009getRedimpl(onSurface2) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(onSurface2) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(onSurface2) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyMedium, $composer2, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.EmptyState.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws XmlPullParserException, Resources.NotFoundException, IllegalArgumentException {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i5) throws XmlPullParserException, Resources.NotFoundException, IllegalArgumentException {
                TodoScreenKt.EmptyState(modifier2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
            }
        });
    }

    public static final void AddTaskDialog(final Function0<Unit> onDismiss, final Function2<? super String, ? super String, Unit> onAddTask, Composer $composer, final int $changed) {
        Object value$iv$iv;
        Object value$iv$iv2;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Intrinsics.checkNotNullParameter(onAddTask, "onAddTask");
        Composer $composer3 = $composer.startRestartGroup(671022691);
        ComposerKt.sourceInformation($composer3, "C(AddTaskDialog)P(1)436@15561L31,437@15616L31,439@15653L1770:TodoScreen.kt#73otoh");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changedInstance(onDismiss) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(onAddTask) ? 32 : 16;
        }
        final int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(671022691, $dirty2, -1, "com.ctfzonelabs.todo.ui.screens.AddTaskDialog (TodoScreen.kt:435)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -492369756, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv = $composer3.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                $composer3.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final MutableState title$delegate = (MutableState) value$iv$iv;
            ComposerKt.sourceInformationMarkerStart($composer3, -492369756, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv2 = $composer3.rememberedValue();
            if (it$iv$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                $composer3.updateRememberedValue(value$iv$iv2);
            } else {
                value$iv$iv2 = it$iv$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final MutableState description$delegate = (MutableState) value$iv$iv2;
            $composer2 = $composer3;
            AndroidAlertDialog_androidKt.m1774AlertDialogOix01E0(onDismiss, ComposableLambdaKt.composableLambda($composer3, 1295563547, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.AddTaskDialog.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:21:0x00b0  */
                /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.runtime.Composer r19, int r20) {
                    /*
                        r18 = this;
                        r0 = r18
                        r14 = r19
                        r15 = r20
                        java.lang.String r1 = "C475@16986L141,474@16952L284:TodoScreen.kt#73otoh"
                        androidx.compose.runtime.ComposerKt.sourceInformation(r14, r1)
                        r1 = r15 & 11
                        r2 = 2
                        if (r1 != r2) goto L1c
                        boolean r1 = r19.getSkipping()
                        if (r1 != 0) goto L17
                        goto L1c
                    L17:
                        r19.skipToGroupEnd()
                        goto Lb3
                    L1c:
                        boolean r1 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                        if (r1 == 0) goto L2b
                        r1 = -1
                        java.lang.String r2 = "com.ctfzonelabs.todo.ui.screens.AddTaskDialog.<anonymous> (TodoScreen.kt:474)"
                        r3 = 1295563547(0x4d38bb1b, float:1.9370437E8)
                        androidx.compose.runtime.ComposerKt.traceEventStart(r3, r15, r1, r2)
                    L2b:
                        androidx.compose.runtime.MutableState<java.lang.String> r1 = r2
                        kotlin.jvm.functions.Function2<java.lang.String, java.lang.String, kotlin.Unit> r2 = r3
                        androidx.compose.runtime.MutableState<java.lang.String> r3 = r4
                        kotlin.jvm.functions.Function2<java.lang.String, java.lang.String, kotlin.Unit> r4 = r3
                        androidx.compose.runtime.MutableState<java.lang.String> r5 = r2
                        androidx.compose.runtime.MutableState<java.lang.String> r6 = r4
                        int r7 = r5
                        r7 = r7 & 112(0x70, float:1.57E-43)
                        r7 = r7 | 390(0x186, float:5.47E-43)
                        r8 = 0
                        r9 = 1618982084(0x607fb4c4, float:7.370227E19)
                        java.lang.String r10 = "CC(remember)P(1,2,3):Composables.kt#9igjgp"
                        androidx.compose.runtime.ComposerKt.sourceInformationMarkerStart(r14, r9, r10)
                        boolean r9 = r14.changed(r1)
                        boolean r10 = r14.changed(r2)
                        r9 = r9 | r10
                        boolean r10 = r14.changed(r3)
                        r9 = r9 | r10
                        r10 = r19
                        r11 = 0
                        java.lang.Object r12 = r10.rememberedValue()
                        r13 = 0
                        if (r9 != 0) goto L6c
                        androidx.compose.runtime.Composer$Companion r16 = androidx.compose.runtime.Composer.INSTANCE
                        r17 = r1
                        java.lang.Object r1 = r16.getEmpty()
                        if (r12 != r1) goto L6a
                        goto L6e
                    L6a:
                        r1 = r12
                        goto L7d
                    L6c:
                        r17 = r1
                    L6e:
                        r1 = 0
                        r16 = r1
                        com.ctfzonelabs.todo.ui.screens.TodoScreenKt$AddTaskDialog$1$1$1 r1 = new com.ctfzonelabs.todo.ui.screens.TodoScreenKt$AddTaskDialog$1$1$1
                        r1.<init>()
                        kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
                        r10.updateRememberedValue(r1)
                    L7d:
                        androidx.compose.runtime.ComposerKt.sourceInformationMarkerEnd(r19)
                        kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
                        androidx.compose.runtime.MutableState<java.lang.String> r2 = r2
                        java.lang.String r2 = com.ctfzonelabs.todo.ui.screens.TodoScreenKt.access$AddTaskDialog$lambda$22(r2)
                        java.lang.CharSequence r2 = (java.lang.CharSequence) r2
                        boolean r2 = kotlin.text.StringsKt.isBlank(r2)
                        r3 = r2 ^ 1
                        com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt r2 = com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.INSTANCE
                        kotlin.jvm.functions.Function3 r10 = r2.m6948getLambda6$app_debug()
                        r2 = 0
                        r4 = 0
                        r5 = 0
                        r6 = 0
                        r7 = 0
                        r8 = 0
                        r9 = 0
                        r12 = 805306368(0x30000000, float:4.656613E-10)
                        r13 = 506(0x1fa, float:7.09E-43)
                        r11 = r19
                        androidx.compose.material3.ButtonKt.Button(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        boolean r1 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                        if (r1 == 0) goto Lb3
                        androidx.compose.runtime.ComposerKt.traceEventEnd()
                    Lb3:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.C06721.invoke(androidx.compose.runtime.Composer, int):void");
                }
            }), null, ComposableLambdaKt.composableLambda($composer3, 962920409, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.AddTaskDialog.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C486@17286L78:TodoScreen.kt#73otoh");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(962920409, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.AddTaskDialog.<anonymous> (TodoScreen.kt:486)");
                        }
                        ButtonKt.TextButton(onDismiss, null, false, null, null, null, null, null, null, ComposableSingletons$TodoScreenKt.INSTANCE.m6949getLambda7$app_debug(), $composer4, ($dirty2 & 14) | 805306368, 510);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), null, ComposableSingletons$TodoScreenKt.INSTANCE.m6950getLambda8$app_debug(), ComposableLambdaKt.composableLambda($composer3, -1683527946, true, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.AddTaskDialog.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv;
                    Object value$iv$iv3;
                    ComposerKt.sourceInformation($composer4, "C448@15878L1024:TodoScreen.kt#73otoh");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1683527946, $changed2, -1, "com.ctfzonelabs.todo.ui.screens.AddTaskDialog.<anonymous> (TodoScreen.kt:448)");
                        }
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.m561spacedBy0680j_4(Dp.m6485constructorimpl(16));
                        final MutableState<String> mutableState = title$delegate;
                        final MutableState<String> mutableState2 = description$delegate;
                        ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        Modifier modifier$iv = Modifier.INSTANCE;
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv = (48 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                        Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv = factory$iv$iv$iv2;
                            $composer4.createNode(factory$iv$iv$iv);
                        } else {
                            factory$iv$iv$iv = factory$iv$iv$iv2;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer4);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        }
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        int i2 = ((48 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1812985423, "C458@16359L11,457@16292L108,453@16074L14,451@15984L434,468@16829L11,467@16762L108,463@16531L20,461@16435L453:TodoScreen.kt#73otoh");
                        String strAddTaskDialog$lambda$22 = TodoScreenKt.AddTaskDialog$lambda$22(mutableState);
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        TextFieldColors textFieldColorsM2275colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2275colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getPrimary(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer4, 0, 0, 0, 0, 3072, 2147481599, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer4, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean invalid$iv$iv = $composer4.changed(mutableState);
                        Object it$iv$iv3 = $composer4.rememberedValue();
                        if (invalid$iv$iv || it$iv$iv3 == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv3 = new Function1<String, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$AddTaskDialog$3$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv$iv3);
                        } else {
                            value$iv$iv3 = it$iv$iv3;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        OutlinedTextFieldKt.OutlinedTextField(strAddTaskDialog$lambda$22, (Function1<? super String, Unit>) value$iv$iv3, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$TodoScreenKt.INSTANCE.m6951getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2275colors0hiis_0, $composer4, 1573248, 12582912, 0, 4063160);
                        String strAddTaskDialog$lambda$25 = TodoScreenKt.AddTaskDialog$lambda$25(mutableState2);
                        Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        TextFieldColors textFieldColorsM2275colors0hiis_02 = OutlinedTextFieldDefaults.INSTANCE.m2275colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable | 0).getPrimary(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer4, 0, 0, 0, 0, 3072, 2147481599, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer4, 1157296644, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean invalid$iv$iv2 = $composer4.changed(mutableState2);
                        Object value$iv$iv4 = $composer4.rememberedValue();
                        if (invalid$iv$iv2 || value$iv$iv4 == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv4 = (Function1) new Function1<String, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt$AddTaskDialog$3$1$2$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState2.setValue(it);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv$iv4);
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        OutlinedTextFieldKt.OutlinedTextField(strAddTaskDialog$lambda$25, (Function1<? super String, Unit>) value$iv$iv4, modifierFillMaxWidth$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$TodoScreenKt.INSTANCE.m6943getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 3, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsM2275colors0hiis_02, $composer4, 1573248, 100663296, 0, 3932088);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), RoundedCornerShapeKt.m964RoundedCornerShape0680j_4(Dp.m6485constructorimpl(20)), 0L, 0L, 0L, 0L, 0.0f, null, $composer2, ($dirty2 & 14) | 1772592, 0, 16148);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
            return;
        }
        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.TodoScreenKt.AddTaskDialog.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                TodoScreenKt.AddTaskDialog(onDismiss, onAddTask, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String AddTaskDialog$lambda$22(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String AddTaskDialog$lambda$25(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }
}
