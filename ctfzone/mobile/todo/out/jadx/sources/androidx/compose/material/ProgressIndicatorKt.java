package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: ProgressIndicator.kt */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\u001a0\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001aD\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u00052\b\b\u0002\u0010'\u001a\u00020#2\b\b\u0002\u0010(\u001a\u00020)H\u0007ø\u0001\u0000¢\u0006\u0004\b*\u0010+\u001a8\u0010\u001e\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020\u00012\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b-\u0010.\u001aN\u0010\u001e\u001a\u00020\u001f2\b\b\u0001\u0010,\u001a\u00020\u00012\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u00052\b\b\u0002\u0010'\u001a\u00020#2\b\b\u0002\u0010(\u001a\u00020)H\u0007ø\u0001\u0000¢\u0006\u0004\b/\u00100\u001a0\u00101\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010'\u001a\u00020#H\u0007ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001a:\u00101\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010'\u001a\u00020#2\b\b\u0002\u0010(\u001a\u00020)H\u0007ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001a8\u00101\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020\u00012\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010'\u001a\u00020#H\u0007ø\u0001\u0000¢\u0006\u0004\b6\u00107\u001aD\u00101\u001a\u00020\u001f2\b\b\u0001\u0010,\u001a\u00020\u00012\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010'\u001a\u00020#2\b\b\u0002\u0010(\u001a\u00020)H\u0007ø\u0001\u0000¢\u0006\u0004\b8\u00109\u001a6\u0010:\u001a\u00020\u001f*\u00020;2\u0006\u0010<\u001a\u00020\u00012\u0006\u0010=\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010>\u001a\u00020?H\u0002ø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a&\u0010B\u001a\u00020\u001f*\u00020;2\u0006\u0010\"\u001a\u00020#2\u0006\u0010>\u001a\u00020?H\u0002ø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001a6\u0010E\u001a\u00020\u001f*\u00020;2\u0006\u0010<\u001a\u00020\u00012\u0006\u0010=\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010>\u001a\u00020?H\u0002ø\u0001\u0000¢\u0006\u0004\bF\u0010A\u001a>\u0010G\u001a\u00020\u001f*\u00020;2\u0006\u0010<\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010>\u001a\u00020?H\u0002ø\u0001\u0000¢\u0006\u0004\bH\u0010I\u001a>\u0010J\u001a\u00020\u001f*\u00020;2\u0006\u0010K\u001a\u00020\u00012\u0006\u0010L\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00012\u0006\u0010(\u001a\u00020)H\u0002ø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001a.\u0010O\u001a\u00020\u001f*\u00020;2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00012\u0006\u0010(\u001a\u00020)H\u0002ø\u0001\u0000¢\u0006\u0004\bP\u0010Q\u001a\f\u0010R\u001a\u00020!*\u00020!H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0012\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0013\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006S²\u0006\n\u0010T\u001a\u00020\u0001X\u008a\u0084\u0002²\u0006\n\u0010U\u001a\u00020\u0001X\u008a\u0084\u0002²\u0006\n\u0010V\u001a\u00020\u0001X\u008a\u0084\u0002²\u0006\n\u0010W\u001a\u00020\u0001X\u008a\u0084\u0002²\u0006\n\u0010X\u001a\u00020\bX\u008a\u0084\u0002²\u0006\n\u0010Y\u001a\u00020\u0001X\u008a\u0084\u0002²\u0006\n\u0010Z\u001a\u00020\u0001X\u008a\u0084\u0002²\u0006\n\u0010<\u001a\u00020\u0001X\u008a\u0084\u0002"}, d2 = {"BaseRotationAngle", "", "CircularEasing", "Landroidx/compose/animation/core/CubicBezierEasing;", "CircularIndicatorDiameter", "Landroidx/compose/ui/unit/Dp;", "F", "FirstLineHeadDelay", "", "FirstLineHeadDuration", "FirstLineHeadEasing", "FirstLineTailDelay", "FirstLineTailDuration", "FirstLineTailEasing", "HeadAndTailAnimationDuration", "HeadAndTailDelayDuration", "JumpRotationAngle", "LinearAnimationDuration", "LinearIndicatorHeight", "LinearIndicatorWidth", "RotationAngleOffset", "RotationDuration", "RotationsPerCycle", "SecondLineHeadDelay", "SecondLineHeadDuration", "SecondLineHeadEasing", "SecondLineTailDelay", "SecondLineTailDuration", "SecondLineTailEasing", "StartAngleOffset", "CircularProgressIndicator", "", "modifier", "Landroidx/compose/ui/Modifier;", "color", "Landroidx/compose/ui/graphics/Color;", "strokeWidth", "CircularProgressIndicator-aM-cp0Q", "(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V", "backgroundColor", "strokeCap", "Landroidx/compose/ui/graphics/StrokeCap;", "CircularProgressIndicator-LxG7B9w", "(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", NotificationCompat.CATEGORY_PROGRESS, "CircularProgressIndicator-MBs18nI", "(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V", "CircularProgressIndicator-DUhRLBM", "(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator", "LinearProgressIndicator-RIQooxk", "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-2cYBFYY", "(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-eaDK9VM", "(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-_5eSR-E", "(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "drawCircularIndicator", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "startAngle", "sweep", "stroke", "Landroidx/compose/ui/graphics/drawscope/Stroke;", "drawCircularIndicator-42QJj7c", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawCircularIndicatorBackground", "drawCircularIndicatorBackground-bw27NRU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawDeterminateCircularIndicator", "drawDeterminateCircularIndicator-42QJj7c", "drawIndeterminateCircularIndicator", "drawIndeterminateCircularIndicator-hrjfTZI", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawLinearIndicator", "startFraction", "endFraction", "drawLinearIndicator-qYKTg0g", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V", "drawLinearIndicatorBackground", "drawLinearIndicatorBackground-AZGd3zU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V", "increaseSemanticsBounds", "material_release", "firstLineHead", "firstLineTail", "secondLineHead", "secondLineTail", "currentRotation", "baseRotation", "endAngle"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProgressIndicatorKt {
    private static final float BaseRotationAngle = 286.0f;
    private static final int FirstLineHeadDelay = 0;
    private static final int FirstLineHeadDuration = 750;
    private static final int FirstLineTailDelay = 333;
    private static final int FirstLineTailDuration = 850;
    private static final int HeadAndTailAnimationDuration = 666;
    private static final int HeadAndTailDelayDuration = 666;
    private static final float JumpRotationAngle = 290.0f;
    private static final int LinearAnimationDuration = 1800;
    private static final float RotationAngleOffset = 216.0f;
    private static final int RotationDuration = 1332;
    private static final int RotationsPerCycle = 5;
    private static final int SecondLineHeadDelay = 1000;
    private static final int SecondLineHeadDuration = 567;
    private static final int SecondLineTailDelay = 1267;
    private static final int SecondLineTailDuration = 533;
    private static final float StartAngleOffset = -90.0f;
    private static final float LinearIndicatorHeight = ProgressIndicatorDefaults.INSTANCE.m1618getStrokeWidthD9Ej5fM();
    private static final float LinearIndicatorWidth = Dp.m6485constructorimpl(240);
    private static final float CircularIndicatorDiameter = Dp.m6485constructorimpl(40);
    private static final CubicBezierEasing FirstLineHeadEasing = new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);
    private static final CubicBezierEasing FirstLineTailEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
    private static final CubicBezierEasing SecondLineHeadEasing = new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);
    private static final CubicBezierEasing SecondLineTailEasing = new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);
    private static final CubicBezierEasing CircularEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);

    public static final Modifier increaseSemanticsBounds(Modifier $this$increaseSemanticsBounds) {
        final float padding = Dp.m6485constructorimpl(10);
        return PaddingKt.m683paddingVpY3zN4$default(SemanticsModifierKt.semantics(LayoutModifierKt.layout($this$increaseSemanticsBounds, new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.material.ProgressIndicatorKt.increaseSemanticsBounds.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                return m1638invoke3p2s80s(measureScope, measurable, constraints.getValue());
            }

            /* renamed from: invoke-3p2s80s, reason: not valid java name */
            public final MeasureResult m1638invoke3p2s80s(MeasureScope $this$layout, Measurable measurable, long constraints) {
                final int paddingPx = $this$layout.mo367roundToPx0680j_4(padding);
                long newConstraint = ConstraintsKt.m6457offsetNN6EwU(constraints, 0, paddingPx * 2);
                final Placeable placeable = measurable.mo5339measureBRTryo0(newConstraint);
                int height = placeable.getHeight() - (paddingPx * 2);
                int width = placeable.getWidth();
                return MeasureScope.layout$default($this$layout, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt.increaseSemanticsBounds.1.1
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
                    public final void invoke2(Placeable.PlacementScope $this$layout2) {
                        Placeable.PlacementScope.place$default($this$layout2, placeable, 0, -paddingPx, 0.0f, 4, null);
                    }
                }, 4, null);
            }
        }), true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt.increaseSemanticsBounds.2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
            }
        }), 0.0f, padding, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01b1  */
    /* renamed from: LinearProgressIndicator-_5eSR-E, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1625LinearProgressIndicator_5eSRE(final float r22, androidx.compose.ui.Modifier r23, long r24, long r26, int r28, androidx.compose.runtime.Composer r29, final int r30, final int r31) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ProgressIndicatorKt.m1625LinearProgressIndicator_5eSRE(float, androidx.compose.ui.Modifier, long, long, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: LinearProgressIndicator-2cYBFYY, reason: not valid java name */
    public static final void m1623LinearProgressIndicator2cYBFYY(Modifier modifier, long color, long backgroundColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        long j2;
        int i2;
        long color2;
        long backgroundColor2;
        int $dirty;
        Modifier modifier3;
        long color3;
        final int strokeCap2;
        long backgroundColor3;
        final long color4;
        int strokeCap3;
        Object value$iv;
        long backgroundColor4;
        Composer $composer2 = $composer.startRestartGroup(1501635280);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(2,1:c#ui.graphics.Color,0:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)139@6460L6,143@6629L28,147@6911L320,158@7276L320,169@7642L324,180@8012L324,191@8341L790:ProgressIndicator.kt#jmzs0o");
        int $dirty2 = $changed;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty2 |= 6;
            modifier2 = modifier;
        } else if (($changed & 14) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 112) == 0) {
            if ((i & 2) == 0) {
                j = color;
                int i4 = $composer2.changed(j) ? 32 : 16;
                $dirty2 |= i4;
            } else {
                j = color;
            }
            $dirty2 |= i4;
        } else {
            j = color;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                j2 = backgroundColor;
                int i5 = $composer2.changed(j2) ? 256 : 128;
                $dirty2 |= i5;
            } else {
                j2 = backgroundColor;
            }
            $dirty2 |= i5;
        } else {
            j2 = backgroundColor;
        }
        if (($changed & 7168) == 0) {
            if ((i & 8) == 0) {
                i2 = strokeCap;
                int i6 = $composer2.changed(i2) ? 2048 : 1024;
                $dirty2 |= i6;
            } else {
                i2 = strokeCap;
            }
            $dirty2 |= i6;
        } else {
            i2 = strokeCap;
        }
        if (($dirty2 & 5851) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            color4 = j;
            backgroundColor4 = j2;
            strokeCap3 = i2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier4 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty2 &= -113;
                } else {
                    color2 = j;
                }
                if ((i & 4) != 0) {
                    long j3 = color2;
                    backgroundColor2 = Color.m4001copywmQWz5c(j3, (14 & 1) != 0 ? Color.m4005getAlphaimpl(j3) : 0.24f, (14 & 2) != 0 ? Color.m4009getRedimpl(j3) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(j3) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(j3) : 0.0f);
                    $dirty2 &= -897;
                } else {
                    backgroundColor2 = j2;
                }
                if ((i & 8) != 0) {
                    $dirty = $dirty2 & (-7169);
                    modifier3 = modifier4;
                    color3 = color2;
                    strokeCap2 = StrokeCap.INSTANCE.m4356getButtKaPHkGw();
                    backgroundColor3 = backgroundColor2;
                } else {
                    $dirty = $dirty2;
                    modifier3 = modifier4;
                    color3 = color2;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty2 &= -7169;
                }
                $dirty = $dirty2;
                modifier3 = modifier2;
                color3 = j;
                strokeCap2 = i2;
                backgroundColor3 = j2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1501635280, $dirty, -1, "androidx.compose.material.LinearProgressIndicator (ProgressIndicator.kt:142)");
            }
            InfiniteTransition infiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition(null, $composer2, 0, 1);
            final long backgroundColor5 = backgroundColor3;
            final State firstLineHead$delegate = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(0.0f), 0), ProgressIndicatorKt.FirstLineHeadEasing);
                    keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(1.0f), 750);
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State firstLineTail$delegate = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(0.0f), 333), ProgressIndicatorKt.FirstLineTailEasing);
                    keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(1.0f), 1183);
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State secondLineHead$delegate = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(0.0f), 1000), ProgressIndicatorKt.SecondLineHeadEasing);
                    keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(1.0f), 1567);
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State secondLineTail$delegate = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1800);
                    keyframesSpecConfig.using(keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(0.0f), 1267), ProgressIndicatorKt.SecondLineTailEasing);
                    keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(1.0f), 1800);
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            Modifier modifierM728sizeVpY3zN4 = SizeKt.m728sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(increaseSemanticsBounds(modifier3)), LinearIndicatorWidth, LinearIndicatorHeight);
            $composer2.startReplaceableGroup(-368646529);
            boolean invalid$iv = $composer2.changed(backgroundColor5) | $composer2.changed(strokeCap2) | $composer2.changed(firstLineHead$delegate) | $composer2.changed(firstLineTail$delegate) | $composer2.changed(color3) | $composer2.changed(secondLineHead$delegate) | $composer2.changed(secondLineTail$delegate);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                color4 = color3;
                strokeCap3 = strokeCap2;
                value$iv = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                        invoke2(drawScope);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(DrawScope $this$Canvas) {
                        float strokeWidth = Size.m3828getHeightimpl($this$Canvas.mo4559getSizeNHjbRc());
                        ProgressIndicatorKt.m1637drawLinearIndicatorBackgroundAZGd3zU($this$Canvas, backgroundColor5, strokeWidth, strokeCap2);
                        if (ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$1(firstLineHead$delegate) - ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$2(firstLineTail$delegate) > 0.0f) {
                            ProgressIndicatorKt.m1636drawLinearIndicatorqYKTg0g($this$Canvas, ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$1(firstLineHead$delegate), ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$2(firstLineTail$delegate), color4, strokeWidth, strokeCap2);
                        }
                        if (ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$3(secondLineHead$delegate) - ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$4(secondLineTail$delegate) > 0.0f) {
                            ProgressIndicatorKt.m1636drawLinearIndicatorqYKTg0g($this$Canvas, ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$3(secondLineHead$delegate), ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$4(secondLineTail$delegate), color4, strokeWidth, strokeCap2);
                        }
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
                color4 = color3;
                strokeCap3 = strokeCap2;
            }
            $composer2.endReplaceableGroup();
            CanvasKt.Canvas(modifierM728sizeVpY3zN4, (Function1) value$iv, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            backgroundColor4 = backgroundColor5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier3;
            final long j4 = color4;
            final long j5 = backgroundColor4;
            final int i7 = strokeCap3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    ProgressIndicatorKt.m1623LinearProgressIndicator2cYBFYY(modifier5, j4, j5, i7, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicator_2cYBFYY$lambda$1(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicator_2cYBFYY$lambda$2(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicator_2cYBFYY$lambda$3(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicator_2cYBFYY$lambda$4(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: LinearProgressIndicator-eaDK9VM, reason: not valid java name */
    public static final /* synthetic */ void m1626LinearProgressIndicatoreaDK9VM(final float progress, Modifier modifier, long color, long backgroundColor, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        long j2;
        Modifier.Companion modifier3;
        long color2;
        long backgroundColor2;
        Modifier modifier4;
        long color3;
        long backgroundColor3;
        Composer $composer2 = $composer.startRestartGroup(-850309746);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(3,2,1:c#ui.graphics.Color,0:c#ui.graphics.Color)225@9349L6,227@9445L118:ProgressIndicator.kt#jmzs0o");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(progress) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 112) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 256 : 128;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        if (($changed & 7168) == 0) {
            if ((i & 8) == 0) {
                j2 = backgroundColor;
                int i4 = $composer2.changed(j2) ? 2048 : 1024;
                $dirty |= i4;
            } else {
                j2 = backgroundColor;
            }
            $dirty |= i4;
        } else {
            j2 = backgroundColor;
        }
        if (($dirty & 5851) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            backgroundColor3 = j2;
            modifier4 = modifier2;
            color3 = j;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty &= -897;
                } else {
                    color2 = j;
                }
                if ((i & 8) != 0) {
                    long j3 = color2;
                    backgroundColor2 = Color.m4001copywmQWz5c(j3, (14 & 1) != 0 ? Color.m4005getAlphaimpl(j3) : 0.24f, (14 & 2) != 0 ? Color.m4009getRedimpl(j3) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(j3) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(j3) : 0.0f);
                    $dirty &= -7169;
                } else {
                    backgroundColor2 = j2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                modifier3 = modifier2;
                color2 = j;
                backgroundColor2 = j2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-850309746, $dirty, -1, "androidx.compose.material.LinearProgressIndicator (ProgressIndicator.kt:227)");
            }
            m1625LinearProgressIndicator_5eSRE(progress, modifier3, color2, backgroundColor2, StrokeCap.INSTANCE.m4356getButtKaPHkGw(), $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color3 = color2;
            backgroundColor3 = backgroundColor2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier4;
            final long j4 = color3;
            final long j5 = backgroundColor3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m1626LinearProgressIndicatoreaDK9VM(progress, modifier5, j4, j5, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: LinearProgressIndicator-RIQooxk, reason: not valid java name */
    public static final /* synthetic */ void m1624LinearProgressIndicatorRIQooxk(Modifier modifier, long color, long backgroundColor, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        long j2;
        Modifier.Companion modifier3;
        long color2;
        long backgroundColor2;
        Modifier modifier4;
        long color3;
        long backgroundColor3;
        Composer $composer2 = $composer.startRestartGroup(-819397058);
        ComposerKt.sourceInformation($composer2, "C(LinearProgressIndicator)P(2,1:c#ui.graphics.Color,0:c#ui.graphics.Color)239@9758L6,241@9854L104:ProgressIndicator.kt#jmzs0o");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 14) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 112) == 0) {
            if ((i & 2) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 32 : 16;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                j2 = backgroundColor;
                int i4 = $composer2.changed(j2) ? 256 : 128;
                $dirty |= i4;
            } else {
                j2 = backgroundColor;
            }
            $dirty |= i4;
        } else {
            j2 = backgroundColor;
        }
        if (($dirty & 731) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            backgroundColor3 = j2;
            modifier4 = modifier2;
            color3 = j;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty &= -113;
                } else {
                    color2 = j;
                }
                if ((i & 4) != 0) {
                    long j3 = color2;
                    backgroundColor2 = Color.m4001copywmQWz5c(j3, (14 & 1) != 0 ? Color.m4005getAlphaimpl(j3) : 0.24f, (14 & 2) != 0 ? Color.m4009getRedimpl(j3) : 0.0f, (14 & 4) != 0 ? Color.m4008getGreenimpl(j3) : 0.0f, (14 & 8) != 0 ? Color.m4006getBlueimpl(j3) : 0.0f);
                    $dirty &= -897;
                } else {
                    backgroundColor2 = j2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                modifier3 = modifier2;
                color2 = j;
                backgroundColor2 = j2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-819397058, $dirty, -1, "androidx.compose.material.LinearProgressIndicator (ProgressIndicator.kt:241)");
            }
            m1623LinearProgressIndicator2cYBFYY(modifier3, color2, backgroundColor2, StrokeCap.INSTANCE.m4356getButtKaPHkGw(), $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color3 = color2;
            backgroundColor3 = backgroundColor2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier4;
            final long j4 = color3;
            final long j5 = backgroundColor3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m1624LinearProgressIndicatorRIQooxk(modifier5, j4, j5, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicator-qYKTg0g, reason: not valid java name */
    public static final void m1636drawLinearIndicatorqYKTg0g(DrawScope $this$drawLinearIndicator_u2dqYKTg0g, float startFraction, float endFraction, long color, float strokeWidth, int strokeCap) {
        float width = Size.m3831getWidthimpl($this$drawLinearIndicator_u2dqYKTg0g.mo4559getSizeNHjbRc());
        float height = Size.m3828getHeightimpl($this$drawLinearIndicator_u2dqYKTg0g.mo4559getSizeNHjbRc());
        float f = 2;
        float yOffset = height / f;
        boolean isLtr = $this$drawLinearIndicator_u2dqYKTg0g.getLayoutDirection() == LayoutDirection.Ltr;
        float barStart = (isLtr ? startFraction : 1.0f - endFraction) * width;
        float barEnd = (isLtr ? endFraction : 1.0f - startFraction) * width;
        if (StrokeCap.m4352equalsimpl0(strokeCap, StrokeCap.INSTANCE.m4356getButtKaPHkGw()) || height > width) {
            DrawScope.m4545drawLineNGM6Ib0$default($this$drawLinearIndicator_u2dqYKTg0g, color, OffsetKt.Offset(barStart, yOffset), OffsetKt.Offset(barEnd, yOffset), strokeWidth, 0, null, 0.0f, null, 0, 496, null);
            return;
        }
        float strokeCapOffset = strokeWidth / f;
        ClosedFloatingPointRange coerceRange = RangesKt.rangeTo(strokeCapOffset, width - strokeCapOffset);
        float adjustedBarStart = ((Number) RangesKt.coerceIn(Float.valueOf(barStart), (ClosedFloatingPointRange<Float>) coerceRange)).floatValue();
        float adjustedBarEnd = ((Number) RangesKt.coerceIn(Float.valueOf(barEnd), (ClosedFloatingPointRange<Float>) coerceRange)).floatValue();
        if (Math.abs(endFraction - startFraction) > 0.0f) {
            DrawScope.m4545drawLineNGM6Ib0$default($this$drawLinearIndicator_u2dqYKTg0g, color, OffsetKt.Offset(adjustedBarStart, yOffset), OffsetKt.Offset(adjustedBarEnd, yOffset), strokeWidth, strokeCap, null, 0.0f, null, 0, 480, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicatorBackground-AZGd3zU, reason: not valid java name */
    public static final void m1637drawLinearIndicatorBackgroundAZGd3zU(DrawScope $this$drawLinearIndicatorBackground_u2dAZGd3zU, long color, float strokeWidth, int strokeCap) {
        m1636drawLinearIndicatorqYKTg0g($this$drawLinearIndicatorBackground_u2dAZGd3zU, 0.0f, 1.0f, color, strokeWidth, strokeCap);
    }

    /* renamed from: CircularProgressIndicator-DUhRLBM, reason: not valid java name */
    public static final void m1619CircularProgressIndicatorDUhRLBM(final float progress, Modifier modifier, long color, float strokeWidth, long backgroundColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        float strokeWidth2;
        long backgroundColor2;
        int i2;
        Modifier.Companion modifier3;
        long color2;
        int $dirty;
        int strokeCap2;
        long backgroundColor3;
        long color3;
        float strokeWidth3;
        int strokeCap3;
        float strokeWidth4;
        long backgroundColor4;
        Modifier modifier4;
        long color4;
        Composer $composer2 = $composer.startRestartGroup(1746618448);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(3,2,1:c#ui.graphics.Color,5:c#ui.unit.Dp,0:c#ui.graphics.Color,4:c#ui.graphics.StrokeCap)321@13100L6,*327@13359L7,330@13440L375:ProgressIndicator.kt#jmzs0o");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 14) == 0) {
            $dirty2 |= $composer2.changed(progress) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 112) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                j = color;
                int i4 = $composer2.changed(j) ? 256 : 128;
                $dirty2 |= i4;
            } else {
                j = color;
            }
            $dirty2 |= i4;
        } else {
            j = color;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            strokeWidth2 = strokeWidth;
        } else if (($changed & 7168) == 0) {
            strokeWidth2 = strokeWidth;
            $dirty2 |= $composer2.changed(strokeWidth2) ? 2048 : 1024;
        } else {
            strokeWidth2 = strokeWidth;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty2 |= 24576;
            backgroundColor2 = backgroundColor;
        } else if ((57344 & $changed) == 0) {
            backgroundColor2 = backgroundColor;
            $dirty2 |= $composer2.changed(backgroundColor2) ? 16384 : 8192;
        } else {
            backgroundColor2 = backgroundColor;
        }
        if ((458752 & $changed) == 0) {
            if ((i & 32) == 0) {
                i2 = strokeCap;
                int i7 = $composer2.changed(i2) ? 131072 : 65536;
                $dirty2 |= i7;
            } else {
                i2 = strokeCap;
            }
            $dirty2 |= i7;
        } else {
            i2 = strokeCap;
        }
        if ((374491 & $dirty2) == 74898 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            color4 = j;
            strokeWidth4 = strokeWidth2;
            backgroundColor4 = backgroundColor2;
            strokeCap3 = i2;
            modifier4 = modifier2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty2 &= -897;
                } else {
                    color2 = j;
                }
                if (i5 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m1618getStrokeWidthD9Ej5fM();
                }
                if (i6 != 0) {
                    backgroundColor2 = Color.INSTANCE.m4038getTransparent0d7_KjU();
                }
                if ((i & 32) != 0) {
                    $dirty = $dirty2 & (-458753);
                    strokeCap2 = StrokeCap.INSTANCE.m4356getButtKaPHkGw();
                    backgroundColor3 = backgroundColor2;
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                } else {
                    $dirty = $dirty2;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                    color3 = color2;
                    strokeWidth3 = strokeWidth2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 32) != 0) {
                    $dirty = $dirty2 & (-458753);
                    modifier3 = modifier2;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                    color3 = j;
                    strokeWidth3 = strokeWidth2;
                } else {
                    $dirty = $dirty2;
                    modifier3 = modifier2;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                    color3 = j;
                    strokeWidth3 = strokeWidth2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1746618448, $dirty, -1, "androidx.compose.material.CircularProgressIndicator (ProgressIndicator.kt:325)");
            }
            final float coercedProgress = RangesKt.coerceIn(progress, 0.0f, 1.0f);
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Density $this$CircularProgressIndicator_DUhRLBM_u24lambda_u246 = (Density) objConsume;
            final Stroke stroke = new Stroke($this$CircularProgressIndicator_DUhRLBM_u24lambda_u246.mo373toPx0680j_4(strokeWidth3), 0.0f, strokeCap2, 0, null, 26, null);
            Modifier modifier5 = modifier3;
            final long j2 = backgroundColor3;
            final long j3 = color3;
            CanvasKt.Canvas(SizeKt.m726size3ABfNKs(ProgressSemanticsKt.progressSemantics$default(modifier5, coercedProgress, null, 0, 6, null), CircularIndicatorDiameter), new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                    invoke2(drawScope);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DrawScope $this$Canvas) {
                    float sweep = coercedProgress * 360.0f;
                    ProgressIndicatorKt.m1633drawCircularIndicatorBackgroundbw27NRU($this$Canvas, j2, stroke);
                    ProgressIndicatorKt.m1634drawDeterminateCircularIndicator42QJj7c($this$Canvas, 270.0f, sweep, j3, stroke);
                }
            }, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            strokeCap3 = strokeCap2;
            strokeWidth4 = strokeWidth3;
            backgroundColor4 = backgroundColor3;
            modifier4 = modifier5;
            color4 = color3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final long j4 = color4;
            final float f = strokeWidth4;
            final long j5 = backgroundColor4;
            final int i8 = strokeCap3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    ProgressIndicatorKt.m1619CircularProgressIndicatorDUhRLBM(progress, modifier6, j4, f, j5, i8, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* renamed from: CircularProgressIndicator-LxG7B9w, reason: not valid java name */
    public static final void m1620CircularProgressIndicatorLxG7B9w(Modifier modifier, long color, float strokeWidth, long backgroundColor, int strokeCap, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        float strokeWidth2;
        long backgroundColor2;
        int i2;
        long color2;
        int $dirty;
        Modifier modifier3;
        long color3;
        int strokeCap2;
        long backgroundColor3;
        float strokeWidth3;
        float strokeWidth4;
        Composer $composer2 = $composer.startRestartGroup(-1119119072);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(2,1:c#ui.graphics.Color,4:c#ui.unit.Dp,0:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)360@14808L6,*365@15017L7,369@15116L28,371@15274L278,383@15667L230,394@16015L346,406@16396L355,417@16756L647:ProgressIndicator.kt#jmzs0o");
        int $dirty2 = $changed;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty2 |= 6;
            modifier2 = modifier;
        } else if (($changed & 14) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 112) == 0) {
            if ((i & 2) == 0) {
                j = color;
                int i4 = $composer2.changed(j) ? 32 : 16;
                $dirty2 |= i4;
            } else {
                j = color;
            }
            $dirty2 |= i4;
        } else {
            j = color;
        }
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty2 |= 384;
            strokeWidth2 = strokeWidth;
        } else if (($changed & 896) == 0) {
            strokeWidth2 = strokeWidth;
            $dirty2 |= $composer2.changed(strokeWidth2) ? 256 : 128;
        } else {
            strokeWidth2 = strokeWidth;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty2 |= 3072;
            backgroundColor2 = backgroundColor;
        } else if (($changed & 7168) == 0) {
            backgroundColor2 = backgroundColor;
            $dirty2 |= $composer2.changed(backgroundColor2) ? 2048 : 1024;
        } else {
            backgroundColor2 = backgroundColor;
        }
        if ((57344 & $changed) == 0) {
            if ((i & 16) == 0) {
                i2 = strokeCap;
                int i7 = $composer2.changed(i2) ? 16384 : 8192;
                $dirty2 |= i7;
            } else {
                i2 = strokeCap;
            }
            $dirty2 |= i7;
        } else {
            i2 = strokeCap;
        }
        if ((46811 & $dirty2) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            color3 = j;
            strokeCap2 = i2;
            backgroundColor3 = backgroundColor2;
            strokeWidth4 = strokeWidth2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier4 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty2 &= -113;
                } else {
                    color2 = j;
                }
                if (i5 != 0) {
                    strokeWidth2 = ProgressIndicatorDefaults.INSTANCE.m1618getStrokeWidthD9Ej5fM();
                }
                if (i6 != 0) {
                    backgroundColor2 = Color.INSTANCE.m4038getTransparent0d7_KjU();
                }
                if ((i & 16) != 0) {
                    $dirty = $dirty2 & (-57345);
                    modifier3 = modifier4;
                    color3 = color2;
                    strokeCap2 = StrokeCap.INSTANCE.m4358getSquareKaPHkGw();
                    backgroundColor3 = backgroundColor2;
                    strokeWidth3 = strokeWidth2;
                } else {
                    $dirty = $dirty2;
                    modifier3 = modifier4;
                    color3 = color2;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                    strokeWidth3 = strokeWidth2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 16) != 0) {
                    $dirty = $dirty2 & (-57345);
                    modifier3 = modifier2;
                    color3 = j;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                    strokeWidth3 = strokeWidth2;
                } else {
                    $dirty = $dirty2;
                    modifier3 = modifier2;
                    color3 = j;
                    strokeCap2 = i2;
                    backgroundColor3 = backgroundColor2;
                    strokeWidth3 = strokeWidth2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1119119072, $dirty, -1, "androidx.compose.material.CircularProgressIndicator (ProgressIndicator.kt:364)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Density $this$CircularProgressIndicator_LxG7B9w_u24lambda_u247 = (Density) objConsume;
            final Stroke stroke = new Stroke($this$CircularProgressIndicator_LxG7B9w_u24lambda_u247.mo373toPx0680j_4(strokeWidth3), 0.0f, strokeCap2, 0, null, 26, null);
            InfiniteTransition transition = InfiniteTransitionKt.rememberInfiniteTransition(null, $composer2, 0, 1);
            final State currentRotation$delegate = InfiniteTransitionKt.animateValue(transition, 0, 5, VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE), AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.tween$default(6660, 0, EasingKt.getLinearEasing(), 2, null), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 4528 | (InfiniteRepeatableSpec.$stable << 12), 16);
            final State baseRotation$delegate = InfiniteTransitionKt.animateFloat(transition, 0.0f, BaseRotationAngle, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.tween$default(RotationDuration, 0, EasingKt.getLinearEasing(), 2, null), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State endAngle$delegate = InfiniteTransitionKt.animateFloat(transition, 0.0f, JumpRotationAngle, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$endAngle$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1332);
                    keyframesSpecConfig.using(keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(0.0f), 0), ProgressIndicatorKt.CircularEasing);
                    keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(290.0f), 666);
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final State startAngle$delegate = InfiniteTransitionKt.animateFloat(transition, 0.0f, JumpRotationAngle, AnimationSpecKt.m139infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$startAngle$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    keyframesSpecConfig.setDurationMillis(1332);
                    keyframesSpecConfig.using(keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(0.0f), 666), ProgressIndicatorKt.CircularEasing);
                    keyframesSpecConfig.at((KeyframesSpec.KeyframesSpecConfig<Float>) Float.valueOf(290.0f), keyframesSpecConfig.getDurationMillis());
                }
            }), null, 0L, 6, null), null, $composer2, InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9), 8);
            final float strokeWidth5 = strokeWidth3;
            final long j2 = backgroundColor3;
            final long j3 = color3;
            CanvasKt.Canvas(SizeKt.m726size3ABfNKs(ProgressSemanticsKt.progressSemantics(modifier3), CircularIndicatorDiameter), new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                    invoke2(drawScope);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DrawScope $this$Canvas) {
                    ProgressIndicatorKt.m1633drawCircularIndicatorBackgroundbw27NRU($this$Canvas, j2, stroke);
                    float currentRotationAngleOffset = (ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$8(currentRotation$delegate) * 216.0f) % 360.0f;
                    float sweep = Math.abs(ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$10(endAngle$delegate) - ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$11(startAngle$delegate));
                    float offset = (-90.0f) + currentRotationAngleOffset + ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$9(baseRotation$delegate);
                    ProgressIndicatorKt.m1635drawIndeterminateCircularIndicatorhrjfTZI($this$Canvas, ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$11(startAngle$delegate) + offset, strokeWidth5, sweep, j3, stroke);
                }
            }, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            strokeWidth4 = strokeWidth5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier3;
            final long j4 = color3;
            final float f = strokeWidth4;
            final long j5 = backgroundColor3;
            final int i8 = strokeCap2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    ProgressIndicatorKt.m1620CircularProgressIndicatorLxG7B9w(modifier5, j4, f, j5, i8, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int CircularProgressIndicator_LxG7B9w$lambda$8(State<Integer> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularProgressIndicator_LxG7B9w$lambda$9(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularProgressIndicator_LxG7B9w$lambda$10(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularProgressIndicator_LxG7B9w$lambda$11(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: CircularProgressIndicator-MBs18nI, reason: not valid java name */
    public static final /* synthetic */ void m1621CircularProgressIndicatorMBs18nI(final float progress, Modifier modifier, long color, float strokeWidth, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        float f;
        Modifier.Companion modifier3;
        long color2;
        float strokeWidth2;
        Modifier modifier4;
        long color3;
        float strokeWidth3;
        Composer $composer2 = $composer.startRestartGroup(-409649739);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.unit.Dp)440@17623L6,442@17703L157:ProgressIndicator.kt#jmzs0o");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(progress) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 112) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 256 : 128;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 3072;
            f = strokeWidth;
        } else if (($changed & 7168) == 0) {
            f = strokeWidth;
            $dirty |= $composer2.changed(f) ? 2048 : 1024;
        } else {
            f = strokeWidth;
        }
        if (($dirty & 5851) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            strokeWidth3 = f;
            color3 = j;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 4) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty &= -897;
                } else {
                    color2 = j;
                }
                strokeWidth2 = i4 != 0 ? ProgressIndicatorDefaults.INSTANCE.m1618getStrokeWidthD9Ej5fM() : f;
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
                modifier3 = modifier2;
                color2 = j;
                strokeWidth2 = f;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-409649739, $dirty, -1, "androidx.compose.material.CircularProgressIndicator (ProgressIndicator.kt:442)");
            }
            m1619CircularProgressIndicatorDUhRLBM(progress, modifier3, color2, strokeWidth2, Color.INSTANCE.m4038getTransparent0d7_KjU(), StrokeCap.INSTANCE.m4356getButtKaPHkGw(), $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color3 = color2;
            strokeWidth3 = strokeWidth2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier4;
            final long j2 = color3;
            final float f2 = strokeWidth3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m1621CircularProgressIndicatorMBs18nI(progress, modifier5, j2, f2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: CircularProgressIndicator-aM-cp0Q, reason: not valid java name */
    public static final /* synthetic */ void m1622CircularProgressIndicatoraMcp0Q(Modifier modifier, long color, float strokeWidth, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long j;
        float f;
        Modifier.Companion modifier3;
        long color2;
        float strokeWidth2;
        Modifier modifier4;
        long color3;
        float strokeWidth3;
        Composer $composer2 = $composer.startRestartGroup(-392089979);
        ComposerKt.sourceInformation($composer2, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.unit.Dp)455@18057L6,457@18137L145:ProgressIndicator.kt#jmzs0o");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 14) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 112) == 0) {
            if ((i & 2) == 0) {
                j = color;
                int i3 = $composer2.changed(j) ? 32 : 16;
                $dirty |= i3;
            } else {
                j = color;
            }
            $dirty |= i3;
        } else {
            j = color;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
            f = strokeWidth;
        } else if (($changed & 896) == 0) {
            f = strokeWidth;
            $dirty |= $composer2.changed(f) ? 256 : 128;
        } else {
            f = strokeWidth;
        }
        if (($dirty & 731) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier2;
            strokeWidth3 = f;
            color3 = j;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 2) != 0) {
                    color2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1496getPrimary0d7_KjU();
                    $dirty &= -113;
                } else {
                    color2 = j;
                }
                strokeWidth2 = i4 != 0 ? ProgressIndicatorDefaults.INSTANCE.m1618getStrokeWidthD9Ej5fM() : f;
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                modifier3 = modifier2;
                color2 = j;
                strokeWidth2 = f;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-392089979, $dirty, -1, "androidx.compose.material.CircularProgressIndicator (ProgressIndicator.kt:457)");
            }
            m1620CircularProgressIndicatorLxG7B9w(modifier3, color2, strokeWidth2, Color.INSTANCE.m4038getTransparent0d7_KjU(), StrokeCap.INSTANCE.m4358getSquareKaPHkGw(), $composer2, ($dirty & 14) | 3072 | ($dirty & 112) | ($dirty & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color3 = color2;
            strokeWidth3 = strokeWidth2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier4;
            final long j2 = color3;
            final float f2 = strokeWidth3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$CircularProgressIndicator$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ProgressIndicatorKt.m1622CircularProgressIndicatoraMcp0Q(modifier5, j2, f2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* renamed from: drawCircularIndicator-42QJj7c, reason: not valid java name */
    private static final void m1632drawCircularIndicator42QJj7c(DrawScope $this$drawCircularIndicator_u2d42QJj7c, float startAngle, float sweep, long color, Stroke stroke) {
        float f = 2;
        float diameterOffset = stroke.getWidth() / f;
        float arcDimen = Size.m3831getWidthimpl($this$drawCircularIndicator_u2d42QJj7c.mo4559getSizeNHjbRc()) - (f * diameterOffset);
        DrawScope.m4538drawArcyD3GUKo$default($this$drawCircularIndicator_u2d42QJj7c, color, startAngle, sweep, false, OffsetKt.Offset(diameterOffset, diameterOffset), androidx.compose.ui.geometry.SizeKt.Size(arcDimen, arcDimen), 0.0f, stroke, null, 0, 832, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawCircularIndicatorBackground-bw27NRU, reason: not valid java name */
    public static final void m1633drawCircularIndicatorBackgroundbw27NRU(DrawScope $this$drawCircularIndicatorBackground_u2dbw27NRU, long color, Stroke stroke) {
        m1632drawCircularIndicator42QJj7c($this$drawCircularIndicatorBackground_u2dbw27NRU, 0.0f, 360.0f, color, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawDeterminateCircularIndicator-42QJj7c, reason: not valid java name */
    public static final void m1634drawDeterminateCircularIndicator42QJj7c(DrawScope $this$drawDeterminateCircularIndicator_u2d42QJj7c, float startAngle, float sweep, long color, Stroke stroke) {
        m1632drawCircularIndicator42QJj7c($this$drawDeterminateCircularIndicator_u2d42QJj7c, startAngle, sweep, color, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawIndeterminateCircularIndicator-hrjfTZI, reason: not valid java name */
    public static final void m1635drawIndeterminateCircularIndicatorhrjfTZI(DrawScope $this$drawIndeterminateCircularIndicator_u2dhrjfTZI, float startAngle, float strokeWidth, float sweep, long color, Stroke stroke) {
        float strokeCapOffset;
        if (StrokeCap.m4352equalsimpl0(stroke.getCap(), StrokeCap.INSTANCE.m4356getButtKaPHkGw())) {
            strokeCapOffset = 0.0f;
        } else {
            float arg0$iv = CircularIndicatorDiameter;
            float other$iv = strokeWidth / Dp.m6485constructorimpl(arg0$iv / 2);
            strokeCapOffset = (other$iv * 57.29578f) / 2.0f;
        }
        float adjustedStartAngle = startAngle + strokeCapOffset;
        float adjustedSweep = Math.max(sweep, 0.1f);
        m1632drawCircularIndicator42QJj7c($this$drawIndeterminateCircularIndicator_u2dhrjfTZI, adjustedStartAngle, adjustedSweep, color, stroke);
    }
}
