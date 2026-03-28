package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.text.Handle;
import kotlin.Metadata;

/* compiled from: TextFieldMagnifier.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a2\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0000ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\f"}, d2 = {"calculateSelectionMagnifierCenterAndroid", "Landroidx/compose/ui/geometry/Offset;", "textFieldState", "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;", "selectionState", "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;", "textLayoutState", "Landroidx/compose/foundation/text/input/internal/TextLayoutState;", "magnifierSize", "Landroidx/compose/ui/unit/IntSize;", "calculateSelectionMagnifierCenterAndroid-hUlJWOE", "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;J)J", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldMagnifierKt {

    /* compiled from: TextFieldMagnifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            try {
                iArr[Handle.Cursor.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Handle.SelectionStart.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Handle.SelectionEnd.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /* renamed from: calculateSelectionMagnifierCenterAndroid-hUlJWOE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long m1246calculateSelectionMagnifierCenterAndroidhUlJWOE(androidx.compose.foundation.text.input.internal.TransformedTextFieldState r22, androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r23, androidx.compose.foundation.text.input.internal.TextLayoutState r24, long r25) {
        /*
            long r0 = r23.m1270getHandleDragPositionF1C5BW0()
            boolean r2 = androidx.compose.ui.geometry.OffsetKt.m3783isUnspecifiedk4lQ0M(r0)
            if (r2 != 0) goto Le8
            androidx.compose.foundation.text.input.TextFieldCharSequence r2 = r22.getVisualText()
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            int r2 = r2.length()
            if (r2 != 0) goto L18
            r2 = 1
            goto L19
        L18:
            r2 = 0
        L19:
            if (r2 == 0) goto L20
            r2 = r24
            r15 = r0
            goto Leb
        L20:
            androidx.compose.foundation.text.input.TextFieldCharSequence r2 = r22.getVisualText()
            long r2 = r2.getSelection()
            androidx.compose.foundation.text.Handle r4 = r23.getDraggingHandle()
            if (r4 != 0) goto L30
            r4 = -1
            goto L38
        L30:
            int[] r5 = androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierKt.WhenMappings.$EnumSwitchMapping$0
            int r4 = r4.ordinal()
            r4 = r5[r4]
        L38:
            switch(r4) {
                case -1: goto Le0;
                case 0: goto L3b;
                case 1: goto L47;
                case 2: goto L47;
                case 3: goto L42;
                default: goto L3b;
            }
        L3b:
            r15 = r0
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        L42:
            int r4 = androidx.compose.ui.text.TextRange.m5943getEndimpl(r2)
            goto L4b
        L47:
            int r4 = androidx.compose.ui.text.TextRange.m5948getStartimpl(r2)
        L4b:
            androidx.compose.ui.text.TextLayoutResult r5 = r24.getLayoutResult()
            if (r5 != 0) goto L59
            androidx.compose.ui.geometry.Offset$Companion r5 = androidx.compose.ui.geometry.Offset.INSTANCE
            long r5 = r5.m3777getUnspecifiedF1C5BW0()
            return r5
        L59:
            float r6 = androidx.compose.ui.geometry.Offset.m3762getXimpl(r0)
            int r7 = r5.getLineForOffset(r4)
            float r8 = r5.getLineLeft(r7)
            float r9 = r5.getLineRight(r7)
            float r10 = java.lang.Math.min(r8, r9)
            float r11 = java.lang.Math.max(r8, r9)
            float r12 = kotlin.ranges.RangesKt.coerceIn(r6, r10, r11)
            androidx.compose.ui.unit.IntSize$Companion r13 = androidx.compose.ui.unit.IntSize.INSTANCE
            long r13 = r13.m6660getZeroYbymL2g()
            r15 = r0
            r0 = r25
            boolean r13 = androidx.compose.ui.unit.IntSize.m6653equalsimpl0(r0, r13)
            r14 = 2
            if (r13 != 0) goto L9d
            float r13 = r6 - r12
            float r13 = java.lang.Math.abs(r13)
            int r17 = androidx.compose.ui.unit.IntSize.m6655getWidthimpl(r25)
            int r0 = r17 / 2
            float r0 = (float) r0
            int r0 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r0 <= 0) goto L9d
            androidx.compose.ui.geometry.Offset$Companion r0 = androidx.compose.ui.geometry.Offset.INSTANCE
            long r0 = r0.m3777getUnspecifiedF1C5BW0()
            return r0
        L9d:
            float r0 = r5.getLineTop(r7)
            float r1 = r5.getLineBottom(r7)
            float r13 = r1 - r0
            float r14 = (float) r14
            float r13 = r13 / r14
            float r13 = r13 + r0
            r17 = 0
            r14 = r0
            r19 = r1
            long r0 = androidx.compose.ui.geometry.OffsetKt.Offset(r12, r13)
            androidx.compose.ui.layout.LayoutCoordinates r17 = r24.getTextLayoutNodeCoordinates()
            if (r17 == 0) goto Ld6
            r18 = r17
            r20 = 0
            boolean r18 = r18.isAttached()
            if (r18 == 0) goto Lc4
            goto Lc6
        Lc4:
            r17 = 0
        Lc6:
            if (r17 == 0) goto Ld6
            r18 = 0
            r20 = r2
            androidx.compose.ui.geometry.Rect r2 = androidx.compose.foundation.text.selection.SelectionManagerKt.visibleBounds(r17)
            long r0 = androidx.compose.foundation.text.input.internal.TextLayoutStateKt.m1221coerceIn3MmeM6k(r0, r2)
            goto Ld8
        Ld6:
            r20 = r2
        Ld8:
            r2 = r24
            long r17 = androidx.compose.foundation.text.input.internal.TextLayoutStateKt.m1223fromTextLayoutToCoreUv8p0NA(r2, r0)
            return r17
        Le0:
            r15 = r0
            androidx.compose.ui.geometry.Offset$Companion r0 = androidx.compose.ui.geometry.Offset.INSTANCE
            long r0 = r0.m3777getUnspecifiedF1C5BW0()
            return r0
        Le8:
            r2 = r24
            r15 = r0
        Leb:
            androidx.compose.ui.geometry.Offset$Companion r0 = androidx.compose.ui.geometry.Offset.INSTANCE
            long r0 = r0.m3777getUnspecifiedF1C5BW0()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierKt.m1246calculateSelectionMagnifierCenterAndroidhUlJWOE(androidx.compose.foundation.text.input.internal.TransformedTextFieldState, androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState, androidx.compose.foundation.text.input.internal.TextLayoutState, long):long");
    }
}
