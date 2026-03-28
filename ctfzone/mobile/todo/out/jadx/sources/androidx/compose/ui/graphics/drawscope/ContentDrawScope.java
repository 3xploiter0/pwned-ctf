package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: ContentDrawScope.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "drawContent", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ContentDrawScope extends DrawScope {
    void drawContent();

    /* compiled from: ContentDrawScope.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: drawImage-AZ2fEMs, reason: not valid java name */
        public static void m4505drawImageAZ2fEMs(ContentDrawScope $this, ImageBitmap image, long srcOffset, long srcSize, long dstOffset, long dstSize, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode, int filterQuality) {
            ContentDrawScope.super.mo4461drawImageAZ2fEMs(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode, filterQuality);
        }

        @Deprecated
        /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
        public static long m4506getCenterF1C5BW0(ContentDrawScope $this) {
            return ContentDrawScope.super.mo4558getCenterF1C5BW0();
        }

        @Deprecated
        /* renamed from: getSize-NH-jbRc, reason: not valid java name */
        public static long m4507getSizeNHjbRc(ContentDrawScope $this) {
            return ContentDrawScope.super.mo4559getSizeNHjbRc();
        }

        @Deprecated
        /* renamed from: record-JVtK1S4, reason: not valid java name */
        public static void m4508recordJVtK1S4(ContentDrawScope $this, GraphicsLayer $receiver, long size, Function1<? super DrawScope, Unit> function1) {
            ContentDrawScope.super.mo4560recordJVtK1S4($receiver, size, function1);
        }

        @Deprecated
        /* renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m4509roundToPxR2X_6o(ContentDrawScope $this, long $receiver) {
            return ContentDrawScope.super.mo366roundToPxR2X_6o($receiver);
        }

        @Deprecated
        /* renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m4510roundToPx0680j_4(ContentDrawScope $this, float $receiver) {
            return ContentDrawScope.super.mo367roundToPx0680j_4($receiver);
        }

        @Deprecated
        /* renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m4511toDpGaN1DYA(ContentDrawScope $this, long $receiver) {
            return ContentDrawScope.super.mo368toDpGaN1DYA($receiver);
        }

        @Deprecated
        /* renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m4512toDpu2uoSUM(ContentDrawScope $this, float $receiver) {
            return ContentDrawScope.super.mo369toDpu2uoSUM($receiver);
        }

        @Deprecated
        /* renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m4513toDpu2uoSUM(ContentDrawScope $this, int $receiver) {
            return ContentDrawScope.super.mo370toDpu2uoSUM($receiver);
        }

        @Deprecated
        /* renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m4514toDpSizekrfVVM(ContentDrawScope $this, long $receiver) {
            return ContentDrawScope.super.mo371toDpSizekrfVVM($receiver);
        }

        @Deprecated
        /* renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m4515toPxR2X_6o(ContentDrawScope $this, long $receiver) {
            return ContentDrawScope.super.mo372toPxR2X_6o($receiver);
        }

        @Deprecated
        /* renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m4516toPx0680j_4(ContentDrawScope $this, float $receiver) {
            return ContentDrawScope.super.mo373toPx0680j_4($receiver);
        }

        @Deprecated
        public static Rect toRect(ContentDrawScope $this, DpRect $receiver) {
            return ContentDrawScope.super.toRect($receiver);
        }

        @Deprecated
        /* renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m4517toSizeXkaWNTQ(ContentDrawScope $this, long $receiver) {
            return ContentDrawScope.super.mo374toSizeXkaWNTQ($receiver);
        }

        @Deprecated
        /* renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m4518toSp0xMU5do(ContentDrawScope $this, float $receiver) {
            return ContentDrawScope.super.mo375toSp0xMU5do($receiver);
        }

        @Deprecated
        /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m4519toSpkPz2Gy4(ContentDrawScope $this, float $receiver) {
            return ContentDrawScope.super.mo376toSpkPz2Gy4($receiver);
        }

        @Deprecated
        /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m4520toSpkPz2Gy4(ContentDrawScope $this, int $receiver) {
            return ContentDrawScope.super.mo377toSpkPz2Gy4($receiver);
        }
    }
}
