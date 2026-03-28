package androidx.compose.foundation.layout;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* compiled from: ContextualFlowLayout.kt */
@Metadata(d1 = {"\u0000x\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0084\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\r21\u0010\u000e\u001a-\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\u0002\b\u0014¢\u0006\u0002\b\u0015H\u0007¢\u0006\u0002\u0010\u0016\u001a\u0084\u0001\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u001921\u0010\u000e\u001a-\u0012\u0004\u0012\u00020\u001a\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\u0002\b\u0014¢\u0006\u0002\b\u0015H\u0007¢\u0006\u0002\u0010\u001b\u001a¥\u0001\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010#\u001a\u0013\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00010%¢\u0006\u0002\b\u00140$2;\u0010&\u001a7\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110'¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\u0002\b\u0014H\u0001¢\u0006\u0002\u0010)\u001a¥\u0001\u0010*\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010#\u001a\u0013\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00010%¢\u0006\u0002\b\u00140$2;\u0010&\u001a7\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110'¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\u0002\b\u0014H\u0001¢\u0006\u0002\u0010+¨\u0006,"}, d2 = {"ContextualFlowColumn", "", "itemCount", "", "modifier", "Landroidx/compose/ui/Modifier;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "maxItemsInEachColumn", "maxLines", "overflow", "Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;", "content", "Lkotlin/Function2;", "Landroidx/compose/foundation/layout/ContextualFlowColumnScope;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "index", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "ContextualFlowRow", "maxItemsInEachRow", "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;", "Landroidx/compose/foundation/layout/ContextualFlowRowScope;", "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/ContextualFlowRowOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "contextualColumnMeasureHelper", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "maxItemsInMainAxis", "overflowState", "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "overflowComposables", "", "Lkotlin/Function0;", "getComposable", "Landroidx/compose/foundation/layout/FlowLineInfo;", "info", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;", "contextualRowMeasurementHelper", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ContextualFlowLayoutKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void ContextualFlowRow(final int itemCount, Modifier modifier, Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, int maxItemsInEachRow, int maxLines, ContextualFlowRowOverflow overflow, final Function4<? super ContextualFlowRowScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        Arrangement.Horizontal horizontalArrangement2;
        Arrangement.Vertical verticalArrangement2;
        int i2;
        Object value$iv;
        List mutableList;
        ContextualFlowRowOverflow overflow2;
        Modifier modifier2;
        int maxItemsInEachRow2;
        int maxLines2;
        Arrangement.Horizontal horizontalArrangement3;
        Arrangement.Vertical verticalArrangement3;
        Composer $composer2 = $composer.startRestartGroup(-341770689);
        ComposerKt.sourceInformation($composer2, "C(ContextualFlowRow)P(2,5,1,7,3,4,6)74@3434L65,77@3545L193,90@3961L267,82@3763L465,99@4233L90:ContextualFlowLayout.kt#2w3rfo");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(itemCount) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
            horizontalArrangement2 = horizontalArrangement;
        } else if (($changed & 384) == 0) {
            horizontalArrangement2 = horizontalArrangement;
            $dirty |= $composer2.changed(horizontalArrangement2) ? 256 : 128;
        } else {
            horizontalArrangement2 = horizontalArrangement;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            verticalArrangement2 = verticalArrangement;
        } else if (($changed & 3072) == 0) {
            verticalArrangement2 = verticalArrangement;
            $dirty |= $composer2.changed(verticalArrangement2) ? 2048 : 1024;
        } else {
            verticalArrangement2 = verticalArrangement;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = maxItemsInEachRow;
        } else if (($changed & 24576) == 0) {
            i2 = maxItemsInEachRow;
            $dirty |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = maxItemsInEachRow;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty |= $composer2.changed(maxLines) ? 131072 : 65536;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changed(overflow) ? 1048576 : 524288;
        }
        if ((i & 128) != 0) {
            $dirty |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty |= $composer2.changedInstance(function4) ? 8388608 : 4194304;
        }
        if ((4793491 & $dirty) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
            maxLines2 = maxLines;
            overflow2 = overflow;
            verticalArrangement3 = verticalArrangement2;
            maxItemsInEachRow2 = i2;
            horizontalArrangement3 = horizontalArrangement2;
        } else {
            Modifier.Companion modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier;
            if (i4 != 0) {
                horizontalArrangement2 = Arrangement.INSTANCE.getStart();
            }
            if (i5 != 0) {
                verticalArrangement2 = Arrangement.INSTANCE.getTop();
            }
            int maxItemsInEachRow3 = i6 != 0 ? Integer.MAX_VALUE : i2;
            int maxLines3 = i7 != 0 ? Integer.MAX_VALUE : maxLines;
            ContextualFlowRowOverflow overflow3 = i8 != 0 ? ContextualFlowRowOverflow.INSTANCE.getClip() : overflow;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-341770689, $dirty, -1, "androidx.compose.foundation.layout.ContextualFlowRow (ContextualFlowLayout.kt:73)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 1235053714, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv = ($dirty & 3670016) == 1048576;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = overflow3.createOverflowState$foundation_layout_release();
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            FlowLayoutOverflowState overflowState = (FlowLayoutOverflowState) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 1235057394, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv2 = (3670016 & $dirty) == 1048576;
            Object objRememberedValue = $composer2.rememberedValue();
            if (invalid$iv2 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                mutableList = new ArrayList();
                overflow3.addOverflowComposables$foundation_layout_release(overflowState, mutableList);
                $composer2.updateRememberedValue(mutableList);
            } else {
                mutableList = objRememberedValue;
            }
            List list = mutableList;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ContextualFlowRowOverflow overflow4 = overflow3;
            Function2 measurePolicy = contextualRowMeasurementHelper(horizontalArrangement2, verticalArrangement2, maxItemsInEachRow3, maxLines3, overflowState, itemCount, list, ComposableLambdaKt.rememberComposableLambda(-8464804, true, new Function4<Integer, FlowLineInfo, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$ContextualFlowRow$measurePolicy$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, FlowLineInfo flowLineInfo, Composer composer, Integer num2) {
                    invoke(num.intValue(), flowLineInfo, composer, num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int index, FlowLineInfo info, Composer $composer3, int $changed2) {
                    ComposerKt.sourceInformation($composer3, "C97@4208L14:ContextualFlowLayout.kt#2w3rfo");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-8464804, $changed2, -1, "androidx.compose.foundation.layout.ContextualFlowRow.<anonymous> (ContextualFlowLayout.kt:91)");
                    }
                    ContextualFlowRowScopeImpl scope = new ContextualFlowRowScopeImpl(info.getLineIndex(), info.getPositionInLine(), info.getMaxMainAxisSize(), info.getMaxCrossAxisSize(), null);
                    function4.invoke(scope, Integer.valueOf(index), $composer3, Integer.valueOf(($changed2 << 3) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer2, 54), $composer2, (($dirty >> 6) & 14) | 12582912 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (($dirty << 15) & 458752));
            SubcomposeLayoutKt.SubcomposeLayout(modifier3, measurePolicy, $composer2, ($dirty >> 3) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            overflow2 = overflow4;
            modifier2 = modifier3;
            maxItemsInEachRow2 = maxItemsInEachRow3;
            maxLines2 = maxLines3;
            horizontalArrangement3 = horizontalArrangement2;
            verticalArrangement3 = verticalArrangement2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Arrangement.Horizontal horizontal = horizontalArrangement3;
            final Arrangement.Vertical vertical = verticalArrangement3;
            final int i9 = maxItemsInEachRow2;
            final int i10 = maxLines2;
            final ContextualFlowRowOverflow contextualFlowRowOverflow = overflow2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt.ContextualFlowRow.1
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

                public final void invoke(Composer composer, int i11) {
                    ContextualFlowLayoutKt.ContextualFlowRow(itemCount, modifier4, horizontal, vertical, i9, i10, contextualFlowRowOverflow, function4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void ContextualFlowColumn(final int itemCount, Modifier modifier, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, int maxItemsInEachColumn, int maxLines, ContextualFlowColumnOverflow overflow, final Function4<? super ContextualFlowColumnScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        Arrangement.Vertical verticalArrangement2;
        Arrangement.Horizontal horizontalArrangement2;
        int i2;
        Object value$iv;
        List mutableList;
        ContextualFlowColumnOverflow overflow2;
        Modifier modifier2;
        int maxItemsInEachColumn2;
        int maxLines2;
        Arrangement.Vertical verticalArrangement3;
        Arrangement.Horizontal horizontalArrangement3;
        Composer $composer2 = $composer.startRestartGroup(-588476895);
        ComposerKt.sourceInformation($composer2, "C(ContextualFlowColumn)P(2,5,7,1,3,4,6)149@6671L65,152@6782L193,165@7201L270,157@7000L471,175@7477L90:ContextualFlowLayout.kt#2w3rfo");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(itemCount) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
            verticalArrangement2 = verticalArrangement;
        } else if (($changed & 384) == 0) {
            verticalArrangement2 = verticalArrangement;
            $dirty |= $composer2.changed(verticalArrangement2) ? 256 : 128;
        } else {
            verticalArrangement2 = verticalArrangement;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            horizontalArrangement2 = horizontalArrangement;
        } else if (($changed & 3072) == 0) {
            horizontalArrangement2 = horizontalArrangement;
            $dirty |= $composer2.changed(horizontalArrangement2) ? 2048 : 1024;
        } else {
            horizontalArrangement2 = horizontalArrangement;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = maxItemsInEachColumn;
        } else if (($changed & 24576) == 0) {
            i2 = maxItemsInEachColumn;
            $dirty |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = maxItemsInEachColumn;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty |= $composer2.changed(maxLines) ? 131072 : 65536;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changed(overflow) ? 1048576 : 524288;
        }
        if ((i & 128) != 0) {
            $dirty |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty |= $composer2.changedInstance(function4) ? 8388608 : 4194304;
        }
        if ((4793491 & $dirty) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
            maxLines2 = maxLines;
            overflow2 = overflow;
            horizontalArrangement3 = horizontalArrangement2;
            maxItemsInEachColumn2 = i2;
            verticalArrangement3 = verticalArrangement2;
        } else {
            Modifier.Companion modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier;
            if (i4 != 0) {
                verticalArrangement2 = Arrangement.INSTANCE.getTop();
            }
            if (i5 != 0) {
                horizontalArrangement2 = Arrangement.INSTANCE.getStart();
            }
            int maxItemsInEachColumn3 = i6 != 0 ? Integer.MAX_VALUE : i2;
            int maxLines3 = i7 != 0 ? Integer.MAX_VALUE : maxLines;
            ContextualFlowColumnOverflow overflow3 = i8 != 0 ? ContextualFlowColumnOverflow.INSTANCE.getClip() : overflow;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-588476895, $dirty, -1, "androidx.compose.foundation.layout.ContextualFlowColumn (ContextualFlowLayout.kt:148)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -1055927072, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv = ($dirty & 3670016) == 1048576;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = overflow3.createOverflowState$foundation_layout_release();
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            FlowLayoutOverflowState overflowState = (FlowLayoutOverflowState) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1055923392, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv2 = (3670016 & $dirty) == 1048576;
            Object objRememberedValue = $composer2.rememberedValue();
            if (invalid$iv2 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                mutableList = new ArrayList();
                overflow3.addOverflowComposables$foundation_layout_release(overflowState, mutableList);
                $composer2.updateRememberedValue(mutableList);
            } else {
                mutableList = objRememberedValue;
            }
            List list = mutableList;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ContextualFlowColumnOverflow overflow4 = overflow3;
            Function2 measurePolicy = contextualColumnMeasureHelper(verticalArrangement2, horizontalArrangement2, maxItemsInEachColumn3, maxLines3, overflowState, itemCount, list, ComposableLambdaKt.rememberComposableLambda(302435318, true, new Function4<Integer, FlowLineInfo, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$ContextualFlowColumn$measurePolicy$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, FlowLineInfo flowLineInfo, Composer composer, Integer num2) {
                    invoke(num.intValue(), flowLineInfo, composer, num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int index, FlowLineInfo info, Composer $composer3, int $changed2) {
                    ComposerKt.sourceInformation($composer3, "C172@7451L14:ContextualFlowLayout.kt#2w3rfo");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(302435318, $changed2, -1, "androidx.compose.foundation.layout.ContextualFlowColumn.<anonymous> (ContextualFlowLayout.kt:166)");
                    }
                    ContextualFlowColumnScopeImpl scope = new ContextualFlowColumnScopeImpl(info.getLineIndex(), info.getPositionInLine(), info.getMaxCrossAxisSize(), info.getMaxMainAxisSize(), null);
                    function4.invoke(scope, Integer.valueOf(index), $composer3, Integer.valueOf(($changed2 << 3) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer2, 54), $composer2, (($dirty >> 6) & 14) | 12582912 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (($dirty << 15) & 458752));
            SubcomposeLayoutKt.SubcomposeLayout(modifier3, measurePolicy, $composer2, ($dirty >> 3) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            overflow2 = overflow4;
            modifier2 = modifier3;
            maxItemsInEachColumn2 = maxItemsInEachColumn3;
            maxLines2 = maxLines3;
            verticalArrangement3 = verticalArrangement2;
            horizontalArrangement3 = horizontalArrangement2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Arrangement.Vertical vertical = verticalArrangement3;
            final Arrangement.Horizontal horizontal = horizontalArrangement3;
            final int i9 = maxItemsInEachColumn2;
            final int i10 = maxLines2;
            final ContextualFlowColumnOverflow contextualFlowColumnOverflow = overflow2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt.ContextualFlowColumn.1
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

                public final void invoke(Composer composer, int i11) {
                    ContextualFlowLayoutKt.ContextualFlowColumn(itemCount, modifier4, vertical, horizontal, i9, i10, contextualFlowColumnOverflow, function4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.jvm.functions.Function2<androidx.compose.ui.layout.SubcomposeMeasureScope, androidx.compose.ui.unit.Constraints, androidx.compose.ui.layout.MeasureResult> contextualRowMeasurementHelper(androidx.compose.foundation.layout.Arrangement.Horizontal r24, androidx.compose.foundation.layout.Arrangement.Vertical r25, int r26, int r27, androidx.compose.foundation.layout.FlowLayoutOverflowState r28, int r29, java.util.List<? extends kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit>> r30, kotlin.jvm.functions.Function4<? super java.lang.Integer, ? super androidx.compose.foundation.layout.FlowLineInfo, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, androidx.compose.runtime.Composer r32, int r33) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.ContextualFlowLayoutKt.contextualRowMeasurementHelper(androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, int, int, androidx.compose.foundation.layout.FlowLayoutOverflowState, int, java.util.List, kotlin.jvm.functions.Function4, androidx.compose.runtime.Composer, int):kotlin.jvm.functions.Function2");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.jvm.functions.Function2<androidx.compose.ui.layout.SubcomposeMeasureScope, androidx.compose.ui.unit.Constraints, androidx.compose.ui.layout.MeasureResult> contextualColumnMeasureHelper(androidx.compose.foundation.layout.Arrangement.Vertical r24, androidx.compose.foundation.layout.Arrangement.Horizontal r25, int r26, int r27, androidx.compose.foundation.layout.FlowLayoutOverflowState r28, int r29, java.util.List<? extends kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit>> r30, kotlin.jvm.functions.Function4<? super java.lang.Integer, ? super androidx.compose.foundation.layout.FlowLineInfo, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, androidx.compose.runtime.Composer r32, int r33) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.ContextualFlowLayoutKt.contextualColumnMeasureHelper(androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, int, int, androidx.compose.foundation.layout.FlowLayoutOverflowState, int, java.util.List, kotlin.jvm.functions.Function4, androidx.compose.runtime.Composer, int):kotlin.jvm.functions.Function2");
    }
}
