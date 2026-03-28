package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ScrollingContainerKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: LazyList.kt */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0098\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0019¢\u0006\u0002\b\u001bH\u0001¢\u0006\u0002\u0010\u001c\u001a\u009a\u0001\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001e¢\u0006\u0002\b\u001b2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\tH\u0003¢\u0006\u0002\u0010*¨\u0006+"}, d2 = {"LazyList", "", "modifier", "Landroidx/compose/ui/Modifier;", "state", "Landroidx/compose/foundation/lazy/LazyListState;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "isVertical", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "userScrollEnabled", "beyondBoundsItemCount", "", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/LazyListScope;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "rememberLazyListMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "itemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/LazyListItemProvider;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "graphicsContext", "Landroidx/compose/ui/graphics/GraphicsContext;", "stickyHeadersEnabled", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;ZLandroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListKt {
    public static final void LazyList(final Modifier modifier, final LazyListState state, final PaddingValues contentPadding, final boolean reverseLayout, final boolean isVertical, final FlingBehavior flingBehavior, final boolean userScrollEnabled, int beyondBoundsItemCount, Alignment.Horizontal horizontalAlignment, Arrangement.Vertical verticalArrangement, Alignment.Vertical verticalAlignment, Arrangement.Horizontal horizontalArrangement, final Function1<? super LazyListScope, Unit> function1, Composer $composer, final int $changed, final int $changed1, final int i) {
        Arrangement.Vertical verticalArrangement2;
        Alignment.Vertical verticalAlignment2;
        Arrangement.Horizontal horizontalArrangement2;
        int $dirty;
        Composer $composer2;
        Alignment.Horizontal horizontalAlignment2;
        int beyondBoundsItemCount2;
        Composer $composer3 = $composer.startRestartGroup(620764179);
        ComposerKt.sourceInformation($composer3, "C(LazyList)P(7,9,2,8,6,3,10!1,4,12,11,5)81@3859L50,83@3935L48,84@4009L24,85@4081L7,86@4150L7,88@4183L395,109@4816L278,117@5164L153,123@5480L7,116@5108L481,128@5650L317,105@4671L1429:LazyList.kt#428nma");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(state) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty2 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty2 |= $composer3.changed(contentPadding) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(reverseLayout) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer3.changed(isVertical) ? 16384 : 8192;
        }
        if ((i & 32) != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty2 |= $composer3.changed(flingBehavior) ? 131072 : 65536;
        }
        if ((i & 64) != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(userScrollEnabled) ? 1048576 : 524288;
        }
        int i2 = i & 128;
        if (i2 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changed(beyondBoundsItemCount) ? 8388608 : 4194304;
        }
        int i3 = i & 256;
        if (i3 != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer3.changed(horizontalAlignment) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i4 = i & 512;
        if (i4 != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty2 |= $composer3.changed(verticalArrangement) ? 536870912 : 268435456;
        }
        int i5 = i & 1024;
        if (i5 != 0) {
            $dirty1 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty1 |= $composer3.changed(verticalAlignment) ? 4 : 2;
        }
        int i6 = i & 2048;
        if (i6 != 0) {
            $dirty1 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty1 |= $composer3.changed(horizontalArrangement) ? 32 : 16;
        }
        if ((i & 4096) != 0) {
            $dirty1 |= 384;
        } else if (($changed1 & 384) == 0) {
            $dirty1 |= $composer3.changedInstance(function1) ? 256 : 128;
        }
        int $dirty12 = $dirty1;
        if ((306783379 & $dirty2) == 306783378 && ($dirty12 & 147) == 146 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            beyondBoundsItemCount2 = beyondBoundsItemCount;
            horizontalAlignment2 = horizontalAlignment;
            verticalArrangement2 = verticalArrangement;
            verticalAlignment2 = verticalAlignment;
            horizontalArrangement2 = horizontalArrangement;
            $dirty = $dirty2;
            $composer2 = $composer3;
        } else {
            int beyondBoundsItemCount3 = i2 != 0 ? 0 : beyondBoundsItemCount;
            Alignment.Horizontal horizontalAlignment3 = i3 != 0 ? null : horizontalAlignment;
            verticalArrangement2 = i4 != 0 ? null : verticalArrangement;
            verticalAlignment2 = i5 != 0 ? null : verticalAlignment;
            horizontalArrangement2 = i6 != 0 ? null : horizontalArrangement;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(620764179, $dirty2, $dirty12, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
            }
            Function0 itemProviderLambda = LazyListItemProviderKt.rememberLazyListItemProviderLambda(state, function1, $composer3, (($dirty2 >> 3) & 14) | (($dirty12 >> 3) & 112));
            LazyLayoutSemanticState semanticState = LazyListSemanticsKt.rememberLazyListSemanticState(state, isVertical, $composer3, (($dirty2 >> 3) & 14) | (($dirty2 >> 9) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)482@20332L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, -954367824, "CC(remember):Effects.kt#9igjgp");
            Object value$iv$iv = $composer3.rememberedValue();
            if (value$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3));
                $composer3.updateRememberedValue(value$iv$iv);
            }
            CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            CoroutineScope coroutineScope = wrapper$iv.getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ProvidableCompositionLocal<GraphicsContext> localGraphicsContext = CompositionLocalsKt.getLocalGraphicsContext();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localGraphicsContext);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            GraphicsContext graphicsContext = (GraphicsContext) objConsume;
            CompositionLocal this_$iv = CompositionLocalsKt.getLocalScrollCaptureInProgress();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer3.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            boolean stickyHeadersEnabled = !((Boolean) objConsume2).booleanValue();
            Function2 measurePolicy = rememberLazyListMeasurePolicy(itemProviderLambda, state, contentPadding, reverseLayout, isVertical, beyondBoundsItemCount3, horizontalAlignment3, verticalAlignment2, horizontalArrangement2, verticalArrangement2, coroutineScope, graphicsContext, stickyHeadersEnabled, $composer3, ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | ($dirty2 & 57344) | (($dirty2 >> 6) & 458752) | (($dirty2 >> 6) & 3670016) | (($dirty12 << 21) & 29360128) | (($dirty12 << 21) & 234881024) | (1879048192 & $dirty2), 0);
            Orientation orientation = isVertical ? Orientation.Vertical : Orientation.Horizontal;
            $dirty = $dirty2;
            Alignment.Horizontal horizontalAlignment4 = horizontalAlignment3;
            $composer2 = $composer3;
            Modifier modifierLazyLayoutSemantics = LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier.then(state.getRemeasurementModifier()).then(state.getAwaitLayoutModifier()), itemProviderLambda, semanticState, orientation, userScrollEnabled, reverseLayout, $composer3, (($dirty2 >> 6) & 57344) | (($dirty2 << 6) & 458752));
            LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsStateRememberLazyListBeyondBoundsState = LazyListBeyondBoundsModifierKt.rememberLazyListBeyondBoundsState(state, beyondBoundsItemCount3, $composer2, (($dirty >> 3) & 14) | (($dirty >> 18) & 112));
            LazyLayoutBeyondBoundsInfo beyondBoundsInfo = state.getBeyondBoundsInfo();
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer2.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LazyLayoutKt.LazyLayout((Function0<? extends LazyLayoutItemProvider>) itemProviderLambda, ScrollingContainerKt.scrollingContainer(LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(modifierLazyLayoutSemantics, lazyLayoutBeyondBoundsStateRememberLazyListBeyondBoundsState, beyondBoundsInfo, reverseLayout, (LayoutDirection) objConsume3, orientation, userScrollEnabled, $composer2, (MutableVector.$stable << 6) | ($dirty & 7168) | (3670016 & $dirty)).then(state.getItemAnimator$foundation_release().getModifier()), state, orientation, userScrollEnabled, reverseLayout, flingBehavior, state.getInternalInteractionSource(), null, $composer2, ($dirty & 112) | (($dirty >> 9) & 7168) | (($dirty << 3) & 57344) | ($dirty & 458752), 64), state.getPrefetchState(), (Function2<? super LazyLayoutMeasureScope, ? super Constraints, ? extends MeasureResult>) measurePolicy, $composer2, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            horizontalAlignment2 = horizontalAlignment4;
            beyondBoundsItemCount2 = beyondBoundsItemCount3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final int i7 = beyondBoundsItemCount2;
            final Alignment.Horizontal horizontal = horizontalAlignment2;
            final Arrangement.Vertical vertical = verticalArrangement2;
            final Alignment.Vertical vertical2 = verticalAlignment2;
            final Arrangement.Horizontal horizontal2 = horizontalArrangement2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt.LazyList.1
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

                public final void invoke(Composer composer, int i8) {
                    LazyListKt.LazyList(modifier, state, contentPadding, reverseLayout, isVertical, flingBehavior, userScrollEnabled, i7, horizontal, vertical, vertical2, horizontal2, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final kotlin.jvm.functions.Function2<androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Constraints, androidx.compose.ui.layout.MeasureResult> rememberLazyListMeasurePolicy(final kotlin.jvm.functions.Function0<? extends androidx.compose.foundation.lazy.LazyListItemProvider> r25, final androidx.compose.foundation.lazy.LazyListState r26, final androidx.compose.foundation.layout.PaddingValues r27, final boolean r28, final boolean r29, final int r30, final androidx.compose.ui.Alignment.Horizontal r31, final androidx.compose.ui.Alignment.Vertical r32, final androidx.compose.foundation.layout.Arrangement.Horizontal r33, final androidx.compose.foundation.layout.Arrangement.Vertical r34, final kotlinx.coroutines.CoroutineScope r35, final androidx.compose.ui.graphics.GraphicsContext r36, final boolean r37, androidx.compose.runtime.Composer r38, int r39, int r40) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListKt.rememberLazyListMeasurePolicy(kotlin.jvm.functions.Function0, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, boolean, int, androidx.compose.ui.Alignment$Horizontal, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, kotlinx.coroutines.CoroutineScope, androidx.compose.ui.graphics.GraphicsContext, boolean, androidx.compose.runtime.Composer, int, int):kotlin.jvm.functions.Function2");
    }
}
