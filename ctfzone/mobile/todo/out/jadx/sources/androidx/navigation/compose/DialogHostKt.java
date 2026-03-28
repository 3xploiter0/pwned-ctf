package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.DialogNavigator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogHost.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004\u001a!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0001¢\u0006\u0002\u0010\n\u001a%\u0010\u000b\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00070\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0001¢\u0006\u0002\u0010\r¨\u0006\u000e²\u0006\u0010\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0010X\u008a\u0084\u0002²\u0006\u0010\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0012X\u008a\u0084\u0002"}, d2 = {"DialogHost", "", "dialogNavigator", "Landroidx/navigation/compose/DialogNavigator;", "(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V", "rememberVisibleList", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "Landroidx/navigation/NavBackStackEntry;", "backStack", "", "(Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/snapshots/SnapshotStateList;", "PopulateVisibleList", "", "(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V", "navigation-compose_release", "dialogBackStack", "", "transitionInProgress", ""}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class DialogHostKt {
    public static final void DialogHost(final DialogNavigator dialogNavigator, Composer $composer, final int $changed) {
        Object value$iv;
        SnapshotStateList dialogsToDispose;
        Object value$iv2;
        Object value$iv3;
        Composer $composer2 = $composer.startRestartGroup(294589392);
        ComposerKt.sourceInformation($composer2, "C(DialogHost)41@1668L29,42@1751L16,43@1795L36,44@1853L36,46@1960L16,47@2004L52,73@3243L294,73@3188L349:DialogHost.kt#opm8kd");
        int $dirty = $changed;
        int i = 4;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(dialogNavigator) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 3) != 2 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(294589392, $dirty2, -1, "androidx.navigation.compose.DialogHost (DialogHost.kt:40)");
            }
            boolean z = false;
            final SaveableStateHolder saveableStateHolder = SaveableStateHolderKt.rememberSaveableStateHolder($composer2, 0);
            Continuation continuation = null;
            boolean z2 = true;
            State dialogBackStack$delegate = SnapshotStateKt.collectAsState(dialogNavigator.getBackStack$navigation_compose_release(), null, $composer2, 0, 1);
            Iterable visibleBackStack = rememberVisibleList(DialogHost$lambda$0(dialogBackStack$delegate), $composer2, 0);
            PopulateVisibleList((List) visibleBackStack, DialogHost$lambda$0(dialogBackStack$delegate), $composer2, 0);
            State transitionInProgress$delegate = SnapshotStateKt.collectAsState(dialogNavigator.getTransitionInProgress$navigation_compose_release(), null, $composer2, 0, 1);
            String str = "CC(remember):DialogHost.kt#9igjgp";
            ComposerKt.sourceInformationMarkerStart($composer2, 1361033813, "CC(remember):DialogHost.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = SnapshotStateKt.mutableStateListOf();
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            SnapshotStateList dialogsToDispose2 = (SnapshotStateList) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.startReplaceGroup(1361037007);
            ComposerKt.sourceInformation($composer2, "*52@2222L43,54@2331L588,51@2183L736");
            Iterable $this$forEach$iv = visibleBackStack;
            for (Object element$iv : $this$forEach$iv) {
                final NavBackStackEntry backStackEntry = (NavBackStackEntry) element$iv;
                NavDestination destination = backStackEntry.getDestination();
                Intrinsics.checkNotNull(destination, "null cannot be cast to non-null type androidx.navigation.compose.DialogNavigator.Destination");
                final DialogNavigator.Destination destination2 = (DialogNavigator.Destination) destination;
                ComposerKt.sourceInformationMarkerStart($composer2, -1136022005, str);
                boolean invalid$iv = (($dirty2 & 14) == i ? z2 : z) | $composer2.changedInstance(backStackEntry);
                Object it$iv2 = $composer2.rememberedValue();
                if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    value$iv3 = new Function0<Unit>() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$1$1
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
                            dialogNavigator.dismiss$navigation_compose_release(backStackEntry);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                } else {
                    value$iv3 = it$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                final SnapshotStateList snapshotStateList = dialogsToDispose2;
                AndroidDialog_androidKt.Dialog((Function0) value$iv3, destination2.getDialogProperties(), ComposableLambdaKt.rememberComposableLambda(1129586364, z2, new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer3, int $changed2) {
                        Object value$iv4;
                        ComposerKt.sourceInformation($composer3, "C55@2378L247,55@2345L280,65@2842L67,65@2801L108:DialogHost.kt#opm8kd");
                        if (($changed2 & 3) == 2 && $composer3.getSkipping()) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1129586364, $changed2, -1, "androidx.navigation.compose.DialogHost.<anonymous>.<anonymous> (DialogHost.kt:55)");
                        }
                        NavBackStackEntry navBackStackEntry = backStackEntry;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1838164906, "CC(remember):DialogHost.kt#9igjgp");
                        boolean invalid$iv2 = $composer3.changedInstance(backStackEntry) | $composer3.changed(dialogNavigator);
                        final SnapshotStateList<NavBackStackEntry> snapshotStateList2 = snapshotStateList;
                        final NavBackStackEntry navBackStackEntry2 = backStackEntry;
                        final DialogNavigator dialogNavigator2 = dialogNavigator;
                        Object it$iv3 = $composer3.rememberedValue();
                        if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                            value$iv4 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) throws Throwable {
                                    snapshotStateList2.add(navBackStackEntry2);
                                    final DialogNavigator dialogNavigator3 = dialogNavigator2;
                                    final NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
                                    final SnapshotStateList<NavBackStackEntry> snapshotStateList3 = snapshotStateList2;
                                    return new DisposableEffectResult() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1
                                        @Override // androidx.compose.runtime.DisposableEffectResult
                                        public void dispose() {
                                            dialogNavigator3.onTransitionComplete$navigation_compose_release(navBackStackEntry3);
                                            snapshotStateList3.remove(navBackStackEntry3);
                                        }
                                    };
                                }
                            };
                            $composer3.updateRememberedValue(value$iv4);
                        } else {
                            value$iv4 = it$iv3;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        EffectsKt.DisposableEffect(navBackStackEntry, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) value$iv4, $composer3, 0);
                        NavBackStackEntry navBackStackEntry3 = backStackEntry;
                        SaveableStateHolder saveableStateHolder2 = saveableStateHolder;
                        final DialogNavigator.Destination destination3 = destination2;
                        final NavBackStackEntry navBackStackEntry4 = backStackEntry;
                        NavBackStackEntryProviderKt.LocalOwnersProvider(navBackStackEntry3, saveableStateHolder2, ComposableLambdaKt.rememberComposableLambda(-497631156, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                invoke(composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C66@2872L23:DialogHost.kt#opm8kd");
                                if (($changed3 & 3) == 2 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-497631156, $changed3, -1, "androidx.navigation.compose.DialogHost.<anonymous>.<anonymous>.<anonymous> (DialogHost.kt:66)");
                                }
                                destination3.getContent$navigation_compose_release().invoke(navBackStackEntry4, $composer4, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer3, 54), $composer3, 384);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, $composer2, 54), $composer2, 384, 0);
                continuation = null;
                $dirty2 = $dirty2;
                str = str;
                transitionInProgress$delegate = transitionInProgress$delegate;
                z2 = z2;
                z = false;
                dialogsToDispose2 = dialogsToDispose2;
                i = 4;
            }
            SnapshotStateList dialogsToDispose3 = dialogsToDispose2;
            State transitionInProgress$delegate2 = transitionInProgress$delegate;
            boolean z3 = z2;
            Continuation continuation2 = continuation;
            boolean z4 = z;
            $composer2.endReplaceGroup();
            Set<NavBackStackEntry> setDialogHost$lambda$1 = DialogHost$lambda$1(transitionInProgress$delegate2);
            ComposerKt.sourceInformationMarkerStart($composer2, 1361073703, str);
            boolean invalid$iv2 = $composer2.changed(transitionInProgress$delegate2) | (($dirty2 & 14) == 4 ? z3 : z4);
            Object it$iv3 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                dialogsToDispose = dialogsToDispose3;
                value$iv2 = new DialogHostKt$DialogHost$2$1(transitionInProgress$delegate2, dialogNavigator, dialogsToDispose, continuation2);
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv3;
                dialogsToDispose = dialogsToDispose3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(setDialogHost$lambda$1, dialogsToDispose, (Function2) value$iv2, $composer2, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.DialogHostKt.DialogHost.3
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
                    DialogHostKt.DialogHost(dialogNavigator, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    private static final List<NavBackStackEntry> DialogHost$lambda$0(State<? extends List<NavBackStackEntry>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set<NavBackStackEntry> DialogHost$lambda$1(State<? extends Set<NavBackStackEntry>> state) {
        Object thisObj$iv = state.getValue();
        return (Set) thisObj$iv;
    }

    public static final void PopulateVisibleList(final List<NavBackStackEntry> list, final Collection<NavBackStackEntry> collection, Composer $composer, final int $changed) {
        Iterable $this$forEach$iv;
        Composer $composer2 = $composer.startRestartGroup(1537894851);
        ComposerKt.sourceInformation($composer2, "C(PopulateVisibleList)89@3710L7,*91@3793L961,91@3759L995:DialogHost.kt#opm8kd");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(list) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(collection) ? 32 : 16;
        }
        if (($dirty & 19) != 18 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1537894851, $dirty, -1, "androidx.navigation.compose.PopulateVisibleList (DialogHost.kt:88)");
            }
            ProvidableCompositionLocal<Boolean> localInspectionMode = InspectionModeKt.getLocalInspectionMode();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localInspectionMode);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            boolean isInspecting = ((Boolean) objConsume).booleanValue();
            Collection<NavBackStackEntry> $this$forEach$iv2 = collection;
            for (Object element$iv : $this$forEach$iv2) {
                NavBackStackEntry entry = (NavBackStackEntry) element$iv;
                Lifecycle lifecycleRegistry = entry.getLifecycleRegistry();
                ComposerKt.sourceInformationMarkerStart($composer2, -788103595, "CC(remember):DialogHost.kt#9igjgp");
                boolean invalid$iv = $composer2.changed(isInspecting) | $composer2.changedInstance(list) | $composer2.changedInstance(entry);
                int $dirty2 = $dirty;
                DialogHostKt$PopulateVisibleList$1$1$1 value$iv = $composer2.rememberedValue();
                if (!invalid$iv) {
                    $this$forEach$iv = $this$forEach$iv2;
                    if (value$iv == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    EffectsKt.DisposableEffect(lifecycleRegistry, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) value$iv, $composer2, 0);
                    $dirty = $dirty2;
                    $this$forEach$iv2 = $this$forEach$iv;
                } else {
                    $this$forEach$iv = $this$forEach$iv2;
                }
                value$iv = new DialogHostKt$PopulateVisibleList$1$1$1(entry, isInspecting, list);
                $composer2.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.DisposableEffect(lifecycleRegistry, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) value$iv, $composer2, 0);
                $dirty = $dirty2;
                $this$forEach$iv2 = $this$forEach$iv;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.DialogHostKt.PopulateVisibleList.2
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
                    DialogHostKt.PopulateVisibleList(list, collection, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final SnapshotStateList<NavBackStackEntry> rememberVisibleList(Collection<NavBackStackEntry> collection, Composer $composer, int $changed) {
        Object value$iv;
        boolean isInspecting;
        boolean zIsAtLeast;
        ComposerKt.sourceInformationMarkerStart($composer, 467378629, "C(rememberVisibleList)121@4970L7,122@4989L399:DialogHost.kt#opm8kd");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(467378629, $changed, -1, "androidx.navigation.compose.rememberVisibleList (DialogHost.kt:119)");
        }
        ProvidableCompositionLocal<Boolean> localInspectionMode = InspectionModeKt.getLocalInspectionMode();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localInspectionMode);
        ComposerKt.sourceInformationMarkerEnd($composer);
        boolean isInspecting2 = ((Boolean) objConsume).booleanValue();
        ComposerKt.sourceInformationMarkerStart($composer, -393426303, "CC(remember):DialogHost.kt#9igjgp");
        boolean invalid$iv = $composer.changed(collection);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            SnapshotStateList it = SnapshotStateKt.mutableStateListOf();
            Collection<NavBackStackEntry> $this$filter$iv = collection;
            Collection destination$iv$iv = new ArrayList();
            for (Object element$iv$iv : $this$filter$iv) {
                NavBackStackEntry entry = (NavBackStackEntry) element$iv$iv;
                if (isInspecting2) {
                    zIsAtLeast = true;
                    isInspecting = isInspecting2;
                } else {
                    isInspecting = isInspecting2;
                    zIsAtLeast = entry.getLifecycleRegistry().getState().isAtLeast(Lifecycle.State.STARTED);
                }
                if (zIsAtLeast) {
                    destination$iv$iv.add(element$iv$iv);
                }
                isInspecting2 = isInspecting;
            }
            it.addAll((List) destination$iv$iv);
            value$iv = it;
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        SnapshotStateList<NavBackStackEntry> snapshotStateList = (SnapshotStateList) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return snapshotStateList;
    }
}
