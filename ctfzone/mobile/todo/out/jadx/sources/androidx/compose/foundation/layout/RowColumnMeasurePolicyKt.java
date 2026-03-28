package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: RowColumnMeasurePolicy.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\u001a\u0085\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\u0016¨\u0006\u0017"}, d2 = {"measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;", "mainAxisMin", "", "crossAxisMin", "mainAxisMax", "crossAxisMax", "arrangementSpacingInt", "measureScope", "Landroidx/compose/ui/layout/MeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/Measurable;", "placeables", "", "Landroidx/compose/ui/layout/Placeable;", "startIndex", "endIndex", "crossAxisOffset", "", "currentLineIndex", "(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RowColumnMeasurePolicyKt {
    public static /* synthetic */ MeasureResult measure$default(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List list, Placeable[] placeableArr, int i6, int i7, int[] iArr, int i8, int i9, Object obj) {
        int[] iArr2;
        int i10;
        if ((i9 & 1024) == 0) {
            iArr2 = iArr;
        } else {
            iArr2 = null;
        }
        if ((i9 & 2048) == 0) {
            i10 = i8;
        } else {
            i10 = 0;
        }
        return measure(rowColumnMeasurePolicy, i, i2, i3, i4, i5, measureScope, list, placeableArr, i6, i7, iArr2, i10);
    }

    public static final MeasureResult measure(RowColumnMeasurePolicy $this$measure, int mainAxisMin, int crossAxisMin, int mainAxisMax, int crossAxisMax, int arrangementSpacingInt, MeasureScope measureScope, List<? extends Measurable> list, Placeable[] placeables, int startIndex, int endIndex, int[] crossAxisOffset, int currentLineIndex) {
        int subSize;
        long arrangementSpacingPx;
        int[] childrenMainAxisSize;
        float totalWeight;
        long remainingToTarget;
        String str;
        String str2;
        String str3;
        long arrangementSpacingTotal;
        String str4;
        int weightChildrenCount;
        float totalWeight2;
        long arrangementSpacingPx2;
        RowColumnMeasurePolicy rowColumnMeasurePolicy;
        int weightedSpace;
        int fixedSpace;
        int crossAxisSpace;
        int fixedSpace2;
        int weightChildrenCount2;
        long arrangementSpacingPx3;
        long remainingToTarget2;
        String str5;
        String str6;
        String str7;
        long arrangementSpacingPx4;
        String str8;
        int i;
        int fixedSpace3;
        float totalWeight3;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        float weightUnitSpace;
        String str14;
        Integer numValueOf;
        FlowLayoutData it;
        int childMainAxisSize;
        int fixedSpace4;
        long arrangementSpacingTotal2;
        float totalWeight4;
        String str15;
        String str16;
        float weight;
        String str17;
        int fixedSpace5;
        int weightChildrenCount3;
        Integer crossAxisDesiredSize;
        int remainderUnit;
        String str18;
        long arrangementSpacingPx5;
        float weightUnitSpace2;
        String str19;
        int iIntValue;
        int i2;
        int weightChildrenCount4;
        int weightChildrenCount5;
        int crossAxisSpace2;
        int fixedSpace6;
        float totalWeight5;
        int[] childrenMainAxisSize2;
        int subSize2;
        long arrangementSpacingPx6;
        int i3;
        int subSize3;
        int[] childrenMainAxisSize3;
        int i4;
        int iCoerceAtLeast;
        FlowLayoutData it2;
        int i5 = crossAxisMax;
        List<? extends Measurable> list2 = list;
        int i6 = endIndex;
        long arrangementSpacingPx7 = arrangementSpacingInt;
        int crossAxisSpace3 = 0;
        int subSize4 = i6 - startIndex;
        int[] childrenMainAxisSize4 = new int[subSize4];
        int beforeCrossAxisAlignmentLine = 0;
        int afterCrossAxisAlignmentLine = 0;
        float totalWeight6 = 0.0f;
        int i7 = startIndex;
        int spaceAfterLastNoWeight = 0;
        int spaceAfterLastNoWeight2 = 0;
        int weightChildrenCount6 = 0;
        int weightChildrenCount7 = 0;
        while (true) {
            Integer numValueOf2 = null;
            subSize = subSize4;
            int i8 = 1;
            arrangementSpacingPx = arrangementSpacingPx7;
            if (i7 >= i6) {
                break;
            }
            Measurable child = list2.get(i7);
            RowColumnParentData parentData = RowColumnImplKt.getRowColumnParentData(child);
            float weight2 = RowColumnImplKt.getWeight(parentData);
            if (spaceAfterLastNoWeight2 == 0 && !RowColumnImplKt.isRelative(parentData)) {
                i8 = 0;
            }
            spaceAfterLastNoWeight2 = i8;
            if (weight2 > 0.0f) {
                totalWeight6 += weight2;
                weightChildrenCount7++;
                childrenMainAxisSize3 = childrenMainAxisSize4;
                subSize2 = subSize;
                arrangementSpacingPx6 = arrangementSpacingPx;
            } else {
                if (i5 != Integer.MAX_VALUE && parentData != null && (it2 = parentData.getFlowLayoutData()) != null) {
                    float $this$fastRoundToInt$iv = it2.getFillCrossAxisFraction() * i5;
                    int $i$f$fastRoundToInt = Math.round($this$fastRoundToInt$iv);
                    numValueOf2 = Integer.valueOf($i$f$fastRoundToInt);
                }
                Integer crossAxisDesiredSize2 = numValueOf2;
                int remaining = mainAxisMax - weightChildrenCount6;
                Placeable placeableMo5339measureBRTryo0 = placeables[i7];
                if (placeableMo5339measureBRTryo0 == null) {
                    int fixedSpace7 = crossAxisDesiredSize2 != null ? crossAxisDesiredSize2.intValue() : 0;
                    if (mainAxisMax == Integer.MAX_VALUE) {
                        iCoerceAtLeast = Integer.MAX_VALUE;
                        i4 = 0;
                    } else {
                        i4 = 0;
                        iCoerceAtLeast = RangesKt.coerceAtLeast(remaining, 0);
                    }
                    int iIntValue2 = crossAxisDesiredSize2 != null ? crossAxisDesiredSize2.intValue() : i5;
                    weightChildrenCount5 = weightChildrenCount7;
                    crossAxisSpace2 = crossAxisSpace3;
                    fixedSpace6 = weightChildrenCount6;
                    totalWeight5 = totalWeight6;
                    childrenMainAxisSize2 = childrenMainAxisSize4;
                    subSize2 = subSize;
                    arrangementSpacingPx6 = arrangementSpacingPx;
                    subSize3 = remaining;
                    i3 = i4;
                    placeableMo5339measureBRTryo0 = child.mo5339measureBRTryo0(RowColumnMeasurePolicy.m706createConstraintsxF2OJ5Q$default($this$measure, 0, fixedSpace7, iCoerceAtLeast, iIntValue2, false, 16, null));
                } else {
                    weightChildrenCount5 = weightChildrenCount7;
                    crossAxisSpace2 = crossAxisSpace3;
                    fixedSpace6 = weightChildrenCount6;
                    totalWeight5 = totalWeight6;
                    childrenMainAxisSize2 = childrenMainAxisSize4;
                    subSize2 = subSize;
                    arrangementSpacingPx6 = arrangementSpacingPx;
                    i3 = 0;
                    subSize3 = remaining;
                }
                Placeable placeable = placeableMo5339measureBRTryo0;
                int placeableMainAxisSize = $this$measure.mainAxisSize(placeable);
                int placeableCrossAxisSize = $this$measure.crossAxisSize(placeable);
                childrenMainAxisSize3 = childrenMainAxisSize2;
                childrenMainAxisSize3[i7 - startIndex] = placeableMainAxisSize;
                int spaceAfterLastNoWeight3 = Math.min(arrangementSpacingInt, RangesKt.coerceAtLeast(subSize3 - placeableMainAxisSize, i3));
                int crossAxisSpace4 = Math.max(crossAxisSpace2, placeableCrossAxisSize);
                placeables[i7] = placeable;
                spaceAfterLastNoWeight = spaceAfterLastNoWeight3;
                weightChildrenCount6 = placeableMainAxisSize + spaceAfterLastNoWeight3 + fixedSpace6;
                crossAxisSpace3 = crossAxisSpace4;
                weightChildrenCount7 = weightChildrenCount5;
                totalWeight6 = totalWeight5;
            }
            i7++;
            i5 = crossAxisMax;
            childrenMainAxisSize4 = childrenMainAxisSize3;
            subSize4 = subSize2;
            arrangementSpacingPx7 = arrangementSpacingPx6;
        }
        int fixedSpace8 = weightChildrenCount6;
        float totalWeight7 = totalWeight6;
        int[] childrenMainAxisSize5 = childrenMainAxisSize4;
        int weightChildrenCount8 = weightChildrenCount7;
        if (weightChildrenCount8 != 0) {
            int targetSpace = mainAxisMax != Integer.MAX_VALUE ? mainAxisMax : mainAxisMin;
            long arrangementSpacingPx8 = arrangementSpacingPx;
            long arrangementSpacingTotal3 = (weightChildrenCount8 - 1) * arrangementSpacingPx8;
            int crossAxisSpace5 = crossAxisSpace3;
            long remainingToTarget3 = RangesKt.coerceAtLeast((targetSpace - fixedSpace8) - arrangementSpacingTotal3, 0L);
            float totalWeight8 = totalWeight7;
            float weightUnitSpace3 = remainingToTarget3 / totalWeight8;
            long remainder = remainingToTarget3;
            childrenMainAxisSize = childrenMainAxisSize5;
            int i9 = startIndex;
            while (true) {
                totalWeight = totalWeight8;
                remainingToTarget = remainingToTarget3;
                str = "fixedSpace ";
                str2 = "remainingToTarget ";
                str3 = "weightChildrenCount ";
                arrangementSpacingTotal = arrangementSpacingTotal3;
                str4 = "targetSpace ";
                if (i9 >= i6) {
                    break;
                }
                Measurable measurable = list2.get(i9);
                float itemWeight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(measurable));
                float weightedSize = weightUnitSpace3 * itemWeight;
                try {
                    remainder -= Math.round(weightedSize);
                    i9++;
                    list2 = list;
                    i6 = endIndex;
                    remainingToTarget3 = remainingToTarget;
                    totalWeight8 = totalWeight;
                    arrangementSpacingTotal3 = arrangementSpacingTotal;
                } catch (IllegalArgumentException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax ").append(mainAxisMax).append("mainAxisMin ").append(mainAxisMin).append("targetSpace ").append(targetSpace).append("arrangementSpacingPx ").append(arrangementSpacingPx8).append("weightChildrenCount ").append(weightChildrenCount8).append("fixedSpace ").append(fixedSpace8).append("arrangementSpacingTotal ").append(arrangementSpacingTotal).append(str2).append(remainingToTarget).append("totalWeight ").append(totalWeight).append("weightUnitSpace ").append(weightUnitSpace3).append("itemWeight ").append(itemWeight).append("weightedSize ");
                    sb.append(weightedSize);
                    IllegalArgumentException exception$iv = new IllegalArgumentException(sb.toString());
                    throw exception$iv.initCause(e);
                }
            }
            int fixedSpace9 = fixedSpace8;
            String str20 = "arrangementSpacingTotal ";
            String str21 = "mainAxisMin ";
            String str22 = "totalWeight ";
            String str23 = "weightedSize ";
            String str24 = "weightUnitSpace ";
            long remainingToTarget4 = remainingToTarget;
            float totalWeight9 = totalWeight;
            String str25 = "arrangementSpacingPx ";
            long remainder2 = remainder;
            int i10 = startIndex;
            int weightedSpace2 = 0;
            long arrangementSpacingTotal4 = arrangementSpacingTotal;
            int crossAxisSpace6 = crossAxisSpace5;
            while (true) {
                long arrangementSpacingPx9 = arrangementSpacingPx8;
                if (i10 >= endIndex) {
                    weightChildrenCount = weightChildrenCount8;
                    int fixedSpace10 = fixedSpace9;
                    totalWeight2 = totalWeight9;
                    arrangementSpacingPx2 = arrangementSpacingPx9;
                    rowColumnMeasurePolicy = $this$measure;
                    weightedSpace = RangesKt.coerceIn((int) (weightedSpace2 + arrangementSpacingTotal4), 0, mainAxisMax - fixedSpace10);
                    fixedSpace = fixedSpace10;
                    crossAxisSpace = crossAxisSpace6;
                    break;
                }
                if (placeables[i10] == null) {
                    int i11 = i10;
                    Measurable child2 = list.get(i10);
                    RowColumnParentData parentData2 = RowColumnImplKt.getRowColumnParentData(child2);
                    float weight3 = RowColumnImplKt.getWeight(parentData2);
                    if (crossAxisMax == Integer.MAX_VALUE || parentData2 == null || (it = parentData2.getFlowLayoutData()) == null) {
                        numValueOf = null;
                    } else {
                        float $this$fastRoundToInt$iv2 = it.getFillCrossAxisFraction() * crossAxisMax;
                        int $i$f$fastRoundToInt2 = Math.round($this$fastRoundToInt$iv2);
                        numValueOf = Integer.valueOf($i$f$fastRoundToInt2);
                    }
                    Integer crossAxisDesiredSize3 = numValueOf;
                    if (!(weight3 > 0.0f)) {
                        throw new IllegalStateException("All weights <= 0 should have placeables".toString());
                    }
                    int remainderUnit2 = MathKt.getSign(remainder2);
                    String str26 = str3;
                    remainder2 -= remainderUnit2;
                    float weightedSize2 = weightUnitSpace3 * weight3;
                    int childMainAxisSize2 = Math.max(0, Math.round(weightedSize2) + remainderUnit2);
                    try {
                        int i12 = (!RowColumnImplKt.getFill(parentData2) || childMainAxisSize2 == Integer.MAX_VALUE) ? 0 : childMainAxisSize2;
                        if (crossAxisDesiredSize3 != null) {
                            try {
                                iIntValue = crossAxisDesiredSize3.intValue();
                            } catch (IllegalArgumentException e2) {
                                e = e2;
                                childMainAxisSize = childMainAxisSize2;
                                fixedSpace4 = fixedSpace9;
                                arrangementSpacingTotal2 = arrangementSpacingTotal4;
                                totalWeight4 = totalWeight9;
                                str15 = str26;
                                remainingToTarget2 = remainingToTarget4;
                                str16 = str2;
                                weight = weight3;
                                str17 = str22;
                                fixedSpace5 = targetSpace;
                                weightChildrenCount3 = weightChildrenCount8;
                                crossAxisDesiredSize = crossAxisDesiredSize3;
                                remainderUnit = remainderUnit2;
                                str18 = str24;
                                str7 = str25;
                                arrangementSpacingPx5 = arrangementSpacingPx9;
                                weightUnitSpace2 = weightUnitSpace3;
                                str14 = str21;
                                str19 = str;
                                StringBuilder sb2 = new StringBuilder();
                                StringBuilder sbAppend = sb2.append("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax ").append(mainAxisMax).append(str14).append(mainAxisMin).append(str4).append(fixedSpace5).append(str7).append(arrangementSpacingPx5).append(str15).append(weightChildrenCount3).append(str19).append(fixedSpace4).append(str20);
                                long arrangementSpacingPx10 = arrangementSpacingTotal2;
                                sbAppend.append(arrangementSpacingPx10).append(str16).append(remainingToTarget2).append(str17).append(totalWeight4).append(str18).append(weightUnitSpace2).append("weight ").append(weight).append(str23);
                                sb2.append(weightedSize2).append("crossAxisDesiredSize ").append(crossAxisDesiredSize).append("remainderUnit ").append(remainderUnit).append("childMainAxisSize ").append(childMainAxisSize);
                                IllegalArgumentException exception$iv2 = new IllegalArgumentException(sb2.toString());
                                throw exception$iv2.initCause(e);
                            }
                        } else {
                            iIntValue = 0;
                        }
                        int iIntValue3 = crossAxisDesiredSize3 != null ? crossAxisDesiredSize3.intValue() : crossAxisMax;
                        String str27 = str22;
                        float totalWeight10 = totalWeight9;
                        remainderUnit = remainderUnit2;
                        crossAxisDesiredSize = crossAxisDesiredSize3;
                        String str28 = str24;
                        weightUnitSpace2 = weightUnitSpace3;
                        String str29 = str2;
                        str18 = str28;
                        totalWeight4 = totalWeight10;
                        remainingToTarget2 = remainingToTarget4;
                        str17 = str27;
                        str16 = str29;
                        str14 = str21;
                        i2 = i12;
                        fixedSpace4 = fixedSpace9;
                        fixedSpace5 = targetSpace;
                        str19 = str;
                        int weightChildrenCount9 = weightChildrenCount8;
                        weightChildrenCount4 = iIntValue3;
                        childMainAxisSize = childMainAxisSize2;
                        arrangementSpacingTotal2 = arrangementSpacingTotal4;
                        i = i11;
                        weight = weight3;
                        weightChildrenCount3 = weightChildrenCount9;
                        str15 = str26;
                        str7 = str25;
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        childMainAxisSize = childMainAxisSize2;
                        fixedSpace4 = fixedSpace9;
                        arrangementSpacingTotal2 = arrangementSpacingTotal4;
                        totalWeight4 = totalWeight9;
                        str15 = str26;
                        remainingToTarget2 = remainingToTarget4;
                        str16 = str2;
                        weight = weight3;
                        str17 = str22;
                        fixedSpace5 = targetSpace;
                        weightChildrenCount3 = weightChildrenCount8;
                        crossAxisDesiredSize = crossAxisDesiredSize3;
                        remainderUnit = remainderUnit2;
                        str18 = str24;
                        str7 = str25;
                        arrangementSpacingPx5 = arrangementSpacingPx9;
                        weightUnitSpace2 = weightUnitSpace3;
                        str14 = str21;
                        str19 = str;
                    }
                    try {
                        long childConstraints = $this$measure.mo596createConstraintsxF2OJ5Q(i2, iIntValue, childMainAxisSize2, weightChildrenCount4, true);
                        Placeable placeable2 = child2.mo5339measureBRTryo0(childConstraints);
                        int placeableMainAxisSize2 = $this$measure.mainAxisSize(placeable2);
                        int placeableCrossAxisSize2 = $this$measure.crossAxisSize(placeable2);
                        childrenMainAxisSize[i - startIndex] = placeableMainAxisSize2;
                        weightedSpace2 += placeableMainAxisSize2;
                        crossAxisSpace6 = Math.max(crossAxisSpace6, placeableCrossAxisSize2);
                        placeables[i] = placeable2;
                        fixedSpace3 = fixedSpace4;
                        weightChildrenCount2 = weightChildrenCount3;
                        str5 = str16;
                        str9 = str17;
                        weightUnitSpace = weightUnitSpace2;
                        str10 = str18;
                        str6 = str20;
                        str8 = str19;
                        str11 = str4;
                        fixedSpace2 = fixedSpace5;
                        str12 = str23;
                        totalWeight3 = totalWeight4;
                        str13 = str15;
                        arrangementSpacingPx4 = arrangementSpacingPx9;
                        arrangementSpacingPx3 = arrangementSpacingTotal2;
                    } catch (IllegalArgumentException e4) {
                        e = e4;
                        arrangementSpacingPx5 = arrangementSpacingPx9;
                        StringBuilder sb22 = new StringBuilder();
                        StringBuilder sbAppend2 = sb22.append("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax ").append(mainAxisMax).append(str14).append(mainAxisMin).append(str4).append(fixedSpace5).append(str7).append(arrangementSpacingPx5).append(str15).append(weightChildrenCount3).append(str19).append(fixedSpace4).append(str20);
                        long arrangementSpacingPx102 = arrangementSpacingTotal2;
                        sbAppend2.append(arrangementSpacingPx102).append(str16).append(remainingToTarget2).append(str17).append(totalWeight4).append(str18).append(weightUnitSpace2).append("weight ").append(weight).append(str23);
                        sb22.append(weightedSize2).append("crossAxisDesiredSize ").append(crossAxisDesiredSize).append("remainderUnit ").append(remainderUnit).append("childMainAxisSize ").append(childMainAxisSize);
                        IllegalArgumentException exception$iv22 = new IllegalArgumentException(sb22.toString());
                        throw exception$iv22.initCause(e);
                    }
                } else {
                    fixedSpace2 = targetSpace;
                    weightChildrenCount2 = weightChildrenCount8;
                    arrangementSpacingPx3 = arrangementSpacingTotal4;
                    remainingToTarget2 = remainingToTarget4;
                    str5 = str2;
                    str6 = str20;
                    str7 = str25;
                    arrangementSpacingPx4 = arrangementSpacingPx9;
                    str8 = str;
                    i = i10;
                    fixedSpace3 = fixedSpace9;
                    totalWeight3 = totalWeight9;
                    str9 = str22;
                    str10 = str24;
                    str11 = str4;
                    str12 = str23;
                    str13 = str3;
                    weightUnitSpace = weightUnitSpace3;
                    str14 = str21;
                }
                i10 = i + 1;
                str25 = str7;
                str21 = str14;
                str2 = str5;
                str20 = str6;
                weightUnitSpace3 = weightUnitSpace;
                str3 = str13;
                str23 = str12;
                str4 = str11;
                str24 = str10;
                str22 = str9;
                totalWeight9 = totalWeight3;
                fixedSpace9 = fixedSpace3;
                str = str8;
                remainingToTarget4 = remainingToTarget2;
                long j = arrangementSpacingPx3;
                weightChildrenCount8 = weightChildrenCount2;
                targetSpace = fixedSpace2;
                arrangementSpacingPx8 = arrangementSpacingPx4;
                arrangementSpacingTotal4 = j;
            }
        } else {
            weightedSpace = 0;
            weightChildrenCount = weightChildrenCount8;
            childrenMainAxisSize = childrenMainAxisSize5;
            rowColumnMeasurePolicy = $this$measure;
            totalWeight2 = totalWeight7;
            arrangementSpacingPx2 = arrangementSpacingPx;
            crossAxisSpace = crossAxisSpace3;
            fixedSpace = fixedSpace8 - spaceAfterLastNoWeight;
        }
        if (spaceAfterLastNoWeight2 != 0) {
            int beforeCrossAxisAlignmentLine2 = 0;
            int afterCrossAxisAlignmentLine2 = 0;
            for (int i13 = startIndex; i13 < endIndex; i13++) {
                Placeable placeable3 = placeables[i13];
                Intrinsics.checkNotNull(placeable3);
                CrossAxisAlignment crossAxisAlignment = RowColumnImplKt.getCrossAxisAlignment(RowColumnImplKt.getRowColumnParentData(placeable3));
                Integer alignmentLinePosition = crossAxisAlignment != null ? crossAxisAlignment.calculateAlignmentLinePosition$foundation_layout_release(placeable3) : null;
                if (alignmentLinePosition != null) {
                    int it3 = alignmentLinePosition.intValue();
                    int placeableCrossAxisSize3 = rowColumnMeasurePolicy.crossAxisSize(placeable3);
                    beforeCrossAxisAlignmentLine2 = Math.max(beforeCrossAxisAlignmentLine2, it3 != Integer.MIN_VALUE ? alignmentLinePosition.intValue() : 0);
                    afterCrossAxisAlignmentLine2 = Math.max(afterCrossAxisAlignmentLine2, placeableCrossAxisSize3 - (it3 != Integer.MIN_VALUE ? it3 : placeableCrossAxisSize3));
                }
            }
            beforeCrossAxisAlignmentLine = beforeCrossAxisAlignmentLine2;
            afterCrossAxisAlignmentLine = afterCrossAxisAlignmentLine2;
        }
        int mainAxisLayoutSize = Math.max(RangesKt.coerceAtLeast(fixedSpace + weightedSpace, 0), mainAxisMin);
        int crossAxisLayoutSize = Math.max(crossAxisSpace, Math.max(crossAxisMin, beforeCrossAxisAlignmentLine + afterCrossAxisAlignmentLine));
        int[] mainAxisPositions = new int[subSize];
        for (int i14 = 0; i14 < subSize; i14++) {
            mainAxisPositions[i14] = 0;
        }
        rowColumnMeasurePolicy.populateMainAxisPositions(mainAxisLayoutSize, childrenMainAxisSize, mainAxisPositions, measureScope);
        return $this$measure.placeHelper(placeables, measureScope, beforeCrossAxisAlignmentLine, mainAxisPositions, mainAxisLayoutSize, crossAxisLayoutSize, crossAxisOffset, currentLineIndex, startIndex, endIndex);
    }
}
