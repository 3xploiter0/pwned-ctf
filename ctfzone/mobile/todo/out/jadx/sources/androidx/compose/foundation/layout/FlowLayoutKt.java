package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.collection.IntList;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.FlowLayoutBuildingBlocks;
import androidx.compose.foundation.layout.FlowLayoutOverflow;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: FlowLayout.kt */
@Metadata(d1 = {"\u0000Ô\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u001ag\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00070\u0014¢\u0006\u0002\b\u0016¢\u0006\u0002\b\u0017H\u0007¢\u0006\u0002\u0010\u0018\u001ag\u0010\u0019\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u001b2\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00070\u0014¢\u0006\u0002\b\u0016¢\u0006\u0002\b\u0017H\u0007¢\u0006\u0002\u0010\u001d\u001a%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000fH\u0001¢\u0006\u0002\u0010!\u001a5\u0010\"\u001a\u00020#2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\u0010&\u001a\u0095\u0001\u0010'\u001a\u00020(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*2#\u0010,\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-¢\u0006\u0002\b\u00172#\u0010.\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-¢\u0006\u0002\b\u00172\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0002¢\u0006\u0002\u00102\u001a[\u0010'\u001a\u00020(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0002¢\u0006\u0002\u00106\u001aS\u00107\u001a\u00020\u000f2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*2#\u0010,\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-¢\u0006\u0002\b\u00172\u0006\u00108\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000fH\u0002\u001a\u0090\u0001\u00109\u001a\u00020\u000f2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*2#\u0010,\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-¢\u0006\u0002\b\u00172#\u0010.\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-¢\u0006\u0002\b\u00172\u0006\u00108\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0002\u001a%\u0010:\u001a\u00020\u001f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000fH\u0001¢\u0006\u0002\u0010;\u001a5\u0010<\u001a\u00020#2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\u0010=\u001a\\\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020E0D2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020J2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0000ø\u0001\u0000¢\u0006\u0004\bK\u0010L\u001a\u001c\u0010M\u001a\u00020\u000f*\u00020+2\u0006\u0010N\u001a\u00020O2\u0006\u0010,\u001a\u00020\u000fH\u0000\u001a\u001c\u0010P\u001a\u00020\u000f*\u00020+2\u0006\u0010N\u001a\u00020O2\u0006\u0010.\u001a\u00020\u000fH\u0000\u001a<\u0010Q\u001a\u00020(*\u00020E2\u0006\u0010A\u001a\u00020B2\u0006\u0010I\u001a\u00020R2\u0014\u0010S\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010T\u0012\u0004\u0012\u00020\u00070\u0014H\u0000ø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001aT\u0010W\u001a\u00020?*\u00020@2\u0006\u0010I\u001a\u00020J2\u0006\u0010X\u001a\u00020\u000f2\u0006\u0010Y\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020?0[2\u0006\u0010\\\u001a\u00020B2\u0006\u0010]\u001a\u000204H\u0000ø\u0001\u0000¢\u0006\u0004\b^\u0010_\u001a\u001e\u0010`\u001a\u0004\u0018\u00010E*\b\u0012\u0004\u0012\u00020E0D2\b\u0010a\u001a\u0004\u0018\u00010bH\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006c"}, d2 = {"CROSS_AXIS_ALIGNMENT_START", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "getCROSS_AXIS_ALIGNMENT_START", "()Landroidx/compose/foundation/layout/CrossAxisAlignment;", "CROSS_AXIS_ALIGNMENT_TOP", "getCROSS_AXIS_ALIGNMENT_TOP", "FlowColumn", "", "modifier", "Landroidx/compose/ui/Modifier;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "maxItemsInEachColumn", "", "maxLines", "overflow", "Landroidx/compose/foundation/layout/FlowColumnOverflow;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/FlowColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "FlowRow", "maxItemsInEachRow", "Landroidx/compose/foundation/layout/FlowRowOverflow;", "Landroidx/compose/foundation/layout/FlowRowScope;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "columnMeasurementHelper", "Landroidx/compose/ui/layout/MeasurePolicy;", "maxItemsInMainAxis", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;", "columnMeasurementMultiContentHelper", "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "overflowState", "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "intrinsicCrossAxisSize", "Landroidx/collection/IntIntPair;", "children", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "mainAxisSize", "Lkotlin/Function3;", "crossAxisSize", "mainAxisAvailable", "mainAxisSpacing", "crossAxisSpacing", "(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J", "mainAxisSizes", "", "crossAxisSizes", "(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J", "maxIntrinsicMainAxisSize", "crossAxisAvailable", "minIntrinsicMainAxisSize", "rowMeasurementHelper", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;", "rowMeasurementMultiContentHelper", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "breakDownItems", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurePolicy", "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;", "measurablesIterator", "", "Landroidx/compose/ui/layout/Measurable;", "mainAxisSpacingDp", "Landroidx/compose/ui/unit/Dp;", "crossAxisSpacingDp", "constraints", "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;", "breakDownItems-di9J0FM", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Ljava/util/Iterator;FFJIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)Landroidx/compose/ui/layout/MeasureResult;", "crossAxisMin", "isHorizontal", "", "mainAxisMin", "measureAndCache", "Landroidx/compose/ui/unit/Constraints;", "storePlaceable", "Landroidx/compose/ui/layout/Placeable;", "measureAndCache-rqJ1uqs", "(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J", "placeHelper", "mainAxisTotalSize", "crossAxisTotalSize", "items", "Landroidx/compose/runtime/collection/MutableVector;", "measureHelper", "outPosition", "placeHelper-BmaY500", "(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;", "safeNext", "info", "Landroidx/compose/foundation/layout/FlowLineInfo;", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FlowLayoutKt {
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_TOP = CrossAxisAlignment.INSTANCE.vertical$foundation_layout_release(Alignment.INSTANCE.getTop());
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_START = CrossAxisAlignment.INSTANCE.horizontal$foundation_layout_release(Alignment.INSTANCE.getStart());

    public static final void FlowRow(Modifier modifier, Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, int maxItemsInEachRow, int maxLines, FlowRowOverflow overflow, final Function3<? super FlowRowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Arrangement.Horizontal horizontal;
        Arrangement.Vertical vertical;
        int maxItemsInEachRow2;
        int maxLines2;
        FlowRowOverflow overflow2;
        Arrangement.Horizontal horizontalArrangement2;
        Arrangement.Vertical verticalArrangement2;
        Object value$iv;
        int $i$f$cache;
        FlowLayoutOverflowState overflowState;
        Object value$iv2;
        Object value$iv$iv;
        Modifier modifier2;
        Function0 factory$iv$iv$iv;
        FlowRowOverflow overflow3;
        Composer $composer2 = $composer.startRestartGroup(437853230);
        ComposerKt.sourceInformation($composer2, "C(FlowRow)P(4,1,6,2,3,5)93@4089L65,96@4179L166,103@4391L261,110@4658L105:FlowLayout.kt#2w3rfo");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            horizontal = horizontalArrangement;
        } else if (($changed & 48) == 0) {
            horizontal = horizontalArrangement;
            $dirty |= $composer2.changed(horizontal) ? 32 : 16;
        } else {
            horizontal = horizontalArrangement;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
            vertical = verticalArrangement;
        } else if (($changed & 384) == 0) {
            vertical = verticalArrangement;
            $dirty |= $composer2.changed(vertical) ? 256 : 128;
        } else {
            vertical = verticalArrangement;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            maxItemsInEachRow2 = maxItemsInEachRow;
        } else if (($changed & 3072) == 0) {
            maxItemsInEachRow2 = maxItemsInEachRow;
            $dirty |= $composer2.changed(maxItemsInEachRow2) ? 2048 : 1024;
        } else {
            maxItemsInEachRow2 = maxItemsInEachRow;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            maxLines2 = maxLines;
        } else if (($changed & 24576) == 0) {
            maxLines2 = maxLines;
            $dirty |= $composer2.changed(maxLines2) ? 16384 : 8192;
        } else {
            maxLines2 = maxLines;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            overflow2 = overflow;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            overflow2 = overflow;
            $dirty |= $composer2.changed(overflow2) ? 131072 : 65536;
        } else {
            overflow2 = overflow;
        }
        if ((i & 64) != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changedInstance(function3) ? 1048576 : 524288;
        }
        if (($dirty & 599187) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
            horizontalArrangement2 = horizontal;
            verticalArrangement2 = vertical;
            overflow3 = overflow2;
        } else {
            Modifier.Companion modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier;
            horizontalArrangement2 = i3 != 0 ? Arrangement.INSTANCE.getStart() : horizontal;
            verticalArrangement2 = i4 != 0 ? Arrangement.INSTANCE.getTop() : vertical;
            if (i5 != 0) {
                maxItemsInEachRow2 = Integer.MAX_VALUE;
            }
            if (i6 != 0) {
                maxLines2 = Integer.MAX_VALUE;
            }
            if (i7 != 0) {
                overflow2 = FlowRowOverflow.INSTANCE.getClip();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(437853230, $dirty, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:92)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 454955587, "CC(remember):FlowLayout.kt#9igjgp");
            boolean invalid$iv = ($dirty & 458752) == 131072;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = overflow2.createOverflowState$foundation_layout_release();
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            FlowLayoutOverflowState overflowState2 = (FlowLayoutOverflowState) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $dirty2 = $dirty;
            MultiContentMeasurePolicy measurePolicy = rowMeasurementMultiContentHelper(horizontalArrangement2, verticalArrangement2, maxItemsInEachRow2, maxLines2, overflowState2, $composer2, (($dirty >> 3) & 14) | (($dirty >> 3) & 112) | (($dirty >> 3) & 896) | (($dirty >> 3) & 7168));
            ComposerKt.sourceInformationMarkerStart($composer2, 454965447, "CC(remember):FlowLayout.kt#9igjgp");
            boolean invalid$iv2 = (($dirty2 & 3670016) == 1048576) | (($dirty2 & 458752) == 131072);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                List mutableList = new ArrayList();
                $i$f$cache = 1;
                mutableList.add(ComposableLambdaKt.composableLambdaInstance(-139531073, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$FlowRow$list$1$1
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
                        ComposerKt.sourceInformation($composer3, "C105@4547L9:FlowLayout.kt#2w3rfo");
                        if (($changed2 & 3) == 2 && $composer3.getSkipping()) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-139531073, $changed2, -1, "androidx.compose.foundation.layout.FlowRow.<anonymous>.<anonymous> (FlowLayout.kt:105)");
                        }
                        function3.invoke(FlowRowScopeInstance.INSTANCE, $composer3, 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
                overflowState = overflowState2;
                overflow2.addOverflowComposables$foundation_layout_release(overflowState, mutableList);
                value$iv2 = mutableList;
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
                overflowState = overflowState2;
                $i$f$cache = 1;
            }
            List list = (List) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $changed$iv = ($dirty2 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, 1399185516, "CC(Layout)P(!1,2)174@7002L62,171@6888L182:Layout.kt#80mrfh");
            Function2 content$iv$iv = LayoutKt.combineAsVirtualLayouts(list);
            ComposerKt.sourceInformationMarkerStart($composer2, -290761165, "CC(remember):Layout.kt#9igjgp");
            if (((($changed$iv & 896) ^ 384) <= 256 || !$composer2.changed(measurePolicy)) && ($changed$iv & 384) != 256) {
                $i$f$cache = 0;
            }
            Object it$iv$iv = $composer2.rememberedValue();
            if ($i$f$cache != 0 || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = MultiContentMeasurePolicyKt.createMeasurePolicy(measurePolicy);
                $composer2.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            MeasurePolicy measurePolicy$iv$iv = (MeasurePolicy) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $changed$iv$iv = $changed$iv & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier3);
            Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
            modifier2 = modifier3;
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                factory$iv$iv$iv = factory$iv$iv$iv2;
                $composer2.createNode(factory$iv$iv$iv);
            } else {
                factory$iv$iv$iv = factory$iv$iv$iv2;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer2);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            }
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            content$iv$iv.invoke($composer2, Integer.valueOf(($changed$iv$iv$iv >> 6) & 14));
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            overflow3 = overflow2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Arrangement.Horizontal horizontal2 = horizontalArrangement2;
            final Arrangement.Vertical vertical2 = verticalArrangement2;
            final int i8 = maxItemsInEachRow2;
            final int i9 = maxLines2;
            final FlowRowOverflow flowRowOverflow = overflow3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt.FlowRow.1
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

                public final void invoke(Composer composer, int i10) {
                    FlowLayoutKt.FlowRow(modifier4, horizontal2, vertical2, i8, i9, flowRowOverflow, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void FlowColumn(Modifier modifier, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, int maxItemsInEachColumn, int maxLines, FlowColumnOverflow overflow, final Function3<? super FlowColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Arrangement.Vertical vertical;
        Arrangement.Horizontal horizontal;
        int maxItemsInEachColumn2;
        int maxLines2;
        FlowColumnOverflow overflow2;
        Arrangement.Vertical verticalArrangement2;
        Arrangement.Horizontal horizontalArrangement2;
        Object value$iv;
        int $i$f$cache;
        FlowLayoutOverflowState overflowState;
        Object value$iv2;
        Object value$iv$iv;
        Modifier modifier2;
        Function0 factory$iv$iv$iv;
        FlowColumnOverflow overflow3;
        Composer $composer2 = $composer.startRestartGroup(-1704849416);
        ComposerKt.sourceInformation($composer2, "C(FlowColumn)P(4,6,1,2,3,5)157@6483L65,160@6573L172,167@6791L264,173@7060L105:FlowLayout.kt#2w3rfo");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            vertical = verticalArrangement;
        } else if (($changed & 48) == 0) {
            vertical = verticalArrangement;
            $dirty |= $composer2.changed(vertical) ? 32 : 16;
        } else {
            vertical = verticalArrangement;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
            horizontal = horizontalArrangement;
        } else if (($changed & 384) == 0) {
            horizontal = horizontalArrangement;
            $dirty |= $composer2.changed(horizontal) ? 256 : 128;
        } else {
            horizontal = horizontalArrangement;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            maxItemsInEachColumn2 = maxItemsInEachColumn;
        } else if (($changed & 3072) == 0) {
            maxItemsInEachColumn2 = maxItemsInEachColumn;
            $dirty |= $composer2.changed(maxItemsInEachColumn2) ? 2048 : 1024;
        } else {
            maxItemsInEachColumn2 = maxItemsInEachColumn;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            maxLines2 = maxLines;
        } else if (($changed & 24576) == 0) {
            maxLines2 = maxLines;
            $dirty |= $composer2.changed(maxLines2) ? 16384 : 8192;
        } else {
            maxLines2 = maxLines;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            overflow2 = overflow;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            overflow2 = overflow;
            $dirty |= $composer2.changed(overflow2) ? 131072 : 65536;
        } else {
            overflow2 = overflow;
        }
        if ((i & 64) != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changedInstance(function3) ? 1048576 : 524288;
        }
        if (($dirty & 599187) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
            verticalArrangement2 = vertical;
            horizontalArrangement2 = horizontal;
            overflow3 = overflow2;
        } else {
            Modifier.Companion modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier;
            verticalArrangement2 = i3 != 0 ? Arrangement.INSTANCE.getTop() : vertical;
            horizontalArrangement2 = i4 != 0 ? Arrangement.INSTANCE.getStart() : horizontal;
            if (i5 != 0) {
                maxItemsInEachColumn2 = Integer.MAX_VALUE;
            }
            if (i6 != 0) {
                maxLines2 = Integer.MAX_VALUE;
            }
            if (i7 != 0) {
                overflow2 = FlowColumnOverflow.INSTANCE.getClip();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1704849416, $dirty, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:156)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -1515615249, "CC(remember):FlowLayout.kt#9igjgp");
            boolean invalid$iv = ($dirty & 458752) == 131072;
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = overflow2.createOverflowState$foundation_layout_release();
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            FlowLayoutOverflowState overflowState2 = (FlowLayoutOverflowState) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $dirty2 = $dirty;
            MultiContentMeasurePolicy measurePolicy = columnMeasurementMultiContentHelper(verticalArrangement2, horizontalArrangement2, maxItemsInEachColumn2, maxLines2, overflowState2, $composer2, (($dirty >> 3) & 14) | (($dirty >> 3) & 112) | (($dirty >> 3) & 896) | (($dirty >> 3) & 7168));
            ComposerKt.sourceInformationMarkerStart($composer2, -1515605194, "CC(remember):FlowLayout.kt#9igjgp");
            boolean invalid$iv2 = (($dirty2 & 3670016) == 1048576) | (($dirty2 & 458752) == 131072);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                List mutableList = new ArrayList();
                $i$f$cache = 1;
                mutableList.add(ComposableLambdaKt.composableLambdaInstance(985886665, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$FlowColumn$list$1$1
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
                        ComposerKt.sourceInformation($composer3, "C169@6950L9:FlowLayout.kt#2w3rfo");
                        if (($changed2 & 3) == 2 && $composer3.getSkipping()) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(985886665, $changed2, -1, "androidx.compose.foundation.layout.FlowColumn.<anonymous>.<anonymous> (FlowLayout.kt:169)");
                        }
                        function3.invoke(FlowColumnScopeInstance.INSTANCE, $composer3, 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
                overflowState = overflowState2;
                overflow2.addOverflowComposables$foundation_layout_release(overflowState, mutableList);
                value$iv2 = mutableList;
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
                overflowState = overflowState2;
                $i$f$cache = 1;
            }
            List list = (List) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $changed$iv = ($dirty2 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, 1399185516, "CC(Layout)P(!1,2)174@7002L62,171@6888L182:Layout.kt#80mrfh");
            Function2 content$iv$iv = LayoutKt.combineAsVirtualLayouts(list);
            ComposerKt.sourceInformationMarkerStart($composer2, -290761165, "CC(remember):Layout.kt#9igjgp");
            if (((($changed$iv & 896) ^ 384) <= 256 || !$composer2.changed(measurePolicy)) && ($changed$iv & 384) != 256) {
                $i$f$cache = 0;
            }
            Object it$iv$iv = $composer2.rememberedValue();
            if ($i$f$cache != 0 || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = MultiContentMeasurePolicyKt.createMeasurePolicy(measurePolicy);
                $composer2.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            MeasurePolicy measurePolicy$iv$iv = (MeasurePolicy) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $changed$iv$iv = $changed$iv & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier3);
            Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
            modifier2 = modifier3;
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                factory$iv$iv$iv = factory$iv$iv$iv2;
                $composer2.createNode(factory$iv$iv$iv);
            } else {
                factory$iv$iv$iv = factory$iv$iv$iv2;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer2);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            }
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            content$iv$iv.invoke($composer2, Integer.valueOf(($changed$iv$iv$iv >> 6) & 14));
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            overflow3 = overflow2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Arrangement.Vertical vertical2 = verticalArrangement2;
            final Arrangement.Horizontal horizontal2 = horizontalArrangement2;
            final int i8 = maxItemsInEachColumn2;
            final int i9 = maxLines2;
            final FlowColumnOverflow flowColumnOverflow = overflow3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt.FlowColumn.1
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

                public final void invoke(Composer composer, int i10) {
                    FlowLayoutKt.FlowColumn(modifier4, vertical2, horizontal2, i8, i9, flowColumnOverflow, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.layout.MeasurePolicy rowMeasurementHelper(androidx.compose.foundation.layout.Arrangement.Horizontal r23, androidx.compose.foundation.layout.Arrangement.Vertical r24, int r25, androidx.compose.runtime.Composer r26, int r27) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutKt.rowMeasurementHelper(androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, int, androidx.compose.runtime.Composer, int):androidx.compose.ui.layout.MeasurePolicy");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.layout.MultiContentMeasurePolicy rowMeasurementMultiContentHelper(androidx.compose.foundation.layout.Arrangement.Horizontal r23, androidx.compose.foundation.layout.Arrangement.Vertical r24, int r25, int r26, androidx.compose.foundation.layout.FlowLayoutOverflowState r27, androidx.compose.runtime.Composer r28, int r29) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutKt.rowMeasurementMultiContentHelper(androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, int, int, androidx.compose.foundation.layout.FlowLayoutOverflowState, androidx.compose.runtime.Composer, int):androidx.compose.ui.layout.MultiContentMeasurePolicy");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.layout.MeasurePolicy columnMeasurementHelper(androidx.compose.foundation.layout.Arrangement.Vertical r23, androidx.compose.foundation.layout.Arrangement.Horizontal r24, int r25, androidx.compose.runtime.Composer r26, int r27) {
        /*
            r0 = r26
            r1 = r27
            r2 = -2013098357(0xffffffff88028e8b, float:-3.928801E-34)
            java.lang.String r3 = "C(columnMeasurementHelper)P(2)443@15212L856:FlowLayout.kt#2w3rfo"
            androidx.compose.runtime.ComposerKt.sourceInformationMarkerStart(r0, r2, r3)
            boolean r3 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r3 == 0) goto L18
            r3 = -1
            java.lang.String r4 = "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:442)"
            androidx.compose.runtime.ComposerKt.traceEventStart(r2, r1, r3, r4)
        L18:
            r2 = 1837869538(0x6d8ba9e2, float:5.402974E27)
            java.lang.String r3 = "CC(remember):FlowLayout.kt#9igjgp"
            androidx.compose.runtime.ComposerKt.sourceInformationMarkerStart(r0, r2, r3)
            r2 = r1 & 14
            r2 = r2 ^ 6
            r3 = 4
            r4 = 0
            r5 = 1
            if (r2 <= r3) goto L32
            r2 = r23
            boolean r6 = r0.changed(r2)
            if (r6 != 0) goto L38
            goto L34
        L32:
            r2 = r23
        L34:
            r6 = r1 & 6
            if (r6 != r3) goto L3a
        L38:
            r3 = r5
            goto L3b
        L3a:
            r3 = r4
        L3b:
            r6 = r1 & 112(0x70, float:1.57E-43)
            r6 = r6 ^ 48
            r7 = 32
            if (r6 <= r7) goto L4c
            r15 = r24
            boolean r6 = r0.changed(r15)
            if (r6 != 0) goto L52
            goto L4e
        L4c:
            r15 = r24
        L4e:
            r6 = r1 & 48
            if (r6 != r7) goto L54
        L52:
            r6 = r5
            goto L55
        L54:
            r6 = r4
        L55:
            r3 = r3 | r6
            r6 = r1 & 896(0x380, float:1.256E-42)
            r6 = r6 ^ 384(0x180, float:5.38E-43)
            r7 = 256(0x100, float:3.59E-43)
            if (r6 <= r7) goto L67
            r14 = r25
            boolean r6 = r0.changed(r14)
            if (r6 != 0) goto L6d
            goto L69
        L67:
            r14 = r25
        L69:
            r6 = r1 & 384(0x180, float:5.38E-43)
            if (r6 != r7) goto L6e
        L6d:
            r4 = r5
        L6e:
            r3 = r3 | r4
            r4 = r26
            r5 = 0
            java.lang.Object r13 = r4.rememberedValue()
            r17 = 0
            if (r3 != 0) goto L87
            androidx.compose.runtime.Composer$Companion r6 = androidx.compose.runtime.Composer.INSTANCE
            java.lang.Object r6 = r6.getEmpty()
            if (r13 != r6) goto L84
            goto L87
        L84:
            r22 = r13
            goto Lcd
        L87:
            r18 = 0
            float r10 = r23.getSpacing()
            androidx.compose.foundation.layout.CrossAxisAlignment r11 = androidx.compose.foundation.layout.FlowLayoutKt.CROSS_AXIS_ALIGNMENT_START
            float r12 = r24.getSpacing()
            androidx.compose.foundation.layout.FlowRowOverflow$Companion r6 = androidx.compose.foundation.layout.FlowRowOverflow.INSTANCE
            androidx.compose.foundation.layout.FlowRowOverflow r6 = r6.getVisible()
            androidx.compose.foundation.layout.FlowLayoutOverflowState r16 = r6.createOverflowState$foundation_layout_release()
            androidx.compose.foundation.layout.FlowMeasurePolicy r19 = new androidx.compose.foundation.layout.FlowMeasurePolicy
            r7 = 0
            r20 = 2147483647(0x7fffffff, float:NaN)
            r21 = 0
            r6 = r19
            r8 = r24
            r9 = r23
            r22 = r13
            r13 = r25
            r14 = r20
            r15 = r16
            r16 = r21
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            androidx.compose.foundation.layout.FlowLayoutKt$columnMeasurementHelper$1$1 r7 = new androidx.compose.foundation.layout.FlowLayoutKt$columnMeasurementHelper$1$1
            r7.<init>()
            androidx.compose.ui.layout.MeasurePolicy r7 = (androidx.compose.ui.layout.MeasurePolicy) r7
            r13 = r7
            r4.updateRememberedValue(r13)
        Lcd:
            androidx.compose.ui.layout.MeasurePolicy r13 = (androidx.compose.ui.layout.MeasurePolicy) r13
            androidx.compose.runtime.ComposerKt.sourceInformationMarkerEnd(r26)
            boolean r3 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r3 == 0) goto Ldd
            androidx.compose.runtime.ComposerKt.traceEventEnd()
        Ldd:
            androidx.compose.runtime.ComposerKt.sourceInformationMarkerEnd(r26)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutKt.columnMeasurementHelper(androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, int, androidx.compose.runtime.Composer, int):androidx.compose.ui.layout.MeasurePolicy");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.layout.MultiContentMeasurePolicy columnMeasurementMultiContentHelper(androidx.compose.foundation.layout.Arrangement.Vertical r23, androidx.compose.foundation.layout.Arrangement.Horizontal r24, int r25, int r26, androidx.compose.foundation.layout.FlowLayoutOverflowState r27, androidx.compose.runtime.Composer r28, int r29) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutKt.columnMeasurementMultiContentHelper(androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, int, int, androidx.compose.foundation.layout.FlowLayoutOverflowState, androidx.compose.runtime.Composer, int):androidx.compose.ui.layout.MultiContentMeasurePolicy");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int maxIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, int crossAxisAvailable, int mainAxisSpacing, int maxItemsInMainAxis) {
        int fixedSpace = 0;
        int currentFixedSpace = 0;
        int lastBreak = 0;
        int size = list.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list.get(index$iv);
            IntrinsicMeasurable child = (IntrinsicMeasurable) item$iv;
            int index = index$iv;
            int size2 = function3.invoke(child, Integer.valueOf(index), Integer.valueOf(crossAxisAvailable)).intValue() + mainAxisSpacing;
            if ((index + 1) - lastBreak == maxItemsInMainAxis || index + 1 == list.size()) {
                lastBreak = index;
                fixedSpace = Math.max(fixedSpace, (currentFixedSpace + size2) - mainAxisSpacing);
                currentFixedSpace = 0;
            } else {
                currentFixedSpace += size2;
            }
        }
        return fixedSpace;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v5, types: [kotlin.collections.IntIterator] */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlin.collections.IntIterator] */
    public static final int minIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function32, int crossAxisAvailable, int mainAxisSpacing, int crossAxisSpacing, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int[] mainAxisSizes = new int[size];
        for (int i = 0; i < size; i++) {
            mainAxisSizes[i] = 0;
        }
        int size2 = list.size();
        int[] crossAxisSizes = new int[size2];
        for (int i2 = 0; i2 < size2; i2++) {
            crossAxisSizes[i2] = 0;
        }
        int size3 = list.size();
        for (int index = 0; index < size3; index++) {
            IntrinsicMeasurable child = list.get(index);
            int mainAxisItemSize = function3.invoke(child, Integer.valueOf(index), Integer.valueOf(crossAxisAvailable)).intValue();
            mainAxisSizes[index] = mainAxisItemSize;
            crossAxisSizes[index] = function32.invoke(child, Integer.valueOf(index), Integer.valueOf(mainAxisItemSize)).intValue();
        }
        int maxItemsThatCanBeShown = Integer.MAX_VALUE;
        if (maxLines != Integer.MAX_VALUE && maxItemsInMainAxis != Integer.MAX_VALUE) {
            maxItemsThatCanBeShown = maxItemsInMainAxis * maxLines;
        }
        boolean mustHaveEllipsis = (maxItemsThatCanBeShown >= list.size() || !(overflow.getType$foundation_layout_release() == FlowLayoutOverflow.OverflowType.ExpandIndicator || overflow.getType$foundation_layout_release() == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) ? maxItemsThatCanBeShown >= list.size() && maxLines >= overflow.getMinLinesToShowCollapse$foundation_layout_release() && overflow.getType$foundation_layout_release() == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator : true;
        int maxItemsThatCanBeShown2 = Math.min(maxItemsThatCanBeShown - (mustHaveEllipsis ? 1 : 0), list.size());
        int $this$minIntrinsicMainAxisSize_u24lambda_u249 = ArraysKt.sum(mainAxisSizes);
        int maxMainAxisSize = $this$minIntrinsicMainAxisSize_u24lambda_u249 + ((list.size() - 1) * mainAxisSpacing);
        int mainAxisUsed = maxMainAxisSize;
        if (crossAxisSizes.length == 0) {
            throw new NoSuchElementException();
        }
        int crossAxisUsed = crossAxisSizes[0];
        ?? it = new IntRange(1, ArraysKt.getLastIndex(crossAxisSizes)).iterator();
        while (it.hasNext()) {
            int it2 = crossAxisSizes[it.nextInt()];
            if (crossAxisUsed < it2) {
                crossAxisUsed = it2;
            }
        }
        if (mainAxisSizes.length == 0) {
            throw new NoSuchElementException();
        }
        int low = mainAxisSizes[0];
        ?? it3 = new IntRange(1, ArraysKt.getLastIndex(mainAxisSizes)).iterator();
        while (it3.hasNext()) {
            int it4 = mainAxisSizes[it3.nextInt()];
            if (low < it4) {
                low = it4;
            }
        }
        int low2 = low;
        int crossAxisUsed2 = crossAxisUsed;
        int high = maxMainAxisSize;
        while (low2 <= high) {
            if (crossAxisUsed2 == crossAxisAvailable) {
                return mainAxisUsed;
            }
            int mid = (low2 + high) / 2;
            int high2 = high;
            int low3 = low2;
            int maxItemsThatCanBeShown3 = maxItemsThatCanBeShown2;
            long pair = intrinsicCrossAxisSize(list, mainAxisSizes, crossAxisSizes, mid, mainAxisSpacing, crossAxisSpacing, maxItemsInMainAxis, maxLines, overflow);
            crossAxisUsed2 = IntIntPair.m28getFirstimpl(pair);
            int itemShown = IntIntPair.m29getSecondimpl(pair);
            if (crossAxisUsed2 > crossAxisAvailable || itemShown < maxItemsThatCanBeShown3) {
                low2 = mid + 1;
                if (low2 > high2) {
                    return low2;
                }
                high = high2;
                maxItemsThatCanBeShown2 = maxItemsThatCanBeShown3;
                mainAxisUsed = mid;
            } else {
                if (crossAxisUsed2 >= crossAxisAvailable) {
                    return mid;
                }
                high = mid - 1;
                maxItemsThatCanBeShown2 = maxItemsThatCanBeShown3;
                mainAxisUsed = mid;
                low2 = low3;
            }
        }
        return mainAxisUsed;
    }

    private static final long intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, final int[] mainAxisSizes, final int[] crossAxisSizes, int mainAxisAvailable, int mainAxisSpacing, int crossAxisSpacing, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        return intrinsicCrossAxisSize(list, new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt.intrinsicCrossAxisSize.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable $this$intrinsicCrossAxisSize, int index, int i) {
                return Integer.valueOf(mainAxisSizes[index]);
            }
        }, new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt.intrinsicCrossAxisSize.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable $this$intrinsicCrossAxisSize, int index, int i) {
                return Integer.valueOf(crossAxisSizes[index]);
            }
        }, mainAxisAvailable, mainAxisSpacing, crossAxisSpacing, maxItemsInMainAxis, maxLines, overflow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function32, int mainAxisAvailable, int mainAxisSpacing, int crossAxisSpacing, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        int nextMainAxisSize;
        List<? extends IntrinsicMeasurable> list2 = list;
        if (list.isEmpty()) {
            return IntIntPair.m24constructorimpl(0, 0);
        }
        FlowLayoutBuildingBlocks buildingBlocks = new FlowLayoutBuildingBlocks(maxItemsInMainAxis, overflow, OrientationIndependentConstraints.m648constructorimpl(0, mainAxisAvailable, 0, Integer.MAX_VALUE), maxLines, mainAxisSpacing, crossAxisSpacing, null);
        IntrinsicMeasurable nextChild = (IntrinsicMeasurable) CollectionsKt.getOrNull(list2, 0);
        int nextCrossAxisSize = nextChild != null ? function32.invoke(nextChild, 0, Integer.valueOf(mainAxisAvailable)).intValue() : 0;
        int nextMainAxisSize2 = nextChild != null ? function3.invoke(nextChild, 0, Integer.valueOf(nextCrossAxisSize)).intValue() : 0;
        int remaining = mainAxisAvailable;
        int currentCrossAxisSize = 0;
        int totalCrossAxisSize = 0;
        int lastBreak = 0;
        int lineIndex = 0;
        if (buildingBlocks.m604getWrapInfoOpUlnko(list.size() > 1, 0, IntIntPair.m24constructorimpl(remaining, Integer.MAX_VALUE), nextChild == null ? null : IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(nextMainAxisSize2, nextCrossAxisSize)), 0, 0, 0, false, false).getIsLastItemInContainer()) {
            IntIntPair intIntPairM609ellipsisSizeF35zmw$foundation_layout_release = overflow.m609ellipsisSizeF35zmw$foundation_layout_release(nextChild != null, 0, 0);
            int size = intIntPairM609ellipsisSizeF35zmw$foundation_layout_release != null ? IntIntPair.m29getSecondimpl(intIntPairM609ellipsisSizeF35zmw$foundation_layout_release.getPackedValue()) : 0;
            return IntIntPair.m24constructorimpl(size, 0);
        }
        int noOfItemsShown = 0;
        int size2 = list.size();
        int index = 0;
        while (true) {
            if (index >= size2) {
                nextMainAxisSize = noOfItemsShown;
                break;
            }
            int childCrossAxisSize = nextCrossAxisSize;
            int childMainAxisSize = nextMainAxisSize2;
            remaining -= childMainAxisSize;
            noOfItemsShown = index + 1;
            currentCrossAxisSize = Math.max(currentCrossAxisSize, childCrossAxisSize);
            IntrinsicMeasurable nextChild2 = (IntrinsicMeasurable) CollectionsKt.getOrNull(list2, index + 1);
            nextCrossAxisSize = nextChild2 != null ? function32.invoke(nextChild2, Integer.valueOf(index + 1), Integer.valueOf(mainAxisAvailable)).intValue() : 0;
            int nextMainAxisSize3 = nextChild2 != null ? function3.invoke(nextChild2, Integer.valueOf(index + 1), Integer.valueOf(nextCrossAxisSize)).intValue() + mainAxisSpacing : 0;
            FlowLayoutBuildingBlocks.WrapInfo wrapInfo = buildingBlocks.m604getWrapInfoOpUlnko(index + 2 < list.size(), (index + 1) - lastBreak, IntIntPair.m24constructorimpl(remaining, Integer.MAX_VALUE), nextChild2 == null ? null : IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(nextMainAxisSize3, nextCrossAxisSize)), lineIndex, totalCrossAxisSize, currentCrossAxisSize, false, false);
            if (wrapInfo.getIsLastItemInLine()) {
                totalCrossAxisSize += currentCrossAxisSize + crossAxisSpacing;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo ellipsisWrapInfo = buildingBlocks.getWrapEllipsisInfo(wrapInfo, nextChild2 != null, lineIndex, totalCrossAxisSize, remaining, (index + 1) - lastBreak);
                currentCrossAxisSize = 0;
                remaining = mainAxisAvailable;
                lastBreak = index + 1;
                nextMainAxisSize3 -= mainAxisSpacing;
                lineIndex++;
                if (wrapInfo.getIsLastItemInContainer()) {
                    if (ellipsisWrapInfo != null) {
                        long it = ellipsisWrapInfo.getEllipsisSize();
                        if (!ellipsisWrapInfo.getPlaceEllipsisOnLastContentLine()) {
                            totalCrossAxisSize += IntIntPair.m29getSecondimpl(it) + crossAxisSpacing;
                        }
                    }
                    nextMainAxisSize = noOfItemsShown;
                }
            }
            nextMainAxisSize2 = nextMainAxisSize3;
            index++;
            list2 = list;
        }
        return IntIntPair.m24constructorimpl(totalCrossAxisSize - crossAxisSpacing, nextMainAxisSize);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: breakDownItems-di9J0FM, reason: not valid java name */
    public static final MeasureResult m606breakDownItemsdi9J0FM(MeasureScope $this$breakDownItems_u2ddi9J0FM, FlowLineMeasurePolicy measurePolicy, Iterator<? extends Measurable> it, float mainAxisSpacingDp, float crossAxisSpacingDp, long constraints, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        int leftOverCrossAxis;
        int leftOver;
        FlowLineInfo lineInfo;
        FlowLineInfo lineInfo2;
        MutableVector items;
        final Ref.ObjectRef placeableItem;
        IntIntPair intIntPairM21boximpl;
        int mainAxisTotalSize;
        int spacing;
        long measureConstraints;
        FlowLineInfo lineInfo3;
        MutableIntObjectMap placeables;
        List measurables;
        int mainAxisTotalSize2;
        int mainAxisSize;
        int crossAxisSize;
        int crossAxisSpacing;
        List measurables2;
        MutableIntObjectMap placeables2;
        MutableIntList crossAxisSizes;
        int leftOverCrossAxis2;
        long measureConstraints2;
        IntIntPair intIntPairM21boximpl2;
        int leftOverCrossAxis3;
        Measurable measurable;
        IntIntPair intIntPairM21boximpl3;
        Object nextSize;
        Ref.ObjectRef placeableItem2;
        MutableIntList endBreakLineList;
        MutableIntList crossAxisSizes2;
        int mainAxisMax;
        int leftOverCrossAxis4;
        MutableIntList crossAxisSizes3;
        int iCoerceAtLeast;
        int iCoerceAtLeast2;
        FlowLineMeasurePolicy flowLineMeasurePolicy = measurePolicy;
        MutableVector items2 = new MutableVector(new MeasureResult[16], 0);
        int mainAxisMax2 = Constraints.m6438getMaxWidthimpl(constraints);
        int iM6440getMinWidthimpl = Constraints.m6440getMinWidthimpl(constraints);
        int iM6437getMaxHeightimpl = Constraints.m6437getMaxHeightimpl(constraints);
        MutableIntObjectMap placeables3 = IntObjectMapKt.mutableIntObjectMapOf();
        List measurables3 = new ArrayList();
        int spacing2 = (int) Math.ceil($this$breakDownItems_u2ddi9J0FM.mo373toPx0680j_4(mainAxisSpacingDp));
        int crossAxisSpacing2 = (int) Math.ceil($this$breakDownItems_u2ddi9J0FM.mo373toPx0680j_4(crossAxisSpacingDp));
        long subsetConstraints = OrientationIndependentConstraints.m648constructorimpl(0, mainAxisMax2, 0, iM6437getMaxHeightimpl);
        List measurables4 = measurables3;
        long measureConstraints3 = OrientationIndependentConstraints.m663toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m651copyyUG9Ft0(subsetConstraints, (10 & 1) != 0 ? Constraints.m6440getMinWidthimpl(subsetConstraints) : 0, (10 & 2) != 0 ? Constraints.m6438getMaxWidthimpl(subsetConstraints) : 0, (10 & 4) != 0 ? Constraints.m6439getMinHeightimpl(subsetConstraints) : 0, (10 & 8) != 0 ? Constraints.m6437getMaxHeightimpl(subsetConstraints) : 0), measurePolicy.isHorizontal() ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
        Ref.ObjectRef placeableItem3 = new Ref.ObjectRef();
        int lineIndex = 0;
        if (it instanceof ContextualFlowItemIterator) {
            leftOver = mainAxisMax2;
            leftOverCrossAxis = iM6437getMaxHeightimpl;
            lineInfo = new FlowLineInfo(0, 0, $this$breakDownItems_u2ddi9J0FM.mo370toDpu2uoSUM(leftOver), $this$breakDownItems_u2ddi9J0FM.mo370toDpu2uoSUM(leftOverCrossAxis), null);
        } else {
            leftOverCrossAxis = iM6437getMaxHeightimpl;
            leftOver = mainAxisMax2;
            lineInfo = null;
        }
        boolean $this$breakDownItems_di9J0FM_u24lambda_u2413 = it.hasNext();
        Measurable measurableSafeNext = !$this$breakDownItems_di9J0FM_u24lambda_u2413 ? null : safeNext(it, lineInfo);
        if (measurableSafeNext == null) {
            lineInfo2 = lineInfo;
            items = items2;
            placeableItem = placeableItem3;
            intIntPairM21boximpl = null;
        } else {
            lineInfo2 = lineInfo;
            items = items2;
            placeableItem = placeableItem3;
            intIntPairM21boximpl = IntIntPair.m21boximpl(m607measureAndCacherqJ1uqs(measurableSafeNext, flowLineMeasurePolicy, measureConstraints3, new Function1<Placeable, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$breakDownItems$nextSize$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable placeable) {
                    invoke2(placeable);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable placeable) {
                    placeableItem.element = placeable;
                }
            }));
        }
        IntIntPair intIntPair = intIntPairM21boximpl;
        Integer nextMainAxisSize = intIntPair != null ? Integer.valueOf(IntIntPair.m28getFirstimpl(intIntPair.getPackedValue())) : null;
        Integer nextCrossAxisSize = intIntPair != null ? Integer.valueOf(IntIntPair.m29getSecondimpl(intIntPair.getPackedValue())) : null;
        int crossAxisMax = iM6437getMaxHeightimpl;
        MutableIntList endBreakLineList2 = new MutableIntList(0, 1, null);
        MutableIntList crossAxisSizes4 = new MutableIntList(0, 1, null);
        FlowLineInfo lineInfo4 = lineInfo2;
        FlowLayoutBuildingBlocks buildingBlocks = new FlowLayoutBuildingBlocks(maxItemsInMainAxis, overflow, constraints, maxLines, spacing2, crossAxisSpacing2, null);
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo = null;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfo = buildingBlocks.m604getWrapInfoOpUlnko(it.hasNext(), 0, IntIntPair.m24constructorimpl(leftOver, leftOverCrossAxis), intIntPair, 0, 0, 0, false, false);
        if (wrapInfo.getIsLastItemInContainer()) {
            wrapEllipsisInfo = buildingBlocks.getWrapEllipsisInfo(wrapInfo, intIntPair != null, -1, 0, leftOver, 0);
        }
        int leftOverCrossAxis5 = leftOverCrossAxis;
        int currentLineMainAxisSize = 0;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo2 = wrapEllipsisInfo;
        int leftOverCrossAxis6 = 0;
        MutableIntList endBreakLineList3 = endBreakLineList2;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfo2 = wrapInfo;
        int currentLineCrossAxisSize = 0;
        int startBreakLineIndex = 0;
        int crossAxisTotalSize = 0;
        int startBreakLineIndex2 = leftOver;
        Measurable measurable2 = measurableSafeNext;
        MutableIntList crossAxisSizes5 = crossAxisSizes4;
        int currentLineMainAxisSize2 = iM6440getMinWidthimpl;
        Integer nextMainAxisSize2 = nextMainAxisSize;
        while (!wrapInfo2.getIsLastItemInContainer() && measurable2 != null) {
            Intrinsics.checkNotNull(nextMainAxisSize2);
            int itemMainAxisSize = nextMainAxisSize2.intValue();
            Intrinsics.checkNotNull(nextCrossAxisSize);
            int mainAxisMax3 = mainAxisMax2;
            int mainAxisTotalSize3 = currentLineMainAxisSize2;
            int mainAxisTotalSize4 = currentLineMainAxisSize + itemMainAxisSize;
            currentLineCrossAxisSize = Math.max(currentLineCrossAxisSize, nextCrossAxisSize.intValue());
            int itemCrossAxisSize = startBreakLineIndex2 - itemMainAxisSize;
            int currentLineMainAxisSize3 = mainAxisTotalSize4;
            int currentLineMainAxisSize4 = leftOverCrossAxis6 + 1;
            long measureConstraints4 = measureConstraints3;
            overflow.setItemShown$foundation_layout_release(currentLineMainAxisSize4);
            List measurables5 = measurables4;
            measurables5.add(measurable2);
            placeables3.set(leftOverCrossAxis6, placeableItem.element);
            int nextIndexInLine = (leftOverCrossAxis6 + 1) - startBreakLineIndex;
            boolean willFitLine = nextIndexInLine < maxItemsInMainAxis;
            if (lineInfo4 != null) {
                int i = willFitLine ? lineIndex : lineIndex + 1;
                int i2 = willFitLine ? nextIndexInLine : 0;
                if (willFitLine) {
                    placeables2 = placeables3;
                    measurables2 = measurables5;
                    iCoerceAtLeast = RangesKt.coerceAtLeast(itemCrossAxisSize - spacing2, 0);
                    crossAxisSizes3 = crossAxisSizes5;
                } else {
                    measurables2 = measurables5;
                    placeables2 = placeables3;
                    crossAxisSizes3 = crossAxisSizes5;
                    iCoerceAtLeast = mainAxisMax3;
                }
                float f = $this$breakDownItems_u2ddi9J0FM.mo370toDpu2uoSUM(iCoerceAtLeast);
                if (willFitLine) {
                    crossAxisSpacing = crossAxisSpacing2;
                    crossAxisSizes = crossAxisSizes3;
                    iCoerceAtLeast2 = leftOverCrossAxis5;
                } else {
                    crossAxisSizes = crossAxisSizes3;
                    crossAxisSpacing = crossAxisSpacing2;
                    iCoerceAtLeast2 = RangesKt.coerceAtLeast((leftOverCrossAxis5 - currentLineCrossAxisSize) - crossAxisSpacing2, 0);
                }
                lineInfo4.m617update4j6BHR0$foundation_layout_release(i, i2, f, $this$breakDownItems_u2ddi9J0FM.mo370toDpu2uoSUM(iCoerceAtLeast2));
            } else {
                crossAxisSpacing = crossAxisSpacing2;
                measurables2 = measurables5;
                placeables2 = placeables3;
                crossAxisSizes = crossAxisSizes5;
            }
            boolean $this$breakDownItems_di9J0FM_u24lambda_u2415 = it.hasNext();
            Measurable measurableSafeNext2 = !$this$breakDownItems_di9J0FM_u24lambda_u2415 ? null : safeNext(it, lineInfo4);
            placeableItem.element = null;
            if (measurableSafeNext2 != null) {
                leftOverCrossAxis2 = leftOverCrossAxis5;
                measureConstraints2 = measureConstraints4;
                intIntPairM21boximpl2 = IntIntPair.m21boximpl(m607measureAndCacherqJ1uqs(measurableSafeNext2, flowLineMeasurePolicy, measureConstraints2, new Function1<Placeable, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$breakDownItems$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable placeable) {
                        invoke2(placeable);
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Placeable placeable) {
                        placeableItem.element = placeable;
                    }
                }));
            } else {
                leftOverCrossAxis2 = leftOverCrossAxis5;
                measureConstraints2 = measureConstraints4;
                intIntPairM21boximpl2 = null;
            }
            Integer nextMainAxisSize3 = intIntPairM21boximpl2 != null ? Integer.valueOf(IntIntPair.m28getFirstimpl(intIntPairM21boximpl2.getPackedValue()) + spacing2) : null;
            nextCrossAxisSize = intIntPairM21boximpl2 != null ? Integer.valueOf(IntIntPair.m29getSecondimpl(intIntPairM21boximpl2.getPackedValue())) : null;
            boolean zHasNext = it.hasNext();
            int leftOverCrossAxis7 = leftOverCrossAxis2;
            long jM24constructorimpl = IntIntPair.m24constructorimpl(itemCrossAxisSize, leftOverCrossAxis7);
            if (intIntPairM21boximpl2 == null) {
                leftOverCrossAxis3 = leftOverCrossAxis7;
                measurable = measurableSafeNext2;
                intIntPairM21boximpl3 = null;
            } else {
                Intrinsics.checkNotNull(nextMainAxisSize3);
                leftOverCrossAxis3 = leftOverCrossAxis7;
                int leftOverCrossAxis8 = nextMainAxisSize3.intValue();
                Intrinsics.checkNotNull(nextCrossAxisSize);
                measurable = measurableSafeNext2;
                intIntPairM21boximpl3 = IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(leftOverCrossAxis8, nextCrossAxisSize.intValue()));
            }
            FlowLayoutBuildingBlocks.WrapInfo wrapInfo3 = buildingBlocks.m604getWrapInfoOpUlnko(zHasNext, nextIndexInLine, jM24constructorimpl, intIntPairM21boximpl3, lineIndex, crossAxisTotalSize, currentLineCrossAxisSize, false, false);
            if (wrapInfo3.getIsLastItemInLine()) {
                placeableItem2 = placeableItem;
                mainAxisMax = mainAxisMax3;
                int mainAxisTotalSize5 = Math.min(Math.max(mainAxisTotalSize3, currentLineMainAxisSize3), mainAxisMax);
                int crossAxisTotalSize2 = crossAxisTotalSize + currentLineCrossAxisSize;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo3 = buildingBlocks.getWrapEllipsisInfo(wrapInfo3, intIntPairM21boximpl2 != null, lineIndex, crossAxisTotalSize2, itemCrossAxisSize, (leftOverCrossAxis6 + 1) - startBreakLineIndex);
                crossAxisSizes2 = crossAxisSizes;
                crossAxisSizes2.add(currentLineCrossAxisSize);
                leftOverCrossAxis4 = (crossAxisMax - crossAxisTotalSize2) - crossAxisSpacing;
                int startBreakLineIndex3 = leftOverCrossAxis6 + 1;
                int mainAxisTotalSize6 = leftOverCrossAxis6 + 1;
                nextSize = intIntPairM21boximpl2;
                endBreakLineList = endBreakLineList3;
                endBreakLineList.add(mainAxisTotalSize6);
                currentLineCrossAxisSize = 0;
                nextMainAxisSize3 = nextMainAxisSize3 != null ? Integer.valueOf(nextMainAxisSize3.intValue() - spacing2) : null;
                lineIndex++;
                currentLineMainAxisSize3 = 0;
                wrapEllipsisInfo2 = wrapEllipsisInfo3;
                startBreakLineIndex = startBreakLineIndex3;
                currentLineMainAxisSize2 = mainAxisTotalSize5;
                crossAxisTotalSize = crossAxisTotalSize2 + crossAxisSpacing;
                startBreakLineIndex2 = mainAxisMax;
            } else {
                nextSize = intIntPairM21boximpl2;
                placeableItem2 = placeableItem;
                currentLineMainAxisSize2 = mainAxisTotalSize3;
                endBreakLineList = endBreakLineList3;
                crossAxisSizes2 = crossAxisSizes;
                mainAxisMax = mainAxisMax3;
                startBreakLineIndex2 = itemCrossAxisSize;
                leftOverCrossAxis4 = leftOverCrossAxis3;
            }
            leftOverCrossAxis6++;
            endBreakLineList3 = endBreakLineList;
            wrapInfo2 = wrapInfo3;
            crossAxisSizes5 = crossAxisSizes2;
            measureConstraints3 = measureConstraints2;
            mainAxisMax2 = mainAxisMax;
            leftOverCrossAxis5 = leftOverCrossAxis4;
            placeableItem = placeableItem2;
            currentLineMainAxisSize = currentLineMainAxisSize3;
            placeables3 = placeables2;
            measurables4 = measurables2;
            crossAxisSpacing2 = crossAxisSpacing;
            nextMainAxisSize2 = nextMainAxisSize3;
            measurable2 = measurable;
        }
        int crossAxisSpacing3 = crossAxisSpacing2;
        Object measurable3 = measurable2;
        MutableIntObjectMap placeables4 = placeables3;
        Ref.ObjectRef placeableItem4 = placeableItem;
        List measurables6 = measurables4;
        MutableIntList endBreakLineList4 = endBreakLineList3;
        long measureConstraints5 = measureConstraints3;
        int mainAxisMax4 = mainAxisMax2;
        MutableIntList crossAxisSizes6 = crossAxisSizes5;
        if (wrapEllipsisInfo2 != null) {
            FlowLayoutBuildingBlocks.WrapEllipsisInfo it2 = wrapEllipsisInfo2;
            measureConstraints = measureConstraints5;
            measurables = measurables6;
            measurables.add(it2.getEllipsis());
            lineInfo3 = lineInfo4;
            placeables = placeables4;
            placeables.set(measurables.size() - 1, it2.getPlaceable());
            mainAxisTotalSize = currentLineMainAxisSize2;
            int mainAxisTotalSize7 = endBreakLineList4._size;
            int lineIndex2 = mainAxisTotalSize7 - 1;
            if (it2.getPlaceEllipsisOnLastContentLine()) {
                int lastIndex = endBreakLineList4.getSize() - 1;
                int lastLineCrossAxis = crossAxisSizes6.get(lineIndex2);
                spacing = spacing2;
                crossAxisSizes6.set(lineIndex2, Math.max(lastLineCrossAxis, IntIntPair.m29getSecondimpl(it2.getEllipsisSize())));
                endBreakLineList4.set(lastIndex, endBreakLineList4.last() + 1);
            } else {
                spacing = spacing2;
                crossAxisSizes6.add(IntIntPair.m29getSecondimpl(it2.getEllipsisSize()));
                endBreakLineList4.add(endBreakLineList4.last() + 1);
            }
        } else {
            mainAxisTotalSize = currentLineMainAxisSize2;
            spacing = spacing2;
            measureConstraints = measureConstraints5;
            lineInfo3 = lineInfo4;
            placeables = placeables4;
            measurables = measurables6;
        }
        int size = measurables.size();
        Placeable[] placeableArr = new Placeable[size];
        for (int i3 = 0; i3 < size; i3++) {
            placeableArr[i3] = placeables.get(i3);
        }
        long measureConstraints6 = measureConstraints;
        int size2 = endBreakLineList4.getSize();
        int[] crossAxisOffsets = new int[size2];
        for (int i4 = 0; i4 < size2; i4++) {
            crossAxisOffsets[i4] = 0;
        }
        int size3 = endBreakLineList4.getSize();
        int[] crossAxisSizesArray = new int[size3];
        for (int i5 = 0; i5 < size3; i5++) {
            crossAxisSizesArray[i5] = 0;
        }
        MutableIntList this_$iv = endBreakLineList4;
        int[] content$iv = this_$iv.content;
        int mainAxisTotalSize8 = this_$iv._size;
        int crossAxisTotalSize3 = 0;
        int i6 = mainAxisTotalSize;
        int startIndex = 0;
        int startIndex2 = 0;
        int i$iv = i6;
        while (startIndex2 < mainAxisTotalSize8) {
            int endIndex = content$iv[startIndex2];
            int currentLineIndex = startIndex2;
            int crossAxisSize2 = crossAxisSizes6.get(currentLineIndex);
            int i$iv2 = startIndex2;
            int crossAxisSpacing4 = crossAxisSpacing3;
            int mainAxisTotalSize9 = i$iv;
            Object measurable4 = measurable3;
            int i7 = mainAxisTotalSize8;
            int index = leftOverCrossAxis6;
            long measureConstraints7 = measureConstraints6;
            int[] content$iv2 = content$iv;
            MutableIntList crossAxisSizes7 = crossAxisSizes6;
            List measurables7 = measurables;
            MutableIntObjectMap placeables5 = placeables;
            FlowLineInfo lineInfo5 = lineInfo3;
            int crossAxisMax2 = crossAxisMax;
            IntList this_$iv2 = this_$iv;
            int mainAxisMax5 = mainAxisMax4;
            MutableVector items3 = items;
            Ref.ObjectRef placeableItem5 = placeableItem4;
            MeasureResult result = RowColumnMeasurePolicyKt.measure(flowLineMeasurePolicy, i$iv, Constraints.m6439getMinHeightimpl(subsetConstraints), Constraints.m6438getMaxWidthimpl(subsetConstraints), crossAxisSize2, spacing, $this$breakDownItems_u2ddi9J0FM, measurables, placeableArr, startIndex, endIndex, crossAxisOffsets, currentLineIndex);
            if (measurePolicy.isHorizontal()) {
                mainAxisSize = result.getWidth();
                crossAxisSize = result.getHeight();
            } else {
                mainAxisSize = result.getHeight();
                crossAxisSize = result.getWidth();
            }
            crossAxisSizesArray[currentLineIndex] = crossAxisSize;
            crossAxisTotalSize3 += crossAxisSize;
            int mainAxisTotalSize10 = Math.max(mainAxisTotalSize9, mainAxisSize);
            items3.add(result);
            startIndex = endIndex;
            startIndex2 = i$iv2 + 1;
            flowLineMeasurePolicy = measurePolicy;
            i$iv = mainAxisTotalSize10;
            this_$iv = this_$iv2;
            content$iv = content$iv2;
            placeableItem4 = placeableItem5;
            mainAxisTotalSize8 = i7;
            leftOverCrossAxis6 = index;
            measurables = measurables7;
            measureConstraints6 = measureConstraints7;
            measurable3 = measurable4;
            crossAxisSizes6 = crossAxisSizes7;
            placeables = placeables5;
            crossAxisMax = crossAxisMax2;
            lineInfo3 = lineInfo5;
            mainAxisMax4 = mainAxisMax5;
            items = items3;
            crossAxisSpacing3 = crossAxisSpacing4;
        }
        int mainAxisTotalSize11 = i$iv;
        MutableVector items4 = items;
        if (!items4.isEmpty()) {
            mainAxisTotalSize2 = mainAxisTotalSize11;
        } else {
            mainAxisTotalSize2 = 0;
            crossAxisTotalSize3 = 0;
        }
        return m608placeHelperBmaY500($this$breakDownItems_u2ddi9J0FM, constraints, mainAxisTotalSize2, crossAxisTotalSize3, crossAxisSizesArray, items4, measurePolicy, crossAxisOffsets);
    }

    private static final Measurable safeNext(Iterator<? extends Measurable> it, FlowLineInfo info) {
        Measurable next;
        try {
            if (it instanceof ContextualFlowItemIterator) {
                Intrinsics.checkNotNull(info);
                next = ((ContextualFlowItemIterator) it).getNext$foundation_layout_release(info);
            } else {
                next = it.next();
            }
            return next;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    public static final int mainAxisMin(IntrinsicMeasurable $this$mainAxisMin, boolean isHorizontal, int crossAxisSize) {
        if (isHorizontal) {
            return $this$mainAxisMin.minIntrinsicWidth(crossAxisSize);
        }
        return $this$mainAxisMin.minIntrinsicHeight(crossAxisSize);
    }

    public static final int crossAxisMin(IntrinsicMeasurable $this$crossAxisMin, boolean isHorizontal, int mainAxisSize) {
        if (isHorizontal) {
            return $this$crossAxisMin.minIntrinsicHeight(mainAxisSize);
        }
        return $this$crossAxisMin.minIntrinsicWidth(mainAxisSize);
    }

    public static final CrossAxisAlignment getCROSS_AXIS_ALIGNMENT_TOP() {
        return CROSS_AXIS_ALIGNMENT_TOP;
    }

    public static final CrossAxisAlignment getCROSS_AXIS_ALIGNMENT_START() {
        return CROSS_AXIS_ALIGNMENT_START;
    }

    /* renamed from: measureAndCache-rqJ1uqs, reason: not valid java name */
    public static final long m607measureAndCacherqJ1uqs(Measurable $this$measureAndCache_u2drqJ1uqs, FlowLineMeasurePolicy measurePolicy, long constraints, Function1<? super Placeable, Unit> function1) {
        FlowLayoutData flowLayoutData;
        if (RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData($this$measureAndCache_u2drqJ1uqs)) == 0.0f) {
            RowColumnParentData rowColumnParentData = RowColumnImplKt.getRowColumnParentData($this$measureAndCache_u2drqJ1uqs);
            if (((rowColumnParentData == null || (flowLayoutData = rowColumnParentData.getFlowLayoutData()) == null) ? null : Float.valueOf(flowLayoutData.getFillCrossAxisFraction())) == null) {
                Placeable placeable = $this$measureAndCache_u2drqJ1uqs.mo5339measureBRTryo0(constraints);
                function1.invoke(placeable);
                int mainAxis = measurePolicy.mainAxisSize(placeable);
                int crossAxis = measurePolicy.crossAxisSize(placeable);
                return IntIntPair.m24constructorimpl(mainAxis, crossAxis);
            }
        }
        int mainAxis2 = mainAxisMin($this$measureAndCache_u2drqJ1uqs, measurePolicy.isHorizontal(), Integer.MAX_VALUE);
        int crossAxis2 = crossAxisMin($this$measureAndCache_u2drqJ1uqs, measurePolicy.isHorizontal(), mainAxis2);
        return IntIntPair.m24constructorimpl(mainAxis2, crossAxis2);
    }

    /* renamed from: placeHelper-BmaY500, reason: not valid java name */
    public static final MeasureResult m608placeHelperBmaY500(MeasureScope $this$placeHelper_u2dBmaY500, long constraints, int mainAxisTotalSize, int crossAxisTotalSize, int[] crossAxisSizes, final MutableVector<MeasureResult> mutableVector, FlowLineMeasurePolicy measureHelper, int[] outPosition) {
        int totalCrossAxisSize;
        int layoutWidth;
        int layoutHeight;
        boolean isHorizontal = measureHelper.isHorizontal();
        Arrangement.Vertical verticalArrangement = measureHelper.getVerticalArrangement();
        Arrangement.Horizontal horizontalArrangement = measureHelper.getHorizontalArrangement();
        if (isHorizontal) {
            if (verticalArrangement == null) {
                throw new IllegalArgumentException("null verticalArrangement".toString());
            }
            int totalCrossAxisSpacing = $this$placeHelper_u2dBmaY500.mo367roundToPx0680j_4(verticalArrangement.getSpacing()) * (mutableVector.getSize() - 1);
            int totalCrossAxisSize2 = RangesKt.coerceIn(crossAxisTotalSize + totalCrossAxisSpacing, Constraints.m6439getMinHeightimpl(constraints), Constraints.m6437getMaxHeightimpl(constraints));
            verticalArrangement.arrange($this$placeHelper_u2dBmaY500, totalCrossAxisSize2, crossAxisSizes, outPosition);
            totalCrossAxisSize = totalCrossAxisSize2;
        } else {
            if (horizontalArrangement == null) {
                throw new IllegalArgumentException("null horizontalArrangement".toString());
            }
            int totalCrossAxisSpacing2 = $this$placeHelper_u2dBmaY500.mo367roundToPx0680j_4(horizontalArrangement.getSpacing()) * (mutableVector.getSize() - 1);
            totalCrossAxisSize = RangesKt.coerceIn(crossAxisTotalSize + totalCrossAxisSpacing2, Constraints.m6439getMinHeightimpl(constraints), Constraints.m6437getMaxHeightimpl(constraints));
            horizontalArrangement.arrange($this$placeHelper_u2dBmaY500, totalCrossAxisSize, crossAxisSizes, $this$placeHelper_u2dBmaY500.getLayoutDirection(), outPosition);
        }
        int finalMainAxisTotalSize = RangesKt.coerceIn(mainAxisTotalSize, Constraints.m6440getMinWidthimpl(constraints), Constraints.m6438getMaxWidthimpl(constraints));
        if (isHorizontal) {
            int layoutHeight2 = totalCrossAxisSize;
            layoutWidth = finalMainAxisTotalSize;
            layoutHeight = layoutHeight2;
        } else {
            int layoutWidth2 = totalCrossAxisSize;
            layoutWidth = layoutWidth2;
            layoutHeight = finalMainAxisTotalSize;
        }
        return MeasureScope.layout$default($this$placeHelper_u2dBmaY500, layoutWidth, layoutHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$placeHelper$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                MutableVector this_$iv = mutableVector;
                int size$iv = this_$iv.getSize();
                if (size$iv <= 0) {
                    return;
                }
                int i$iv = 0;
                Object[] content$iv = this_$iv.getContent();
                do {
                    MeasureResult measureResult = (MeasureResult) content$iv[i$iv];
                    measureResult.placeChildren();
                    i$iv++;
                } while (i$iv < size$iv);
            }
        }, 4, null);
    }
}
