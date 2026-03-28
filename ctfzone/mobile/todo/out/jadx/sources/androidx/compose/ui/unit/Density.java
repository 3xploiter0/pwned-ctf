package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import kotlin.Metadata;

/* compiled from: Density.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001J\u0016\u0010\b\u001a\u00020\t*\u00020\nH\u0017ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\b\u001a\u00020\t*\u00020\rH\u0017ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u00020\n*\u00020\u0003H\u0017ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0010\u001a\u00020\n*\u00020\tH\u0017ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u0015*\u00020\u0016H\u0017ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u0003*\u00020\nH\u0017ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0012J\u0016\u0010\u0019\u001a\u00020\u0003*\u00020\rH\u0017ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\f\u0010\u001d\u001a\u00020\u001e*\u00020\u001fH\u0017J\u0016\u0010 \u001a\u00020\u0016*\u00020\u0015H\u0017ø\u0001\u0000¢\u0006\u0004\b!\u0010\u0018J\u0019\u0010\"\u001a\u00020\r*\u00020\u0003H\u0017ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b#\u0010$J\u0019\u0010\"\u001a\u00020\r*\u00020\tH\u0017ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b#\u0010%R\u001a\u0010\u0002\u001a\u00020\u00038&X§\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006&À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/unit/FontScaling;", "density", "", "getDensity$annotations", "()V", "getDensity", "()F", "roundToPx", "", "Landroidx/compose/ui/unit/Dp;", "roundToPx-0680j_4", "(F)I", "Landroidx/compose/ui/unit/TextUnit;", "roundToPx--R2X_6o", "(J)I", "toDp", "toDp-u2uoSUM", "(F)F", "(I)F", "toDpSize", "Landroidx/compose/ui/unit/DpSize;", "Landroidx/compose/ui/geometry/Size;", "toDpSize-k-rfVVM", "(J)J", "toPx", "toPx-0680j_4", "toPx--R2X_6o", "(J)F", "toRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/unit/DpRect;", "toSize", "toSize-XkaWNTQ", "toSp", "toSp-kPz2Gy4", "(F)J", "(I)J", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Density extends FontScaling {
    float getDensity();

    /* compiled from: Density.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ void getDensity$annotations() {
        }

        @Deprecated
        /* renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m6473toDpGaN1DYA(Density $this, long $receiver) {
            return Density.super.mo368toDpGaN1DYA($receiver);
        }

        @Deprecated
        /* renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m6480toSp0xMU5do(Density $this, float $receiver) {
            return Density.super.mo375toSp0xMU5do($receiver);
        }

        @Deprecated
        /* renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m6478toPx0680j_4(Density $this, float $receiver) {
            return Density.super.mo373toPx0680j_4($receiver);
        }

        @Deprecated
        /* renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m6472roundToPx0680j_4(Density $this, float $receiver) {
            return Density.super.mo367roundToPx0680j_4($receiver);
        }

        @Deprecated
        /* renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m6477toPxR2X_6o(Density $this, long $receiver) {
            return Density.super.mo372toPxR2X_6o($receiver);
        }

        @Deprecated
        /* renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m6471roundToPxR2X_6o(Density $this, long $receiver) {
            return Density.super.mo366roundToPxR2X_6o($receiver);
        }

        @Deprecated
        /* renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m6475toDpu2uoSUM(Density $this, int $receiver) {
            return Density.super.mo370toDpu2uoSUM($receiver);
        }

        @Deprecated
        /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m6482toSpkPz2Gy4(Density $this, int $receiver) {
            return Density.super.mo377toSpkPz2Gy4($receiver);
        }

        @Deprecated
        /* renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m6474toDpu2uoSUM(Density $this, float $receiver) {
            return Density.super.mo369toDpu2uoSUM($receiver);
        }

        @Deprecated
        /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m6481toSpkPz2Gy4(Density $this, float $receiver) {
            return Density.super.mo376toSpkPz2Gy4($receiver);
        }

        @Deprecated
        public static Rect toRect(Density $this, DpRect $receiver) {
            return Density.super.toRect($receiver);
        }

        @Deprecated
        /* renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m6479toSizeXkaWNTQ(Density $this, long $receiver) {
            return Density.super.mo374toSizeXkaWNTQ($receiver);
        }

        @Deprecated
        /* renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m6476toDpSizekrfVVM(Density $this, long $receiver) {
            return Density.super.mo371toDpSizekrfVVM($receiver);
        }
    }

    /* renamed from: toPx-0680j_4 */
    default float mo373toPx0680j_4(float $this$toPx_u2d0680j_4) {
        return getDensity() * $this$toPx_u2d0680j_4;
    }

    /* renamed from: roundToPx-0680j_4 */
    default int mo367roundToPx0680j_4(float $this$roundToPx_u2d0680j_4) {
        float px = mo373toPx0680j_4($this$roundToPx_u2d0680j_4);
        if (Float.isInfinite(px)) {
            return Integer.MAX_VALUE;
        }
        return Math.round(px);
    }

    /* renamed from: toPx--R2X_6o */
    default float mo372toPxR2X_6o(long $this$toPx_u2d_u2dR2X_6o) {
        if (TextUnitType.m6706equalsimpl0(TextUnit.m6677getTypeUIouoOA($this$toPx_u2d_u2dR2X_6o), TextUnitType.INSTANCE.m6711getSpUIouoOA())) {
            return mo373toPx0680j_4(mo368toDpGaN1DYA($this$toPx_u2d_u2dR2X_6o));
        }
        throw new IllegalStateException("Only Sp can convert to Px".toString());
    }

    /* renamed from: roundToPx--R2X_6o */
    default int mo366roundToPxR2X_6o(long $this$roundToPx_u2d_u2dR2X_6o) {
        float $this$fastRoundToInt$iv = mo372toPxR2X_6o($this$roundToPx_u2d_u2dR2X_6o);
        return Math.round($this$fastRoundToInt$iv);
    }

    /* renamed from: toDp-u2uoSUM */
    default float mo370toDpu2uoSUM(int $this$toDp_u2du2uoSUM) {
        float $this$dp$iv = $this$toDp_u2du2uoSUM / getDensity();
        return Dp.m6485constructorimpl($this$dp$iv);
    }

    /* renamed from: toSp-kPz2Gy4 */
    default long mo377toSpkPz2Gy4(int $this$toSp_u2dkPz2Gy4) {
        return mo375toSp0xMU5do(mo370toDpu2uoSUM($this$toSp_u2dkPz2Gy4));
    }

    /* renamed from: toDp-u2uoSUM */
    default float mo369toDpu2uoSUM(float $this$toDp_u2du2uoSUM) {
        float $this$dp$iv = $this$toDp_u2du2uoSUM / getDensity();
        return Dp.m6485constructorimpl($this$dp$iv);
    }

    /* renamed from: toSp-kPz2Gy4 */
    default long mo376toSpkPz2Gy4(float $this$toSp_u2dkPz2Gy4) {
        return mo375toSp0xMU5do(mo369toDpu2uoSUM($this$toSp_u2dkPz2Gy4));
    }

    default Rect toRect(DpRect $this$toRect) {
        return new Rect(mo373toPx0680j_4($this$toRect.m6568getLeftD9Ej5fM()), mo373toPx0680j_4($this$toRect.m6570getTopD9Ej5fM()), mo373toPx0680j_4($this$toRect.m6569getRightD9Ej5fM()), mo373toPx0680j_4($this$toRect.m6567getBottomD9Ej5fM()));
    }

    /* renamed from: toSize-XkaWNTQ */
    default long mo374toSizeXkaWNTQ(long $this$toSize_u2dXkaWNTQ) {
        if ($this$toSize_u2dXkaWNTQ != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            return SizeKt.Size(mo373toPx0680j_4(DpSize.m6583getWidthD9Ej5fM($this$toSize_u2dXkaWNTQ)), mo373toPx0680j_4(DpSize.m6581getHeightD9Ej5fM($this$toSize_u2dXkaWNTQ)));
        }
        return Size.INSTANCE.m3839getUnspecifiedNHjbRc();
    }

    /* renamed from: toDpSize-k-rfVVM */
    default long mo371toDpSizekrfVVM(long $this$toDpSize_u2dk_u2drfVVM) {
        if ($this$toDpSize_u2dk_u2drfVVM != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            return DpKt.m6507DpSizeYgX7TsA(mo369toDpu2uoSUM(Size.m3831getWidthimpl($this$toDpSize_u2dk_u2drfVVM)), mo369toDpu2uoSUM(Size.m3828getHeightimpl($this$toDpSize_u2dk_u2drfVVM)));
        }
        return DpSize.INSTANCE.m6592getUnspecifiedMYxV2XQ();
    }
}
