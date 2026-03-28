package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Color.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u0014\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a9\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\u0016H\u0007¢\u0006\u0002\u0010\u0017\u001a\u0017\u0010\u000f\u001a\u00020\u00072\b\b\u0001\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\u0010\u001a\u001a5\u0010\u000f\u001a\u00020\u00072\b\b\u0001\u0010\u0010\u001a\u00020\u00192\b\b\u0001\u0010\u0012\u001a\u00020\u00192\b\b\u0001\u0010\u0013\u001a\u00020\u00192\b\b\u0003\u0010\u0014\u001a\u00020\u0019H\u0007¢\u0006\u0002\u0010\u001b\u001a\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a9\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\u0016H\u0001¢\u0006\u0002\u0010\u0017\u001a1\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u0011H\u0082\b\u001a,\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00072\b\b\u0001\u0010(\u001a\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a\u001e\u0010+\u001a\u00020\u0007*\u00020\u00072\u0006\u0010,\u001a\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b-\u0010.\u001a\u0016\u0010/\u001a\u000200*\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a\u0016\u00103\u001a\u00020\u0011*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001a%\u00106\u001a\u00020\u0007*\u00020\u00072\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u000708H\u0086\bø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001a\u0016\u0010;\u001a\u00020\u0019*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b<\u0010=\"\u0018\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T¢\u0006\n\n\u0002\u0010\u0004\u0012\u0004\b\u0002\u0010\u0003\"\u001f\u0010\u0005\u001a\u00020\u0006*\u00020\u00078Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u001f\u0010\f\u001a\u00020\u0006*\u00020\u00078Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000b\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006>"}, d2 = {"UnspecifiedColor", "Lkotlin/ULong;", "getUnspecifiedColor$annotations", "()V", "J", "isSpecified", "", "Landroidx/compose/ui/graphics/Color;", "isSpecified-8_81llA$annotations", "(J)V", "isSpecified-8_81llA", "(J)Z", "isUnspecified", "isUnspecified-8_81llA$annotations", "isUnspecified-8_81llA", "Color", "red", "", "green", "blue", "alpha", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J", "color", "", "(I)J", "(IIII)J", "", "(J)J", "UncheckedColor", "compositeComponent", "fgC", "bgC", "fgA", "bgA", "a", "lerp", "start", "stop", "fraction", "lerp-jxsXWHM", "(JJF)J", "compositeOver", "background", "compositeOver--OWjLjI", "(JJ)J", "getComponents", "", "getComponents-8_81llA", "(J)[F", "luminance", "luminance-8_81llA", "(J)F", "takeOrElse", "block", "Lkotlin/Function0;", "takeOrElse-DxMtmZc", "(JLkotlin/jvm/functions/Function0;)J", "toArgb", "toArgb-8_81llA", "(J)I", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ColorKt {
    public static final long UnspecifiedColor = 16;

    public static /* synthetic */ void getUnspecifiedColor$annotations() {
    }

    /* renamed from: isSpecified-8_81llA$annotations, reason: not valid java name */
    public static /* synthetic */ void m4051isSpecified8_81llA$annotations(long j) {
    }

    /* renamed from: isUnspecified-8_81llA$annotations, reason: not valid java name */
    public static /* synthetic */ void m4053isUnspecified8_81llA$annotations(long j) {
    }

    public static /* synthetic */ long Color$default(float f, float f2, float f3, float f4, ColorSpace colorSpace, int i, Object obj) {
        if ((i & 8) != 0) {
            f4 = 1.0f;
        }
        if ((i & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return Color(f, f2, f3, f4, colorSpace);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long Color(float r22, float r23, float r24, float r25, androidx.compose.ui.graphics.colorspace.ColorSpace r26) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.Color(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    public static /* synthetic */ long UncheckedColor$default(float f, float f2, float f3, float f4, ColorSpace colorSpace, int i, Object obj) {
        if ((i & 8) != 0) {
            f4 = 1.0f;
        }
        if ((i & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return UncheckedColor(f, f2, f3, f4, colorSpace);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long UncheckedColor(float r19, float r20, float r21, float r22, androidx.compose.ui.graphics.colorspace.ColorSpace r23) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.UncheckedColor(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    public static final long Color(int color) {
        return Color.m3999constructorimpl(ULong.m7130constructorimpl(ULong.m7130constructorimpl(color) << 32));
    }

    public static final long Color(long color) {
        return Color.m3999constructorimpl(ULong.m7130constructorimpl(color << 32));
    }

    public static /* synthetic */ long Color$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 8) != 0) {
            i4 = 255;
        }
        return Color(i, i2, i3, i4);
    }

    public static final long Color(int red, int green, int blue, int alpha) {
        int color = ((alpha & 255) << 24) | ((red & 255) << 16) | ((green & 255) << 8) | (blue & 255);
        return Color(color);
    }

    /* renamed from: lerp-jxsXWHM, reason: not valid java name */
    public static final long m4054lerpjxsXWHM(long start, long stop, float fraction) {
        ColorSpace colorSpace = ColorSpaces.INSTANCE.getOklab();
        long startColor = Color.m4000convertvNxB06k(start, colorSpace);
        long endColor = Color.m4000convertvNxB06k(stop, colorSpace);
        float startAlpha = Color.m4005getAlphaimpl(startColor);
        float startL = Color.m4009getRedimpl(startColor);
        float startA = Color.m4008getGreenimpl(startColor);
        float startB = Color.m4006getBlueimpl(startColor);
        float endAlpha = Color.m4005getAlphaimpl(endColor);
        float endL = Color.m4009getRedimpl(endColor);
        float endA = Color.m4008getGreenimpl(endColor);
        float endB = Color.m4006getBlueimpl(endColor);
        float $this$fastCoerceAtLeast$iv$iv = fraction;
        if ($this$fastCoerceAtLeast$iv$iv < 0.0f) {
            $this$fastCoerceAtLeast$iv$iv = 0.0f;
        }
        if ($this$fastCoerceAtLeast$iv$iv > 1.0f) {
            $this$fastCoerceAtLeast$iv$iv = 1.0f;
        }
        float minimumValue$iv = $this$fastCoerceAtLeast$iv$iv;
        long interpolated = UncheckedColor(MathHelpersKt.lerp(startL, endL, minimumValue$iv), MathHelpersKt.lerp(startA, endA, minimumValue$iv), MathHelpersKt.lerp(startB, endB, minimumValue$iv), MathHelpersKt.lerp(startAlpha, endAlpha, minimumValue$iv), colorSpace);
        return Color.m4000convertvNxB06k(interpolated, Color.m4007getColorSpaceimpl(stop));
    }

    /* renamed from: compositeOver--OWjLjI, reason: not valid java name */
    public static final long m4048compositeOverOWjLjI(long $this$compositeOver_u2d_u2dOWjLjI, long background) {
        float f;
        float f2;
        long fg = Color.m4000convertvNxB06k($this$compositeOver_u2d_u2dOWjLjI, Color.m4007getColorSpaceimpl(background));
        float bgA = Color.m4005getAlphaimpl(background);
        float fgA = Color.m4005getAlphaimpl(fg);
        float a = ((1.0f - fgA) * bgA) + fgA;
        float fgC$iv = Color.m4009getRedimpl(fg);
        float bgC$iv = Color.m4009getRedimpl(background);
        float f3 = 0.0f;
        if (!(a == 0.0f)) {
            f = ((fgC$iv * fgA) + ((bgC$iv * bgA) * (1.0f - fgA))) / a;
        } else {
            f = 0.0f;
        }
        float fgC$iv2 = f;
        float fgC$iv3 = Color.m4008getGreenimpl(fg);
        float bgC$iv2 = Color.m4008getGreenimpl(background);
        if (!(a == 0.0f)) {
            f2 = ((fgC$iv3 * fgA) + ((bgC$iv2 * bgA) * (1.0f - fgA))) / a;
        } else {
            f2 = 0.0f;
        }
        float fgC$iv4 = f2;
        float fgC$iv5 = Color.m4006getBlueimpl(fg);
        float bgC$iv3 = Color.m4006getBlueimpl(background);
        if (!(a == 0.0f)) {
            f3 = ((fgC$iv5 * fgA) + ((bgC$iv3 * bgA) * (1.0f - fgA))) / a;
        }
        float b = f3;
        return UncheckedColor(fgC$iv2, fgC$iv4, b, a, Color.m4007getColorSpaceimpl(background));
    }

    private static final float compositeComponent(float fgC, float bgC, float fgA, float bgA, float a) {
        if (a == 0.0f) {
            return 0.0f;
        }
        return ((fgC * fgA) + ((bgC * bgA) * (1.0f - fgA))) / a;
    }

    /* renamed from: getComponents-8_81llA, reason: not valid java name */
    private static final float[] m4049getComponents8_81llA(long $this$getComponents_u2d8_81llA) {
        return new float[]{Color.m4009getRedimpl($this$getComponents_u2d8_81llA), Color.m4008getGreenimpl($this$getComponents_u2d8_81llA), Color.m4006getBlueimpl($this$getComponents_u2d8_81llA), Color.m4005getAlphaimpl($this$getComponents_u2d8_81llA)};
    }

    /* renamed from: luminance-8_81llA, reason: not valid java name */
    public static final float m4055luminance8_81llA(long $this$luminance_u2d8_81llA) {
        ColorSpace colorSpace = Color.m4007getColorSpaceimpl($this$luminance_u2d8_81llA);
        boolean value$iv = ColorModel.m4410equalsimpl0(colorSpace.getModel(), ColorModel.INSTANCE.m4417getRgbxdoWZVw());
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) ColorModel.m4413toStringimpl(colorSpace.getModel())));
        }
        Intrinsics.checkNotNull(colorSpace, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
        DoubleFunction eotf = ((Rgb) colorSpace).getEotfFunc();
        double r = eotf.invoke(Color.m4009getRedimpl($this$luminance_u2d8_81llA));
        double g = eotf.invoke(Color.m4008getGreenimpl($this$luminance_u2d8_81llA));
        double b = eotf.invoke(Color.m4006getBlueimpl($this$luminance_u2d8_81llA));
        float $this$fastCoerceIn$iv = (float) ((0.2126d * r) + (0.7152d * g) + (0.0722d * b));
        float $this$fastCoerceAtLeast$iv$iv = $this$fastCoerceIn$iv;
        if ($this$fastCoerceAtLeast$iv$iv < 0.0f) {
            $this$fastCoerceAtLeast$iv$iv = 0.0f;
        }
        if ($this$fastCoerceAtLeast$iv$iv > 1.0f) {
            return 1.0f;
        }
        return $this$fastCoerceAtLeast$iv$iv;
    }

    /* renamed from: toArgb-8_81llA, reason: not valid java name */
    public static final int m4057toArgb8_81llA(long $this$toArgb_u2d8_81llA) {
        return (int) ULong.m7130constructorimpl(Color.m4000convertvNxB06k($this$toArgb_u2d8_81llA, ColorSpaces.INSTANCE.getSrgb()) >>> 32);
    }

    /* renamed from: isSpecified-8_81llA, reason: not valid java name */
    public static final boolean m4050isSpecified8_81llA(long $this$isSpecified) {
        return $this$isSpecified != 16;
    }

    /* renamed from: isUnspecified-8_81llA, reason: not valid java name */
    public static final boolean m4052isUnspecified8_81llA(long $this$isUnspecified) {
        return $this$isUnspecified == 16;
    }

    /* renamed from: takeOrElse-DxMtmZc, reason: not valid java name */
    public static final long m4056takeOrElseDxMtmZc(long $this$takeOrElse_u2dDxMtmZc, Function0<Color> function0) {
        return ($this$takeOrElse_u2dDxMtmZc > 16L ? 1 : ($this$takeOrElse_u2dDxMtmZc == 16L ? 0 : -1)) != 0 ? $this$takeOrElse_u2dDxMtmZc : function0.invoke().m4013unboximpl();
    }
}
