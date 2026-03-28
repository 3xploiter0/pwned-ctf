package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.gestures.snapping.SnapPositionKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: PagerMeasure.kt */
@Metadata(d1 = {"\u0000¬\u0001\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aH\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u001aH\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u0015H\u0002\u001a@\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u0015H\u0002\u001a\u0017\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a\u008c\u0001\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u001e*\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0006H\u0002\u001aj\u0010\u0014\u001a\u00020\u0004*\u00020\u001f2\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u0010(\u001a\u00020)2\b\u00107\u001a\u0004\u0018\u0001082\b\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<2\u0006\u0010*\u001a\u00020+2\u0006\u0010/\u001a\u00020\u0006H\u0002ø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001añ\u0001\u0010?\u001a\u00020@*\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u00103\u001a\u0002042\u0006\u0010A\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u0002022\u0006\u0010(\u001a\u00020)2\b\u00109\u001a\u0004\u0018\u00010:2\b\u00107\u001a\u0004\u0018\u0001082\u0006\u0010*\u001a\u00020+2\u0006\u00105\u001a\u0002062\u0006\u0010/\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2/\u0010I\u001a+\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\u00190\u0015¢\u0006\u0002\bL\u0012\u0004\u0012\u00020M0JH\u0000ø\u0001\u0000¢\u0006\u0004\bN\u0010O\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006P"}, d2 = {"MaxPageOffset", "", "MinPageOffset", "calculateNewCurrentPage", "Landroidx/compose/foundation/pager/MeasuredPage;", "viewportSize", "", "visiblePagesInfo", "", "beforeContentPadding", "afterContentPadding", "itemSize", "snapPosition", "Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "pageCount", "createPagesAfterList", "currentLastPage", "pagesCount", "beyondViewportPageCount", "pinnedPages", "getAndMeasure", "Lkotlin/Function1;", "createPagesBeforeList", "currentFirstPage", "debugLog", "", "generateMsg", "Lkotlin/Function0;", "", "calculatePagesOffsets", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "pages", "extraPagesBefore", "extraPagesAfter", "layoutWidth", "layoutHeight", "finalMainAxisOffset", "maxOffset", "pagesScrollOffset", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "reverseLayout", "", "density", "Landroidx/compose/ui/unit/Density;", "spaceBetweenPages", "pageAvailableSize", "index", "childConstraints", "Landroidx/compose/ui/unit/Constraints;", "pagerItemProvider", "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;", "visualPageOffset", "Landroidx/compose/ui/unit/IntOffset;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getAndMeasure-SGf7dI0", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;", "measurePager", "Landroidx/compose/foundation/pager/PagerMeasureResult;", "mainAxisAvailableSize", "currentPage", "currentPageOffset", "constraints", "placementScopeInvalidator", "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "layout", "Lkotlin/Function3;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/ui/layout/MeasureResult;", "measurePager-bmk8ZPk", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerMeasureKt {
    public static final float MaxPageOffset = 0.5f;
    public static final float MinPageOffset = -0.5f;

    /* renamed from: measurePager-bmk8ZPk, reason: not valid java name */
    public static final PagerMeasureResult m923measurePagerbmk8ZPk(final LazyLayoutMeasureScope $this$measurePager_u2dbmk8ZPk, int pageCount, final PagerLazyLayoutItemProvider pagerItemProvider, int mainAxisAvailableSize, int beforeContentPadding, int afterContentPadding, int spaceBetweenPages, int currentPage, int currentPageOffset, long constraints, final Orientation orientation, final Alignment.Vertical verticalAlignment, final Alignment.Horizontal horizontalAlignment, final boolean reverseLayout, final long visualPageOffset, final int pageAvailableSize, int beyondViewportPageCount, List<Integer> list, SnapPosition snapPosition, final MutableState<Unit> mutableState, CoroutineScope coroutineScope, Function3<? super Integer, ? super Integer, ? super Function1<? super Placeable.PlacementScope, Unit>, ? extends MeasureResult> function3) {
        int iM6438getMaxWidthimpl;
        int iM6437getMaxHeightimpl;
        int currentFirstPageScrollOffset;
        int maxMainAxis;
        int currentFirstPage;
        int indexInVisibleItems;
        int maxMainAxis2;
        int currentFirstPage2;
        int indexInVisibleItems2;
        int minOffset;
        int currentFirstPageScrollOffset2;
        int maxCrossAxis;
        int maxCrossAxis2;
        int currentFirstPageScrollOffset3;
        int currentMainAxisOffset;
        int pageSizeWithSpacing;
        int index;
        int currentFirstPageScrollOffset4;
        MeasuredPage firstPage;
        int i;
        int i2;
        int currentMainAxisOffset2;
        MeasuredPage firstPage2;
        List visiblePagesInfo;
        int maxOffset;
        List positionedPagesBefore;
        List positionedPagesAfter;
        float currentPageOffsetFraction;
        int currentMainAxisOffset3;
        boolean z;
        int currentFirstPageScrollOffset5;
        int i3;
        if (!(beforeContentPadding >= 0)) {
            throw new IllegalArgumentException("negative beforeContentPadding".toString());
        }
        if (!(afterContentPadding >= 0)) {
            throw new IllegalArgumentException("negative afterContentPadding".toString());
        }
        int pageSizeWithSpacing2 = RangesKt.coerceAtLeast(pageAvailableSize + spaceBetweenPages, 0);
        if (pageCount <= 0) {
            return new PagerMeasureResult(CollectionsKt.emptyList(), pageAvailableSize, spaceBetweenPages, afterContentPadding, orientation, -beforeContentPadding, mainAxisAvailableSize + afterContentPadding, false, beyondViewportPageCount, null, null, 0.0f, 0, false, snapPosition, function3.invoke(Integer.valueOf(Constraints.m6440getMinWidthimpl(constraints)), Integer.valueOf(Constraints.m6439getMinHeightimpl(constraints)), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$4
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable.PlacementScope $this$invoke) {
                }
            }), false, null, null, coroutineScope, 393216, null);
        }
        if (orientation == Orientation.Vertical) {
            iM6438getMaxWidthimpl = Constraints.m6438getMaxWidthimpl(constraints);
        } else {
            iM6438getMaxWidthimpl = pageAvailableSize;
        }
        if (orientation != Orientation.Vertical) {
            iM6437getMaxHeightimpl = Constraints.m6437getMaxHeightimpl(constraints);
        } else {
            iM6437getMaxHeightimpl = pageAvailableSize;
        }
        final long childConstraints = ConstraintsKt.Constraints$default(0, iM6438getMaxWidthimpl, 0, iM6437getMaxHeightimpl, 5, null);
        int firstVisiblePage = currentPage;
        int firstVisiblePageOffset = currentPageOffset;
        while (firstVisiblePage > 0 && firstVisiblePageOffset > 0) {
            firstVisiblePage--;
            firstVisiblePageOffset -= pageSizeWithSpacing2;
        }
        int firstVisiblePageScrollOffset = firstVisiblePageOffset * (-1);
        int currentFirstPage3 = firstVisiblePage;
        int currentFirstPageScrollOffset6 = firstVisiblePageScrollOffset;
        if (currentFirstPage3 >= pageCount) {
            currentFirstPage3 = pageCount - 1;
            currentFirstPageScrollOffset6 = 0;
        }
        ArrayDeque visiblePages = new ArrayDeque();
        int currentFirstPageScrollOffset7 = (spaceBetweenPages < 0 ? spaceBetweenPages : 0) + (-beforeContentPadding);
        int maxOffset2 = mainAxisAvailableSize;
        int maxCrossAxis3 = currentFirstPageScrollOffset6 + currentFirstPageScrollOffset7;
        int currentFirstPageScrollOffset8 = 0;
        while (maxCrossAxis3 < 0 && currentFirstPage3 > 0) {
            int previous = currentFirstPage3 - 1;
            int maxCrossAxis4 = currentFirstPageScrollOffset8;
            int currentFirstPageScrollOffset9 = maxCrossAxis3;
            int minOffset2 = currentFirstPageScrollOffset7;
            ArrayDeque visiblePages2 = visiblePages;
            MeasuredPage measuredPage = m922getAndMeasureSGf7dI0($this$measurePager_u2dbmk8ZPk, previous, childConstraints, pagerItemProvider, visualPageOffset, orientation, horizontalAlignment, verticalAlignment, $this$measurePager_u2dbmk8ZPk.getLayoutDirection(), reverseLayout, pageAvailableSize);
            visiblePages2.add(0, measuredPage);
            currentFirstPage3 = previous;
            visiblePages = visiblePages2;
            currentFirstPageScrollOffset8 = Math.max(maxCrossAxis4, measuredPage.getCrossAxisSize());
            maxCrossAxis3 = currentFirstPageScrollOffset9 + pageSizeWithSpacing2;
            currentFirstPageScrollOffset7 = minOffset2;
            maxOffset2 = maxOffset2;
        }
        int minOffset3 = currentFirstPageScrollOffset7;
        int maxOffset3 = maxOffset2;
        ArrayDeque visiblePages3 = visiblePages;
        int minOffset4 = currentFirstPageScrollOffset8;
        int maxOffset4 = maxCrossAxis3;
        int minOffset5 = minOffset3;
        if (maxOffset4 >= minOffset5) {
            currentFirstPageScrollOffset = maxOffset4;
        } else {
            currentFirstPageScrollOffset = minOffset5;
        }
        int currentFirstPageScrollOffset10 = currentFirstPageScrollOffset - minOffset5;
        int index2 = currentFirstPage3;
        int currentFirstPage4 = currentFirstPage3;
        int maxOffset5 = maxOffset3;
        int maxMainAxis3 = RangesKt.coerceAtLeast(maxOffset5 + afterContentPadding, 0);
        int currentMainAxisOffset4 = -currentFirstPageScrollOffset10;
        boolean remeasureNeeded = false;
        int indexInVisibleItems3 = 0;
        while (indexInVisibleItems3 < visiblePages3.size()) {
            if (currentMainAxisOffset4 >= maxMainAxis3) {
                visiblePages3.remove(indexInVisibleItems3);
                remeasureNeeded = true;
            } else {
                index2++;
                currentMainAxisOffset4 += pageSizeWithSpacing2;
                indexInVisibleItems3++;
            }
        }
        int currentMainAxisOffset5 = currentMainAxisOffset4;
        int currentFirstPageScrollOffset11 = currentFirstPageScrollOffset10;
        int currentFirstPageScrollOffset12 = minOffset4;
        int index3 = currentFirstPage4;
        boolean remeasureNeeded2 = remeasureNeeded;
        int maxCrossAxis5 = index2;
        while (true) {
            if (maxCrossAxis5 >= pageCount) {
                maxMainAxis = maxMainAxis3;
                currentFirstPage = index3;
                indexInVisibleItems = indexInVisibleItems3;
                maxMainAxis2 = currentFirstPageScrollOffset12;
                currentFirstPage2 = maxCrossAxis5;
                indexInVisibleItems2 = maxOffset5;
                minOffset = minOffset5;
                break;
            }
            if (currentMainAxisOffset5 >= maxMainAxis3 && currentMainAxisOffset5 > 0 && !visiblePages3.isEmpty()) {
                maxMainAxis = maxMainAxis3;
                currentFirstPage = index3;
                indexInVisibleItems = indexInVisibleItems3;
                maxMainAxis2 = currentFirstPageScrollOffset12;
                currentFirstPage2 = maxCrossAxis5;
                indexInVisibleItems2 = maxOffset5;
                minOffset = minOffset5;
                break;
            }
            int maxMainAxis4 = maxMainAxis3;
            int maxCrossAxis6 = currentFirstPageScrollOffset12;
            int currentFirstPage5 = index3;
            int indexInVisibleItems4 = indexInVisibleItems3;
            int currentFirstPage6 = maxCrossAxis5;
            int indexInVisibleItems5 = maxOffset5;
            int minOffset6 = minOffset5;
            MeasuredPage measuredPage2 = m922getAndMeasureSGf7dI0($this$measurePager_u2dbmk8ZPk, maxCrossAxis5, childConstraints, pagerItemProvider, visualPageOffset, orientation, horizontalAlignment, verticalAlignment, $this$measurePager_u2dbmk8ZPk.getLayoutDirection(), reverseLayout, pageAvailableSize);
            int $i$f$debugLog = pageCount - 1;
            if (currentFirstPage6 == $i$f$debugLog) {
                i3 = pageAvailableSize;
            } else {
                i3 = pageSizeWithSpacing2;
            }
            currentMainAxisOffset5 += i3;
            if (currentMainAxisOffset5 <= minOffset6 && currentFirstPage6 != pageCount - 1) {
                currentFirstPageScrollOffset11 -= pageSizeWithSpacing2;
                remeasureNeeded2 = true;
                currentFirstPage5 = currentFirstPage6 + 1;
            } else {
                maxCrossAxis6 = Math.max(maxCrossAxis6, measuredPage2.getCrossAxisSize());
                visiblePages3.add(measuredPage2);
            }
            currentFirstPageScrollOffset12 = maxCrossAxis6;
            maxCrossAxis5 = currentFirstPage6 + 1;
            minOffset5 = minOffset6;
            maxOffset5 = indexInVisibleItems5;
            maxMainAxis3 = maxMainAxis4;
            indexInVisibleItems3 = indexInVisibleItems4;
            index3 = currentFirstPage5;
        }
        if (currentMainAxisOffset5 >= indexInVisibleItems2) {
            currentFirstPageScrollOffset2 = 0;
            maxCrossAxis = maxMainAxis2;
            maxCrossAxis2 = currentMainAxisOffset5;
            currentFirstPageScrollOffset3 = currentFirstPageScrollOffset11;
            currentMainAxisOffset = currentFirstPage;
        } else {
            int toScrollBack = indexInVisibleItems2 - currentMainAxisOffset5;
            int currentMainAxisOffset6 = currentMainAxisOffset5 + toScrollBack;
            int currentFirstPageScrollOffset13 = currentFirstPageScrollOffset11 - toScrollBack;
            while (true) {
                if (currentFirstPageScrollOffset13 >= beforeContentPadding) {
                    currentFirstPageScrollOffset5 = currentFirstPageScrollOffset13;
                    currentFirstPageScrollOffset2 = 0;
                    break;
                }
                if (currentFirstPage <= 0) {
                    currentFirstPageScrollOffset5 = currentFirstPageScrollOffset13;
                    currentFirstPageScrollOffset2 = 0;
                    break;
                }
                int previousIndex = currentFirstPage - 1;
                MeasuredPage measuredPage3 = m922getAndMeasureSGf7dI0($this$measurePager_u2dbmk8ZPk, previousIndex, childConstraints, pagerItemProvider, visualPageOffset, orientation, horizontalAlignment, verticalAlignment, $this$measurePager_u2dbmk8ZPk.getLayoutDirection(), reverseLayout, pageAvailableSize);
                visiblePages3.add(0, measuredPage3);
                maxMainAxis2 = Math.max(maxMainAxis2, measuredPage3.getCrossAxisSize());
                currentFirstPage = previousIndex;
                currentFirstPageScrollOffset13 += pageSizeWithSpacing2;
            }
            if (currentFirstPageScrollOffset5 >= 0) {
                maxCrossAxis = maxMainAxis2;
                maxCrossAxis2 = currentMainAxisOffset6;
                currentMainAxisOffset = currentFirstPage;
                currentFirstPageScrollOffset3 = currentFirstPageScrollOffset5;
            } else {
                maxCrossAxis = maxMainAxis2;
                maxCrossAxis2 = currentMainAxisOffset6 + currentFirstPageScrollOffset5;
                currentFirstPageScrollOffset3 = 0;
                currentMainAxisOffset = currentFirstPage;
            }
        }
        if ((currentFirstPageScrollOffset3 >= 0 ? 1 : currentFirstPageScrollOffset2) == 0) {
            throw new IllegalArgumentException("invalid currentFirstPageScrollOffset".toString());
        }
        int visiblePagesScrollOffset = -currentFirstPageScrollOffset3;
        MeasuredPage firstPage3 = (MeasuredPage) visiblePages3.first();
        if (beforeContentPadding > 0 || spaceBetweenPages < 0) {
            int i4 = 0;
            int size = visiblePages3.size();
            while (true) {
                if (i4 >= size) {
                    pageSizeWithSpacing = pageSizeWithSpacing2;
                    index = currentFirstPage2;
                    break;
                }
                int size2 = pageSizeWithSpacing2;
                if (currentFirstPageScrollOffset3 == 0) {
                    pageSizeWithSpacing = pageSizeWithSpacing2;
                    index = currentFirstPage2;
                    break;
                }
                pageSizeWithSpacing = pageSizeWithSpacing2;
                if (size2 > currentFirstPageScrollOffset3) {
                    index = currentFirstPage2;
                    break;
                }
                index = currentFirstPage2;
                int index4 = CollectionsKt.getLastIndex(visiblePages3);
                if (i4 == index4) {
                    break;
                }
                currentFirstPageScrollOffset3 -= size2;
                firstPage3 = (MeasuredPage) visiblePages3.get(i4 + 1);
                i4++;
                pageSizeWithSpacing2 = pageSizeWithSpacing;
                currentFirstPage2 = index;
            }
            currentFirstPageScrollOffset4 = currentFirstPageScrollOffset3;
            firstPage = firstPage3;
        } else {
            pageSizeWithSpacing = pageSizeWithSpacing2;
            index = currentFirstPage2;
            currentFirstPageScrollOffset4 = currentFirstPageScrollOffset3;
            firstPage = firstPage3;
        }
        List extraPagesBefore = createPagesBeforeList(currentMainAxisOffset, beyondViewportPageCount, list, new Function1<Integer, MeasuredPage>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$extraPagesBefore$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ MeasuredPage invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final MeasuredPage invoke(int it) {
                return PagerMeasureKt.m922getAndMeasureSGf7dI0($this$measurePager_u2dbmk8ZPk, it, childConstraints, pagerItemProvider, visualPageOffset, orientation, horizontalAlignment, verticalAlignment, $this$measurePager_u2dbmk8ZPk.getLayoutDirection(), reverseLayout, pageAvailableSize);
            }
        });
        List $this$fastForEach$iv = extraPagesBefore;
        int index$iv = 0;
        int size3 = $this$fastForEach$iv.size();
        int maxCrossAxis7 = maxCrossAxis;
        while (index$iv < size3) {
            Object item$iv = $this$fastForEach$iv.get(index$iv);
            maxCrossAxis7 = Math.max(maxCrossAxis7, ((MeasuredPage) item$iv).getCrossAxisSize());
            index$iv++;
            $this$fastForEach$iv = $this$fastForEach$iv;
        }
        List extraPagesAfter = createPagesAfterList(((MeasuredPage) visiblePages3.last()).getIndex(), pageCount, beyondViewportPageCount, list, new Function1<Integer, MeasuredPage>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$extraPagesAfter$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ MeasuredPage invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final MeasuredPage invoke(int it) {
                return PagerMeasureKt.m922getAndMeasureSGf7dI0($this$measurePager_u2dbmk8ZPk, it, childConstraints, pagerItemProvider, visualPageOffset, orientation, horizontalAlignment, verticalAlignment, $this$measurePager_u2dbmk8ZPk.getLayoutDirection(), reverseLayout, pageAvailableSize);
            }
        });
        List $this$fastForEach$iv2 = extraPagesAfter;
        int index$iv2 = 0;
        int size4 = $this$fastForEach$iv2.size();
        int maxCrossAxis8 = maxCrossAxis7;
        while (index$iv2 < size4) {
            Object item$iv2 = $this$fastForEach$iv2.get(index$iv2);
            maxCrossAxis8 = Math.max(maxCrossAxis8, ((MeasuredPage) item$iv2).getCrossAxisSize());
            index$iv2++;
            $this$fastForEach$iv2 = $this$fastForEach$iv2;
        }
        boolean noExtraPages = Intrinsics.areEqual(firstPage, visiblePages3.first()) && extraPagesBefore.isEmpty() && extraPagesAfter.isEmpty();
        if (orientation == Orientation.Vertical) {
            i = maxCrossAxis8;
        } else {
            i = maxCrossAxis2;
        }
        int layoutWidth = ConstraintsKt.m6455constrainWidthK40F9xA(constraints, i);
        if (orientation == Orientation.Vertical) {
            i2 = maxCrossAxis2;
        } else {
            i2 = maxCrossAxis8;
        }
        int layoutHeight = ConstraintsKt.m6454constrainHeightK40F9xA(constraints, i2);
        final List positionedPages = calculatePagesOffsets($this$measurePager_u2dbmk8ZPk, visiblePages3, extraPagesBefore, extraPagesAfter, layoutWidth, layoutHeight, maxCrossAxis2, indexInVisibleItems2, visiblePagesScrollOffset, orientation, reverseLayout, $this$measurePager_u2dbmk8ZPk, spaceBetweenPages, pageAvailableSize);
        if (noExtraPages) {
            currentMainAxisOffset2 = maxCrossAxis2;
            firstPage2 = firstPage;
            visiblePagesInfo = positionedPages;
        } else {
            currentMainAxisOffset2 = maxCrossAxis2;
            firstPage2 = firstPage;
            ArrayList target$iv = new ArrayList(positionedPages.size());
            List $this$fastForEach$iv$iv = positionedPages;
            int size5 = $this$fastForEach$iv$iv.size();
            int index$iv$iv = 0;
            while (index$iv$iv < size5) {
                MeasuredPage measuredPage4 = $this$fastForEach$iv$iv.get(index$iv$iv);
                int i5 = size5;
                MeasuredPage it = measuredPage4;
                List $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv;
                if (it.getIndex() >= ((MeasuredPage) visiblePages3.first()).getIndex() && it.getIndex() <= ((MeasuredPage) visiblePages3.last()).getIndex()) {
                    target$iv.add(measuredPage4);
                }
                index$iv$iv++;
                size5 = i5;
                $this$fastForEach$iv$iv = $this$fastForEach$iv$iv2;
            }
            visiblePagesInfo = target$iv;
        }
        int $i$f$fastFilter = currentMainAxisOffset2;
        if (extraPagesBefore.isEmpty()) {
            positionedPagesBefore = CollectionsKt.emptyList();
            maxOffset = indexInVisibleItems2;
        } else {
            List target$iv2 = new ArrayList(positionedPages.size());
            List $this$fastForEach$iv$iv3 = positionedPages;
            int size6 = $this$fastForEach$iv$iv3.size();
            int $i$f$fastFilter2 = 0;
            while ($i$f$fastFilter2 < size6) {
                MeasuredPage it2 = $this$fastForEach$iv$iv3.get($i$f$fastFilter2);
                int i6 = size6;
                List $this$fastForEach$iv$iv4 = $this$fastForEach$iv$iv3;
                int index5 = it2.getIndex();
                int maxOffset6 = indexInVisibleItems2;
                int maxOffset7 = ((MeasuredPage) visiblePages3.first()).getIndex();
                if (index5 < maxOffset7) {
                    target$iv2.add(it2);
                }
                $i$f$fastFilter2++;
                size6 = i6;
                $this$fastForEach$iv$iv3 = $this$fastForEach$iv$iv4;
                indexInVisibleItems2 = maxOffset6;
            }
            maxOffset = indexInVisibleItems2;
            positionedPagesBefore = target$iv2;
        }
        if (extraPagesAfter.isEmpty()) {
            positionedPagesAfter = CollectionsKt.emptyList();
        } else {
            List target$iv3 = new ArrayList(positionedPages.size());
            List $this$fastForEach$iv$iv5 = positionedPages;
            int size7 = $this$fastForEach$iv$iv5.size();
            int $i$f$fastFilter3 = 0;
            while ($i$f$fastFilter3 < size7) {
                MeasuredPage it3 = $this$fastForEach$iv$iv5.get($i$f$fastFilter3);
                int i7 = size7;
                List $this$fastForEach$iv$iv6 = $this$fastForEach$iv$iv5;
                ArrayDeque visiblePages4 = visiblePages3;
                if (it3.getIndex() > ((MeasuredPage) visiblePages3.last()).getIndex()) {
                    target$iv3.add(it3);
                }
                $i$f$fastFilter3++;
                size7 = i7;
                $this$fastForEach$iv$iv5 = $this$fastForEach$iv$iv6;
                visiblePages3 = visiblePages4;
            }
            positionedPagesAfter = target$iv3;
        }
        int pageSizeWithSpacing3 = pageSizeWithSpacing;
        MeasuredPage firstPage4 = firstPage2;
        int index6 = index;
        MeasuredPage newCurrentPage = calculateNewCurrentPage(orientation == Orientation.Vertical ? layoutHeight : layoutWidth, visiblePagesInfo, beforeContentPadding, afterContentPadding, pageSizeWithSpacing3, snapPosition, pageCount);
        int currentMainAxisOffset7 = maxOffset;
        List visiblePagesInfo2 = visiblePagesInfo;
        int snapOffset = snapPosition.position(mainAxisAvailableSize, pageAvailableSize, beforeContentPadding, afterContentPadding, newCurrentPage != null ? newCurrentPage.getIndex() : 0, pageCount);
        int currentPagePositionOffset = newCurrentPage != null ? newCurrentPage.getOffset() : 0;
        if (pageSizeWithSpacing3 == 0) {
            currentPageOffsetFraction = 0.0f;
        } else {
            currentPageOffsetFraction = RangesKt.coerceIn((snapOffset - currentPagePositionOffset) / pageSizeWithSpacing3, -0.5f, 0.5f);
        }
        MeasureResult measureResultInvoke = function3.invoke(Integer.valueOf(layoutWidth), Integer.valueOf(layoutHeight), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$14
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
            public final void invoke2(Placeable.PlacementScope $this$invoke) {
                List $this$fastForEach$iv3 = positionedPages;
                int size8 = $this$fastForEach$iv3.size();
                for (int index$iv3 = 0; index$iv3 < size8; index$iv3++) {
                    Object item$iv3 = $this$fastForEach$iv3.get(index$iv3);
                    MeasuredPage it4 = (MeasuredPage) item$iv3;
                    it4.place($this$invoke);
                }
                ObservableScopeInvalidator.m855attachToScopeimpl(mutableState);
            }
        });
        int i8 = -beforeContentPadding;
        int i9 = currentMainAxisOffset7 + afterContentPadding;
        if (index6 >= pageCount) {
            currentMainAxisOffset3 = $i$f$fastFilter;
            if (currentMainAxisOffset3 <= currentMainAxisOffset7) {
                z = false;
            }
            return new PagerMeasureResult(visiblePagesInfo2, pageAvailableSize, spaceBetweenPages, afterContentPadding, orientation, i8, i9, reverseLayout, beyondViewportPageCount, firstPage4, newCurrentPage, currentPageOffsetFraction, currentFirstPageScrollOffset4, z, snapPosition, measureResultInvoke, remeasureNeeded2, positionedPagesBefore, positionedPagesAfter, coroutineScope);
        }
        currentMainAxisOffset3 = $i$f$fastFilter;
        z = true;
        return new PagerMeasureResult(visiblePagesInfo2, pageAvailableSize, spaceBetweenPages, afterContentPadding, orientation, i8, i9, reverseLayout, beyondViewportPageCount, firstPage4, newCurrentPage, currentPageOffsetFraction, currentFirstPageScrollOffset4, z, snapPosition, measureResultInvoke, remeasureNeeded2, positionedPagesBefore, positionedPagesAfter, coroutineScope);
    }

    private static final List<MeasuredPage> createPagesAfterList(int currentLastPage, int pagesCount, int beyondViewportPageCount, List<Integer> list, Function1<? super Integer, MeasuredPage> function1) {
        ArrayList arrayList = null;
        int end = Math.min(currentLastPage + beyondViewportPageCount, pagesCount - 1);
        int i = currentLastPage + 1;
        if (i <= end) {
            while (true) {
                if (arrayList == null) {
                    Object list2 = new ArrayList();
                    arrayList = (List) list2;
                }
                arrayList.add(function1.invoke(Integer.valueOf(i)));
                if (i == end) {
                    break;
                }
                i++;
            }
        }
        int size = list.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list.get(index$iv);
            int pageIndex = ((Number) item$iv).intValue();
            boolean z = false;
            if (end + 1 <= pageIndex && pageIndex < pagesCount) {
                z = true;
            }
            if (z) {
                if (arrayList == null) {
                    Object list3 = new ArrayList();
                    arrayList = (List) list3;
                }
                arrayList.add(function1.invoke(Integer.valueOf(pageIndex)));
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final List<MeasuredPage> createPagesBeforeList(int currentFirstPage, int beyondViewportPageCount, List<Integer> list, Function1<? super Integer, MeasuredPage> function1) {
        ArrayList arrayList = null;
        int start = Math.max(0, currentFirstPage - beyondViewportPageCount);
        int i = currentFirstPage - 1;
        if (start <= i) {
            while (true) {
                if (arrayList == null) {
                    Object list2 = new ArrayList();
                    arrayList = (List) list2;
                }
                arrayList.add(function1.invoke(Integer.valueOf(i)));
                if (i == start) {
                    break;
                }
                i--;
            }
        }
        int size = list.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list.get(index$iv);
            int pageIndex = ((Number) item$iv).intValue();
            if (pageIndex < start) {
                if (arrayList == null) {
                    Object list3 = new ArrayList();
                    arrayList = (List) list3;
                }
                arrayList.add(function1.invoke(Integer.valueOf(pageIndex)));
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final MeasuredPage calculateNewCurrentPage(int viewportSize, List<MeasuredPage> list, int beforeContentPadding, int afterContentPadding, int itemSize, SnapPosition snapPosition, int pageCount) {
        Object maxElem$iv;
        if (list.isEmpty()) {
            maxElem$iv = null;
        } else {
            maxElem$iv = list.get(0);
            MeasuredPage it = (MeasuredPage) maxElem$iv;
            float maxValue$iv = -Math.abs(SnapPositionKt.calculateDistanceToDesiredSnapPosition(viewportSize, beforeContentPadding, afterContentPadding, itemSize, it.getOffset(), it.getIndex(), snapPosition, pageCount));
            int i$iv = 1;
            int lastIndex = CollectionsKt.getLastIndex(list);
            if (1 <= lastIndex) {
                while (true) {
                    Object e$iv = list.get(i$iv);
                    MeasuredPage it2 = (MeasuredPage) e$iv;
                    float v$iv = -Math.abs(SnapPositionKt.calculateDistanceToDesiredSnapPosition(viewportSize, beforeContentPadding, afterContentPadding, itemSize, it2.getOffset(), it2.getIndex(), snapPosition, pageCount));
                    if (Float.compare(maxValue$iv, v$iv) < 0) {
                        maxElem$iv = e$iv;
                        maxValue$iv = v$iv;
                    }
                    if (i$iv == lastIndex) {
                        break;
                    }
                    i$iv++;
                }
            }
        }
        return (MeasuredPage) maxElem$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAndMeasure-SGf7dI0, reason: not valid java name */
    public static final MeasuredPage m922getAndMeasureSGf7dI0(LazyLayoutMeasureScope $this$getAndMeasure_u2dSGf7dI0, int index, long childConstraints, PagerLazyLayoutItemProvider pagerItemProvider, long visualPageOffset, Orientation orientation, Alignment.Horizontal horizontalAlignment, Alignment.Vertical verticalAlignment, LayoutDirection layoutDirection, boolean reverseLayout, int pageAvailableSize) {
        Object key = pagerItemProvider.getKey(index);
        List placeable = $this$getAndMeasure_u2dSGf7dI0.mo852measure0kLqBqw(index, childConstraints);
        return new MeasuredPage(index, pageAvailableSize, placeable, visualPageOffset, key, orientation, horizontalAlignment, verticalAlignment, layoutDirection, reverseLayout, null);
    }

    private static final List<MeasuredPage> calculatePagesOffsets(LazyLayoutMeasureScope $this$calculatePagesOffsets, List<MeasuredPage> list, List<MeasuredPage> list2, List<MeasuredPage> list3, int layoutWidth, int layoutHeight, int finalMainAxisOffset, int maxOffset, int pagesScrollOffset, Orientation orientation, boolean reverseLayout, Density density, int spaceBetweenPages, int pageAvailableSize) {
        ArrayList positionedPages;
        int[] offsets;
        int pagesCount;
        int size;
        int pageSizeWithSpacing = pageAvailableSize + spaceBetweenPages;
        int mainAxisLayoutSize = orientation == Orientation.Vertical ? layoutHeight : layoutWidth;
        boolean hasSpareSpace = finalMainAxisOffset < Math.min(mainAxisLayoutSize, maxOffset);
        if (hasSpareSpace) {
            if (!(pagesScrollOffset == 0)) {
                throw new IllegalStateException(("non-zero pagesScrollOffset=" + pagesScrollOffset).toString());
            }
        }
        ArrayList positionedPages2 = new ArrayList(list.size() + list2.size() + list3.size());
        if (hasSpareSpace) {
            if (!(list2.isEmpty() && list3.isEmpty())) {
                throw new IllegalArgumentException("No extra pages".toString());
            }
            int pagesCount2 = list.size();
            int[] sizes = new int[pagesCount2];
            for (int i = 0; i < pagesCount2; i++) {
                sizes[i] = pageAvailableSize;
            }
            int[] offsets2 = new int[pagesCount2];
            for (int i2 = 0; i2 < pagesCount2; i2++) {
                offsets2[i2] = 0;
            }
            Arrangement.HorizontalOrVertical arrangement = Arrangement.Absolute.INSTANCE.m564spacedBy0680j_4($this$calculatePagesOffsets.mo370toDpu2uoSUM(spaceBetweenPages));
            if (orientation != Orientation.Vertical) {
                offsets = offsets2;
                pagesCount = pagesCount2;
                positionedPages = positionedPages2;
                arrangement.arrange(density, mainAxisLayoutSize, sizes, LayoutDirection.Ltr, offsets);
            } else {
                arrangement.arrange(density, mainAxisLayoutSize, sizes, offsets2);
                offsets = offsets2;
                pagesCount = pagesCount2;
                positionedPages = positionedPages2;
            }
            IntRange reverseAwareOffsetIndices = ArraysKt.getIndices(offsets);
            if (reverseLayout) {
                reverseAwareOffsetIndices = RangesKt.reversed(reverseAwareOffsetIndices);
            }
            int index = reverseAwareOffsetIndices.getFirst();
            int last = reverseAwareOffsetIndices.getLast();
            int step = reverseAwareOffsetIndices.getStep();
            if ((step > 0 && index <= last) || (step < 0 && last <= index)) {
                while (true) {
                    int absoluteOffset = offsets[index];
                    int pagesCount3 = pagesCount;
                    MeasuredPage page = list.get(calculatePagesOffsets$reverseAware(index, reverseLayout, pagesCount));
                    if (reverseLayout) {
                        size = (mainAxisLayoutSize - absoluteOffset) - page.getSize();
                    } else {
                        size = absoluteOffset;
                    }
                    int relativeOffset = size;
                    page.position(relativeOffset, layoutWidth, layoutHeight);
                    positionedPages.add(page);
                    if (index == last) {
                        break;
                    }
                    index += step;
                    pagesCount = pagesCount3;
                }
            }
        } else {
            positionedPages = positionedPages2;
            int currentMainAxis = pagesScrollOffset;
            int size2 = list2.size();
            for (int index$iv = 0; index$iv < size2; index$iv++) {
                Object item$iv = list2.get(index$iv);
                MeasuredPage it = (MeasuredPage) item$iv;
                currentMainAxis -= pageSizeWithSpacing;
                it.position(currentMainAxis, layoutWidth, layoutHeight);
                positionedPages.add(it);
            }
            int currentMainAxis2 = pagesScrollOffset;
            int size3 = list.size();
            for (int index$iv2 = 0; index$iv2 < size3; index$iv2++) {
                Object item$iv2 = list.get(index$iv2);
                MeasuredPage it2 = (MeasuredPage) item$iv2;
                it2.position(currentMainAxis2, layoutWidth, layoutHeight);
                positionedPages.add(it2);
                currentMainAxis2 += pageSizeWithSpacing;
            }
            int size4 = list3.size();
            for (int index$iv3 = 0; index$iv3 < size4; index$iv3++) {
                Object item$iv3 = list3.get(index$iv3);
                MeasuredPage it3 = (MeasuredPage) item$iv3;
                it3.position(currentMainAxis2, layoutWidth, layoutHeight);
                positionedPages.add(it3);
                currentMainAxis2 += pageSizeWithSpacing;
            }
        }
        return positionedPages;
    }

    private static final int calculatePagesOffsets$reverseAware(int $this$calculatePagesOffsets_u24reverseAware, boolean $reverseLayout, int pagesCount) {
        return !$reverseLayout ? $this$calculatePagesOffsets_u24reverseAware : (pagesCount - $this$calculatePagesOffsets_u24reverseAware) - 1;
    }

    private static final void debugLog(Function0<String> function0) {
    }
}
