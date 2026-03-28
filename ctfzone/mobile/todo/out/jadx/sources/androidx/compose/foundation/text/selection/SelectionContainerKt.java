package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: SelectionContainer.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a*\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0007¢\u0006\u0002\u0010\t\u001aJ\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u00010\r2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0001¢\u0006\u0002\u0010\u000f¨\u0006\u0010²\u0006\f\u0010\n\u001a\u0004\u0018\u00010\u000bX\u008a\u008e\u0002"}, d2 = {"DisableSelection", "", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "SelectionContainer", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "selection", "Landroidx/compose/foundation/text/selection/Selection;", "onSelectionChange", "Lkotlin/Function1;", "children", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectionContainerKt {
    public static final void SelectionContainer(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Object value$iv;
        Object value$iv2;
        Composer $composer2 = $composer.startRestartGroup(-1075498320);
        ComposerKt.sourceInformation($composer2, "C(SelectionContainer)P(1)49@2177L45,53@2335L38,50@2227L180:SelectionContainer.kt#eksfi3");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 19) != 18 || !$composer2.getSkipping()) {
            if (i2 != 0) {
                modifier = Modifier.INSTANCE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1075498320, $dirty2, -1, "androidx.compose.foundation.text.selection.SelectionContainer (SelectionContainer.kt:48)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 882579275, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final MutableState selection$delegate = (MutableState) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Selection selectionSelectionContainer$lambda$1 = SelectionContainer$lambda$1(selection$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, 882584324, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv2 = $composer2.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new Function1<Selection, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Selection selection) {
                        invoke2(selection);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Selection it) {
                        selection$delegate.setValue(it);
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            SelectionContainer(modifier, selectionSelectionContainer$lambda$1, (Function1) value$iv2, function2, $composer2, ($dirty2 & 14) | 384 | (($dirty2 << 6) & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.SelectionContainer.2
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

                public final void invoke(Composer composer, int i3) {
                    SelectionContainerKt.SelectionContainer(modifier, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    private static final Selection SelectionContainer$lambda$1(MutableState<Selection> mutableState) {
        MutableState<Selection> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    public static final void DisableSelection(final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(336063542);
        ComposerKt.sourceInformation($composer2, "C(DisableSelection)68@2698L104:SelectionContainer.kt#eksfi3");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 4 : 2;
        }
        if (($dirty & 3) != 2 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(336063542, $dirty, -1, "androidx.compose.foundation.text.selection.DisableSelection (SelectionContainer.kt:67)");
            }
            CompositionLocalKt.CompositionLocalProvider(SelectionRegistrarKt.getLocalSelectionRegistrar().provides(null), function2, $composer2, ProvidedValue.$stable | (($dirty << 3) & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.DisableSelection.1
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
                    SelectionContainerKt.DisableSelection(function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void SelectionContainer(Modifier modifier, final Selection selection, final Function1<? super Selection, Unit> function1, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Object value$iv;
        Object value$iv2;
        Modifier modifier3;
        Composer $composer2 = $composer.startRestartGroup(2078139907);
        ComposerKt.sourceInformation($composer2, "C(SelectionContainer)P(1,3,2)91@3403L95,95@3518L44,97@3613L7,98@3674L7,99@3725L7,103@3847L2060,103@3822L2085,149@5939L106,149@5913L132:SelectionContainer.kt#eksfi3");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(selection) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty |= 384;
        } else if (($changed & 384) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 1171) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        } else {
            final Modifier.Companion modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2078139907, $dirty2, -1, "androidx.compose.foundation.text.selection.SelectionContainer (SelectionContainer.kt:90)");
            }
            final SelectionRegistrarImpl registrarImpl = (SelectionRegistrarImpl) RememberSaveableKt.m3589rememberSaveable(new Object[0], (Saver) SelectionRegistrarImpl.INSTANCE.getSaver(), (String) null, (Function0) new Function0<SelectionRegistrarImpl>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$registrarImpl$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final SelectionRegistrarImpl invoke() {
                    return new SelectionRegistrarImpl();
                }
            }, $composer2, 3072, 4);
            ComposerKt.sourceInformationMarkerStart($composer2, 882622186, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = new SelectionManager(registrarImpl);
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final SelectionManager manager = (SelectionManager) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ProvidableCompositionLocal<HapticFeedback> localHapticFeedback = CompositionLocalsKt.getLocalHapticFeedback();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localHapticFeedback);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            manager.setHapticFeedBack((HapticFeedback) objConsume);
            ProvidableCompositionLocal<ClipboardManager> localClipboardManager = CompositionLocalsKt.getLocalClipboardManager();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer2.consume(localClipboardManager);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            manager.setClipboardManager((ClipboardManager) objConsume2);
            ProvidableCompositionLocal<TextToolbar> localTextToolbar = CompositionLocalsKt.getLocalTextToolbar();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer2.consume(localTextToolbar);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            manager.setTextToolbar((TextToolbar) objConsume3);
            manager.setOnSelectionChange(function1);
            manager.setSelection(selection);
            ContextMenu_androidKt.ContextMenuArea(manager, ComposableLambdaKt.rememberComposableLambda(-123806316, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.SelectionContainer.3
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

                public final void invoke(Composer $composer3, int $changed2) {
                    ComposerKt.sourceInformation($composer3, "C104@3930L1971,104@3857L2044:SelectionContainer.kt#eksfi3");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-123806316, $changed2, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous> (SelectionContainer.kt:104)");
                        }
                        ProvidedValue<SelectionRegistrar> providedValueProvides = SelectionRegistrarKt.getLocalSelectionRegistrar().provides(registrarImpl);
                        final Modifier modifier5 = modifier4;
                        final SelectionManager selectionManager = manager;
                        final Function2<Composer, Integer, Unit> function22 = function2;
                        CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.rememberComposableLambda(935424596, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.SelectionContainer.3.1
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

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C107@4138L1753,107@4081L1810:SelectionContainer.kt#eksfi3");
                                if (($changed3 & 3) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(935424596, $changed3, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous> (SelectionContainer.kt:107)");
                                    }
                                    Modifier modifierThen = modifier5.then(selectionManager.getModifier());
                                    final Function2<Composer, Integer, Unit> function23 = function22;
                                    final SelectionManager selectionManager2 = selectionManager;
                                    SimpleLayoutKt.SimpleLayout(modifierThen, ComposableLambdaKt.rememberComposableLambda(1375295262, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.SelectionContainer.3.1.1
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

                                        public final void invoke(Composer $composer5, int $changed4) {
                                            Object value$iv3;
                                            Object value$iv4;
                                            ResolvedTextDirection direction;
                                            SelectionContainerKt$SelectionContainer$3$1$1$1$1$1$1 value$iv5;
                                            ComposerKt.sourceInformation($composer5, "C108@4156L10:SelectionContainer.kt#eksfi3");
                                            if (($changed4 & 3) != 2 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1375295262, $changed4, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous>.<anonymous> (SelectionContainer.kt:108)");
                                                }
                                                function23.invoke($composer5, 0);
                                                if (selectionManager2.isInTouchMode() && selectionManager2.getHasFocus() && !selectionManager2.isTriviallyCollapsedSelection$foundation_release()) {
                                                    $composer5.startReplaceGroup(-882227523);
                                                    ComposerKt.sourceInformation($composer5, "");
                                                    Selection it = selectionManager2.getSelection();
                                                    if (it == null) {
                                                        $composer5.startReplaceGroup(-882188681);
                                                    } else {
                                                        $composer5.startReplaceGroup(-882188680);
                                                        ComposerKt.sourceInformation($composer5, "");
                                                        final SelectionManager selectionManager3 = selectionManager2;
                                                        $composer5.startReplaceGroup(1495564482);
                                                        ComposerKt.sourceInformation($composer5, "*115@4496L129,119@4692L361,138@5661L119,133@5316L495");
                                                        List $this$fastForEach$iv = CollectionsKt.listOf((Object[]) new Boolean[]{true, false});
                                                        int index$iv = 0;
                                                        for (int size = $this$fastForEach$iv.size(); index$iv < size; size = size) {
                                                            Object item$iv = $this$fastForEach$iv.get(index$iv);
                                                            boolean isStartHandle = ((Boolean) item$iv).booleanValue();
                                                            ComposerKt.sourceInformationMarkerStart($composer5, -1635778182, "CC(remember):SelectionContainer.kt#9igjgp");
                                                            boolean invalid$iv = $composer5.changed(isStartHandle);
                                                            Object it$iv2 = $composer5.rememberedValue();
                                                            if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                                                value$iv3 = selectionManager3.handleDragObserver(isStartHandle);
                                                                $composer5.updateRememberedValue(value$iv3);
                                                            } else {
                                                                value$iv3 = it$iv2;
                                                            }
                                                            TextDragObserver observer = (TextDragObserver) value$iv3;
                                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                                            ComposerKt.sourceInformationMarkerStart($composer5, -1635771678, "CC(remember):SelectionContainer.kt#9igjgp");
                                                            boolean invalid$iv2 = $composer5.changed(isStartHandle);
                                                            Object it$iv3 = $composer5.rememberedValue();
                                                            if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                                                value$iv4 = isStartHandle ? (Function0) new Function0<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1$1
                                                                    {
                                                                        super(0);
                                                                    }

                                                                    @Override // kotlin.jvm.functions.Function0
                                                                    public /* bridge */ /* synthetic */ Offset invoke() {
                                                                        return Offset.m3751boximpl(m1337invokeF1C5BW0());
                                                                    }

                                                                    /* renamed from: invoke-F1C5BW0, reason: not valid java name */
                                                                    public final long m1337invokeF1C5BW0() {
                                                                        Offset offsetM1373getStartHandlePosition_m7T9E = selectionManager3.m1373getStartHandlePosition_m7T9E();
                                                                        return offsetM1373getStartHandlePosition_m7T9E != null ? offsetM1373getStartHandlePosition_m7T9E.getPackedValue() : Offset.INSTANCE.m3777getUnspecifiedF1C5BW0();
                                                                    }
                                                                } : (Function0) new Function0<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1$2
                                                                    {
                                                                        super(0);
                                                                    }

                                                                    @Override // kotlin.jvm.functions.Function0
                                                                    public /* bridge */ /* synthetic */ Offset invoke() {
                                                                        return Offset.m3751boximpl(m1338invokeF1C5BW0());
                                                                    }

                                                                    /* renamed from: invoke-F1C5BW0, reason: not valid java name */
                                                                    public final long m1338invokeF1C5BW0() {
                                                                        Offset offsetM1372getEndHandlePosition_m7T9E = selectionManager3.m1372getEndHandlePosition_m7T9E();
                                                                        return offsetM1372getEndHandlePosition_m7T9E != null ? offsetM1372getEndHandlePosition_m7T9E.getPackedValue() : Offset.INSTANCE.m3777getUnspecifiedF1C5BW0();
                                                                    }
                                                                };
                                                                $composer5.updateRememberedValue(value$iv4);
                                                            } else {
                                                                value$iv4 = it$iv3;
                                                            }
                                                            Function0 positionProvider = (Function0) value$iv4;
                                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                                            if (isStartHandle) {
                                                                direction = it.getStart().getDirection();
                                                            } else {
                                                                direction = it.getEnd().getDirection();
                                                            }
                                                            SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 = new SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(positionProvider);
                                                            boolean handlesCrossed = it.getHandlesCrossed();
                                                            Modifier.Companion companion = Modifier.INSTANCE;
                                                            ComposerKt.sourceInformationMarkerStart($composer5, -1635740912, "CC(remember):SelectionContainer.kt#9igjgp");
                                                            boolean invalid$iv3 = $composer5.changedInstance(observer);
                                                            int index$iv2 = index$iv;
                                                            Object it$iv4 = $composer5.rememberedValue();
                                                            if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                                                value$iv5 = new SelectionContainerKt$SelectionContainer$3$1$1$1$1$1$1(observer, null);
                                                                $composer5.updateRememberedValue(value$iv5);
                                                            } else {
                                                                value$iv5 = it$iv4;
                                                            }
                                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                                            AndroidSelectionHandles_androidKt.m1324SelectionHandlepzduO1o(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0, isStartHandle, direction, handlesCrossed, 0L, SuspendingPointerInputFilterKt.pointerInput(companion, observer, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv5), $composer5, 0, 16);
                                                            index$iv = index$iv2 + 1;
                                                            $this$fastForEach$iv = $this$fastForEach$iv;
                                                        }
                                                        $composer5.endReplaceGroup();
                                                    }
                                                    $composer5.endReplaceGroup();
                                                    $composer5.endReplaceGroup();
                                                } else {
                                                    $composer5.startReplaceGroup(-880741817);
                                                    $composer5.endReplaceGroup();
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }, $composer4, 54), $composer4, 48, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }, $composer3, 54), $composer3, ProvidedValue.$stable | 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }, $composer2, 54), $composer2, 48);
            ComposerKt.sourceInformationMarkerStart($composer2, 882699720, "CC(remember):SelectionContainer.kt#9igjgp");
            boolean invalid$iv = $composer2.changedInstance(manager);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$4$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) {
                        final SelectionManager selectionManager = manager;
                        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$4$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                selectionManager.onRelease();
                                selectionManager.setHasFocus(false);
                            }
                        };
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.DisposableEffect(manager, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) value$iv2, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.SelectionContainer.5
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

                public final void invoke(Composer composer, int i3) {
                    SelectionContainerKt.SelectionContainer(modifier5, selection, function1, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }
}
