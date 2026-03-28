package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: AlertDialog.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a{\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u00052\u0015\b\u0002\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a5\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0011\u0010\u001b\u001a\r\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a;\u0010\u001e\u001a\u00020\t*\u00020\u001f2\u0013\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\u0013\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\fH\u0001¢\u0006\u0002\u0010 \"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006!"}, d2 = {"TextBaselineDistanceFromTitle", "Landroidx/compose/ui/unit/TextUnit;", "J", "TextBaselineDistanceFromTop", "TextPadding", "Landroidx/compose/ui/Modifier;", "TitleBaselineDistanceFromTop", "TitlePadding", "AlertDialogContent", "", "buttons", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "modifier", "title", "text", "shape", "Landroidx/compose/ui/graphics/Shape;", "backgroundColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "AlertDialogContent-WMdw5o4", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/Composer;II)V", "AlertDialogFlowRow", "mainAxisSpacing", "Landroidx/compose/ui/unit/Dp;", "crossAxisSpacing", "content", "AlertDialogFlowRow-ixp7dh8", "(FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "AlertDialogBaselineLayout", "Landroidx/compose/foundation/layout/ColumnScope;", "(Landroidx/compose/foundation/layout/ColumnScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "material_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AlertDialogKt {
    private static final Modifier TitlePadding = PaddingKt.m685paddingqDBjuR0$default(Modifier.INSTANCE, Dp.m6485constructorimpl(24), 0.0f, Dp.m6485constructorimpl(24), 0.0f, 10, null);
    private static final Modifier TextPadding = PaddingKt.m685paddingqDBjuR0$default(Modifier.INSTANCE, Dp.m6485constructorimpl(24), 0.0f, Dp.m6485constructorimpl(24), Dp.m6485constructorimpl(28), 2, null);
    private static final long TitleBaselineDistanceFromTop = TextUnitKt.getSp(40);
    private static final long TextBaselineDistanceFromTitle = TextUnitKt.getSp(36);
    private static final long TextBaselineDistanceFromTop = TextUnitKt.getSp(38);

    /* renamed from: AlertDialogContent-WMdw5o4, reason: not valid java name */
    public static final void m1412AlertDialogContentWMdw5o4(final Function2<? super Composer, ? super Integer, Unit> function2, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Shape shape, long backgroundColor, long contentColor, Composer $composer, final int $changed, final int i) {
        final Function2 title;
        final Function2 text;
        Shape shape2;
        long backgroundColor2;
        long j;
        Modifier.Companion modifier2;
        int $dirty;
        long contentColor2;
        Modifier modifier3;
        long contentColor3;
        Function2 title2;
        Function2 text2;
        Shape shape3;
        long backgroundColor3;
        Composer $composer2 = $composer.startRestartGroup(-453679601);
        ComposerKt.sourceInformation($composer2, "C(AlertDialogContent)P(1,3,6,5,4,0:c#ui.graphics.Color,2:c#ui.graphics.Color)50@1988L6,51@2046L6,52@2088L32,54@2130L1047:AlertDialog.kt#jmzs0o");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 14) == 0) {
            $dirty2 |= $composer2.changedInstance(function2) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty2 |= 48;
        } else if (($changed & 112) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= 384;
            title = function22;
        } else if (($changed & 896) == 0) {
            title = function22;
            $dirty2 |= $composer2.changedInstance(title) ? 256 : 128;
        } else {
            title = function22;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            text = function23;
        } else if (($changed & 7168) == 0) {
            text = function23;
            $dirty2 |= $composer2.changedInstance(text) ? 2048 : 1024;
        } else {
            text = function23;
        }
        if ((57344 & $changed) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i5 = $composer2.changed(shape2) ? 16384 : 8192;
                $dirty2 |= i5;
            } else {
                shape2 = shape;
            }
            $dirty2 |= i5;
        } else {
            shape2 = shape;
        }
        if ((458752 & $changed) == 0) {
            if ((i & 32) == 0) {
                backgroundColor2 = backgroundColor;
                int i6 = $composer2.changed(backgroundColor2) ? 131072 : 65536;
                $dirty2 |= i6;
            } else {
                backgroundColor2 = backgroundColor;
            }
            $dirty2 |= i6;
        } else {
            backgroundColor2 = backgroundColor;
        }
        if ((3670016 & $changed) == 0) {
            if ((i & 64) == 0) {
                j = contentColor;
                int i7 = $composer2.changed(j) ? 1048576 : 524288;
                $dirty2 |= i7;
            } else {
                j = contentColor;
            }
            $dirty2 |= i7;
        } else {
            j = contentColor;
        }
        if (($dirty2 & 2995931) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            text2 = text;
            shape3 = shape2;
            backgroundColor3 = backgroundColor2;
            contentColor3 = j;
            modifier3 = modifier;
            title2 = title;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier2 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if (i3 != 0) {
                    title = null;
                }
                if (i4 != 0) {
                    text = null;
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                    shape2 = MaterialTheme.INSTANCE.getShapes($composer2, 6).getMedium();
                }
                if ((i & 32) != 0) {
                    backgroundColor2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1500getSurface0d7_KjU();
                    $dirty2 &= -458753;
                }
                if ((i & 64) != 0) {
                    $dirty = $dirty2 & (-3670017);
                    contentColor2 = ColorsKt.m1514contentColorForek8zF_U(backgroundColor2, $composer2, ($dirty2 >> 15) & 14);
                } else {
                    $dirty = $dirty2;
                    contentColor2 = j;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty2 &= -458753;
                }
                if ((i & 64) != 0) {
                    $dirty = $dirty2 & (-3670017);
                    contentColor2 = j;
                    modifier2 = modifier;
                } else {
                    modifier2 = modifier;
                    $dirty = $dirty2;
                    contentColor2 = j;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-453679601, $dirty, -1, "androidx.compose.material.AlertDialogContent (AlertDialog.kt:53)");
            }
            SurfaceKt.m1675SurfaceFjzlyU(modifier2, shape2, backgroundColor2, contentColor2, null, 0.0f, ComposableLambdaKt.composableLambda($composer2, 629950291, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogContent$1
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
                    Function0 factory$iv$iv$iv;
                    ComposerKt.sourceInformation($composer3, "C60@2276L895:AlertDialog.kt#jmzs0o");
                    if (($changed2 & 11) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(629950291, $changed2, -1, "androidx.compose.material.AlertDialogContent.<anonymous> (AlertDialog.kt:60)");
                        }
                        final Function2<Composer, Integer, Unit> function24 = title;
                        final Function2<Composer, Integer, Unit> function25 = text;
                        Function2<Composer, Integer, Unit> function26 = function2;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Modifier modifier$iv = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv = (0 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
                        int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv = factory$iv$iv$iv2;
                            $composer3.createNode(factory$iv$iv$iv);
                        } else {
                            factory$iv$iv$iv = factory$iv$iv$iv2;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer3);
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        }
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3487boximpl(SkippableUpdater.m3488constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8 = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        int $changed3 = ((0 >> 6) & 112) | 6;
                        ColumnScope $this$invoke_u24lambda_u242 = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, -80835680, "C61@2297L842,81@3152L9:AlertDialog.kt#jmzs0o");
                        AlertDialogKt.AlertDialogBaselineLayout($this$invoke_u24lambda_u242, function24 != null ? ComposableLambdaKt.composableLambda($composer3, 620104160, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogContent$1$1$1$1
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

                            public final void invoke(Composer $composer4, int $changed4) {
                                ComposerKt.sourceInformation($composer4, "C64@2484L4,64@2419L240:AlertDialog.kt#jmzs0o");
                                if (($changed4 & 11) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(620104160, $changed4, -1, "androidx.compose.material.AlertDialogContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AlertDialog.kt:64)");
                                    }
                                    ProvidedValue<Float> providedValueProvides = ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(ContentAlpha.INSTANCE.getHigh($composer4, 6)));
                                    final Function2<Composer, Integer, Unit> function27 = function24;
                                    CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.composableLambda($composer4, 770166432, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogContent$1$1$1$1.1
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

                                        public final void invoke(Composer $composer5, int $changed5) {
                                            ComposerKt.sourceInformation($composer5, "C65@2550L10,66@2599L34:AlertDialog.kt#jmzs0o");
                                            if (($changed5 & 11) != 2 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(770166432, $changed5, -1, "androidx.compose.material.AlertDialogContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AlertDialog.kt:65)");
                                                }
                                                TextStyle textStyle = MaterialTheme.INSTANCE.getTypography($composer5, 6).getSubtitle1();
                                                TextKt.ProvideTextStyle(textStyle, function27, $composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, ProvidedValue.$stable | 0 | 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }) : null, function25 != null ? ComposableLambdaKt.composableLambda($composer3, 1965858367, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogContent$1$1$2$1
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

                            public final void invoke(Composer $composer4, int $changed4) {
                                ComposerKt.sourceInformation($composer4, "C73@2888L6,72@2794L291:AlertDialog.kt#jmzs0o");
                                if (($changed4 & 11) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1965858367, $changed4, -1, "androidx.compose.material.AlertDialogContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AlertDialog.kt:72)");
                                    }
                                    ProvidedValue<Float> providedValueProvides = ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(ContentAlpha.INSTANCE.getMedium($composer4, 6)));
                                    final Function2<Composer, Integer, Unit> function27 = function25;
                                    CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.composableLambda($composer4, 2115920639, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogContent$1$1$2$1.1
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

                                        public final void invoke(Composer $composer5, int $changed5) {
                                            ComposerKt.sourceInformation($composer5, "C75@2981L10,76@3026L33:AlertDialog.kt#jmzs0o");
                                            if (($changed5 & 11) != 2 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(2115920639, $changed5, -1, "androidx.compose.material.AlertDialogContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AlertDialog.kt:75)");
                                                }
                                                TextStyle textStyle = MaterialTheme.INSTANCE.getTypography($composer5, 6).getBody2();
                                                TextKt.ProvideTextStyle(textStyle, function27, $composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, ProvidedValue.$stable | 0 | 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }) : null, $composer3, $changed3 & 14);
                        function26.invoke($composer3, 0);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, (($dirty >> 3) & 14) | 1572864 | (($dirty >> 9) & 112) | (($dirty >> 9) & 896) | (($dirty >> 9) & 7168), 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            contentColor3 = contentColor2;
            title2 = title;
            text2 = text;
            shape3 = shape2;
            backgroundColor3 = backgroundColor2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final Function2 function24 = title2;
            final Function2 function25 = text2;
            final Shape shape4 = shape3;
            final long j2 = backgroundColor3;
            final long j3 = contentColor3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogContent$2
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
                    AlertDialogKt.m1412AlertDialogContentWMdw5o4(function2, modifier4, function24, function25, shape4, j2, j3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AlertDialogBaselineLayout(final ColumnScope $this$AlertDialogBaselineLayout, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, Composer $composer, final int $changed) {
        Function0 factory$iv$iv$iv;
        Function0 factory$iv$iv$iv2;
        Composer $composer2 = $composer.startRestartGroup(-555573207);
        ComposerKt.sourceInformation($composer2, "C(AlertDialogBaselineLayout)P(1)98@3653L3487:AlertDialog.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed($this$AlertDialogBaselineLayout) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer2.changedInstance(function22) ? 256 : 128;
        }
        if (($dirty & 731) != 146 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-555573207, $dirty, -1, "androidx.compose.material.AlertDialogBaselineLayout (AlertDialog.kt:97)");
            }
            Modifier modifier$iv = $this$AlertDialogBaselineLayout.weight(Modifier.INSTANCE, 1.0f, false);
            MeasurePolicy measurePolicy$iv = new MeasurePolicy() { // from class: androidx.compose.material.AlertDialogKt.AlertDialogBaselineLayout.2
                /* JADX WARN: Removed duplicated region for block: B:40:0x00cb  */
                /* JADX WARN: Removed duplicated region for block: B:49:0x00e9  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0110  */
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final androidx.compose.ui.layout.MeasureResult mo38measure3p2s80s(androidx.compose.ui.layout.MeasureScope r23, java.util.List<? extends androidx.compose.ui.layout.Measurable> r24, long r25) {
                    /*
                        Method dump skipped, instructions count: 389
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AlertDialogKt.AnonymousClass2.mo38measure3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long):androidx.compose.ui.layout.MeasureResult");
                }
            };
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
            int $changed$iv$iv = ((384 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(factory$iv$iv);
            } else {
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv = Updater.m3496constructorimpl($composer2);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), block$iv$iv);
            }
            skippableUpdate$iv$iv.invoke(SkippableUpdater.m3487boximpl(SkippableUpdater.m3488constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i = ($changed$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -1160646121, "C:AlertDialog.kt#jmzs0o");
            $composer2.startReplaceableGroup(-1160646114);
            ComposerKt.sourceInformation($composer2, "*101@3721L106");
            if (function2 != null) {
                Modifier modifier$iv2 = $this$AlertDialogBaselineLayout.align(LayoutIdKt.layoutId(TitlePadding, "title"), Alignment.INSTANCE.getStart());
                $composer2.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer2, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv2 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv, false, $composer2, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                $composer2.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv2);
                int $changed$iv$iv$iv = ((((0 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    factory$iv$iv$iv = factory$iv$iv$iv3;
                    $composer2.createNode(factory$iv$iv$iv);
                } else {
                    factory$iv$iv$iv = factory$iv$iv$iv3;
                    $composer2.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3496constructorimpl($composer2);
                Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                }
                skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3487boximpl(SkippableUpdater.m3488constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i2 = ($changed$iv$iv$iv >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i3 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -630329008, "C102@3802L7:AlertDialog.kt#jmzs0o");
                function2.invoke($composer2, 0);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
            }
            $composer2.endReplaceableGroup();
            $composer2.startReplaceableGroup(-1735756505);
            ComposerKt.sourceInformation($composer2, "*106@3890L103");
            if (function22 != null) {
                Modifier modifier$iv3 = $this$AlertDialogBaselineLayout.align(LayoutIdKt.layoutId(TextPadding, "text"), Alignment.INSTANCE.getStart());
                $composer2.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer2, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv3 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv2, false, $composer2, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                $composer2.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                int $changed$iv$iv$iv2 = ((((0 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    factory$iv$iv$iv2 = factory$iv$iv$iv4;
                    $composer2.createNode(factory$iv$iv$iv2);
                } else {
                    factory$iv$iv$iv2 = factory$iv$iv$iv4;
                    $composer2.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3496constructorimpl($composer2);
                Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3503setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                }
                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3487boximpl(SkippableUpdater.m3488constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i4 = ($changed$iv$iv$iv2 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i5 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -630328841, "C107@3969L6:AlertDialog.kt#jmzs0o");
                function22.invoke($composer2, 0);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
            }
            $composer2.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt.AlertDialogBaselineLayout.3
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

                public final void invoke(Composer composer, int i6) {
                    AlertDialogKt.AlertDialogBaselineLayout($this$AlertDialogBaselineLayout, function2, function22, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* renamed from: AlertDialogFlowRow-ixp7dh8, reason: not valid java name */
    public static final void m1413AlertDialogFlowRowixp7dh8(final float mainAxisSpacing, final float crossAxisSpacing, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Object value$iv;
        Composer $composer2 = $composer.startRestartGroup(73434452);
        ComposerKt.sourceInformation($composer2, "C(AlertDialogFlowRow)P(2:c#ui.unit.Dp,1:c#ui.unit.Dp)194@7398L3581:AlertDialog.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(mainAxisSpacing) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer2.changed(crossAxisSpacing) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 256 : 128;
        }
        if (($dirty & 731) != 146 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(73434452, $dirty, -1, "androidx.compose.material.AlertDialogFlowRow (AlertDialog.kt:193)");
            }
            $composer2.startReplaceableGroup(-2007963684);
            boolean invalid$iv = $composer2.changed(mainAxisSpacing) | $composer2.changed(crossAxisSpacing);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = new MeasurePolicy() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$1$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* renamed from: measure-3p2s80s */
                    public final MeasureResult mo38measure3p2s80s(final MeasureScope $this$Layout, List<? extends Measurable> list, long constraints) {
                        AlertDialogKt$AlertDialogFlowRow$1$1 alertDialogKt$AlertDialogFlowRow$1$1;
                        final int mainAxisLayoutSize;
                        Ref.IntRef currentMainAxisSize;
                        List crossAxisSizes;
                        List crossAxisPositions;
                        Ref.IntRef currentCrossAxisSize;
                        List crossAxisPositions2;
                        Ref.IntRef currentMainAxisSize2;
                        final List sequences = new ArrayList();
                        List crossAxisSizes2 = new ArrayList();
                        List currentSequence = new ArrayList();
                        Ref.IntRef mainAxisSpace = new Ref.IntRef();
                        Ref.IntRef crossAxisSpace = new Ref.IntRef();
                        List currentSequence2 = new ArrayList();
                        Ref.IntRef currentMainAxisSize3 = new Ref.IntRef();
                        Ref.IntRef currentCrossAxisSize2 = new Ref.IntRef();
                        long childConstraints = ConstraintsKt.Constraints$default(0, Constraints.m6438getMaxWidthimpl(constraints), 0, 0, 13, null);
                        float f = mainAxisSpacing;
                        float f2 = crossAxisSpacing;
                        List $this$fastForEach$iv = list;
                        int index$iv = 0;
                        int size = $this$fastForEach$iv.size();
                        while (index$iv < size) {
                            Object item$iv = $this$fastForEach$iv.get(index$iv);
                            Measurable measurable = (Measurable) item$iv;
                            Ref.IntRef mainAxisSpace2 = mainAxisSpace;
                            Placeable placeable = measurable.mo5339measureBRTryo0(childConstraints);
                            int index$iv2 = index$iv;
                            int i = size;
                            List $this$fastForEach$iv2 = $this$fastForEach$iv;
                            float f3 = f2;
                            long childConstraints2 = childConstraints;
                            float f4 = f;
                            if (measure_3p2s80s$canAddToCurrentSequence(currentSequence2, currentMainAxisSize3, $this$Layout, f, constraints, placeable)) {
                                currentMainAxisSize = currentMainAxisSize3;
                                crossAxisSizes = crossAxisSizes2;
                                crossAxisPositions = currentSequence;
                                currentCrossAxisSize = currentCrossAxisSize2;
                                crossAxisPositions2 = currentSequence2;
                            } else {
                                Ref.IntRef currentCrossAxisSize3 = currentCrossAxisSize2;
                                List list2 = crossAxisSizes2;
                                crossAxisSizes = crossAxisSizes2;
                                currentCrossAxisSize = currentCrossAxisSize3;
                                List list3 = currentSequence;
                                currentMainAxisSize = currentMainAxisSize3;
                                crossAxisPositions = currentSequence;
                                crossAxisPositions2 = currentSequence2;
                                measure_3p2s80s$startNewSequence(sequences, crossAxisSpace, $this$Layout, f3, currentSequence2, list2, currentCrossAxisSize3, list3, mainAxisSpace2, currentMainAxisSize);
                            }
                            if (crossAxisPositions2.isEmpty()) {
                                currentMainAxisSize2 = currentMainAxisSize;
                            } else {
                                currentMainAxisSize2 = currentMainAxisSize;
                                currentMainAxisSize2.element += $this$Layout.mo367roundToPx0680j_4(f4);
                            }
                            crossAxisPositions2.add(placeable);
                            currentMainAxisSize2.element += placeable.getWidth();
                            currentCrossAxisSize.element = Math.max(currentCrossAxisSize.element, placeable.getHeight());
                            index$iv = index$iv2 + 1;
                            f = f4;
                            currentMainAxisSize3 = currentMainAxisSize2;
                            currentCrossAxisSize2 = currentCrossAxisSize;
                            currentSequence2 = crossAxisPositions2;
                            mainAxisSpace = mainAxisSpace2;
                            size = i;
                            $this$fastForEach$iv = $this$fastForEach$iv2;
                            f2 = f3;
                            childConstraints = childConstraints2;
                            crossAxisSizes2 = crossAxisSizes;
                            currentSequence = crossAxisPositions;
                        }
                        List crossAxisSizes3 = crossAxisSizes2;
                        final List crossAxisPositions3 = currentSequence;
                        Ref.IntRef mainAxisSpace3 = mainAxisSpace;
                        Ref.IntRef currentCrossAxisSize4 = currentCrossAxisSize2;
                        List crossAxisPositions4 = currentSequence2;
                        Ref.IntRef currentMainAxisSize4 = currentMainAxisSize3;
                        if (crossAxisPositions4.isEmpty()) {
                            alertDialogKt$AlertDialogFlowRow$1$1 = this;
                        } else {
                            alertDialogKt$AlertDialogFlowRow$1$1 = this;
                            measure_3p2s80s$startNewSequence(sequences, crossAxisSpace, $this$Layout, crossAxisSpacing, crossAxisPositions4, crossAxisSizes3, currentCrossAxisSize4, crossAxisPositions3, mainAxisSpace3, currentMainAxisSize4);
                        }
                        if (Constraints.m6438getMaxWidthimpl(constraints) != Integer.MAX_VALUE) {
                            mainAxisLayoutSize = Constraints.m6438getMaxWidthimpl(constraints);
                        } else {
                            mainAxisLayoutSize = Math.max(mainAxisSpace3.element, Constraints.m6440getMinWidthimpl(constraints));
                        }
                        int crossAxisLayoutSize = Math.max(crossAxisSpace.element, Constraints.m6439getMinHeightimpl(constraints));
                        int layoutWidth = mainAxisLayoutSize;
                        final float f5 = mainAxisSpacing;
                        return MeasureScope.layout$default($this$Layout, layoutWidth, crossAxisLayoutSize, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$1$1.2
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
                                List $this$fastForEachIndexed$iv = sequences;
                                MeasureScope measureScope = $this$Layout;
                                float f6 = f5;
                                int i2 = mainAxisLayoutSize;
                                List<Integer> list4 = crossAxisPositions3;
                                int index$iv3 = 0;
                                int size2 = $this$fastForEachIndexed$iv.size();
                                while (index$iv3 < size2) {
                                    Object item$iv2 = $this$fastForEachIndexed$iv.get(index$iv3);
                                    List placeables = (List) item$iv2;
                                    int i3 = index$iv3;
                                    int size3 = placeables.size();
                                    int[] childrenMainAxisSizes = new int[size3];
                                    int i4 = 0;
                                    while (i4 < size3) {
                                        childrenMainAxisSizes[i4] = placeables.get(i4).getWidth() + (i4 < CollectionsKt.getLastIndex(placeables) ? measureScope.mo367roundToPx0680j_4(f6) : 0);
                                        i4++;
                                    }
                                    Arrangement.Vertical arrangement = Arrangement.INSTANCE.getBottom();
                                    int length = childrenMainAxisSizes.length;
                                    int[] mainAxisPositions = new int[length];
                                    List $this$fastForEachIndexed$iv2 = $this$fastForEachIndexed$iv;
                                    for (int i5 = 0; i5 < length; i5++) {
                                        mainAxisPositions[i5] = 0;
                                    }
                                    float f7 = f6;
                                    arrangement.arrange(measureScope, i2, childrenMainAxisSizes, mainAxisPositions);
                                    int size4 = placeables.size();
                                    for (int index$iv4 = 0; index$iv4 < size4; index$iv4++) {
                                        Object item$iv3 = placeables.get(index$iv4);
                                        Placeable placeable2 = (Placeable) item$iv3;
                                        int j = index$iv4;
                                        Placeable.PlacementScope.place$default($this$layout, placeable2, mainAxisPositions[j], list4.get(i3).intValue(), 0.0f, 4, null);
                                    }
                                    index$iv3++;
                                    f6 = f7;
                                    $this$fastForEachIndexed$iv = $this$fastForEachIndexed$iv2;
                                }
                            }
                        }, 4, null);
                    }

                    private static final boolean measure_3p2s80s$canAddToCurrentSequence(List<Placeable> list, Ref.IntRef currentMainAxisSize, MeasureScope $this_Layout, float $mainAxisSpacing, long $constraints, Placeable placeable) {
                        return list.isEmpty() || (currentMainAxisSize.element + $this_Layout.mo367roundToPx0680j_4($mainAxisSpacing)) + placeable.getWidth() <= Constraints.m6438getMaxWidthimpl($constraints);
                    }

                    private static final void measure_3p2s80s$startNewSequence(List<List<Placeable>> list, Ref.IntRef crossAxisSpace, MeasureScope $this_Layout, float $crossAxisSpacing, List<Placeable> list2, List<Integer> list3, Ref.IntRef currentCrossAxisSize, List<Integer> list4, Ref.IntRef mainAxisSpace, Ref.IntRef currentMainAxisSize) {
                        if (!list.isEmpty()) {
                            crossAxisSpace.element += $this_Layout.mo367roundToPx0680j_4($crossAxisSpacing);
                        }
                        list.add(0, CollectionsKt.toList(list2));
                        list3.add(Integer.valueOf(currentCrossAxisSize.element));
                        list4.add(Integer.valueOf(crossAxisSpace.element));
                        crossAxisSpace.element += currentCrossAxisSize.element;
                        mainAxisSpace.element = Math.max(mainAxisSpace.element, currentMainAxisSize.element);
                        list2.clear();
                        currentMainAxisSize.element = 0;
                        currentCrossAxisSize.element = 0;
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            MeasurePolicy measurePolicy$iv = (MeasurePolicy) value$iv;
            $composer2.endReplaceableGroup();
            int $changed$iv = ($dirty >> 6) & 14;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            Modifier modifier$iv = Modifier.INSTANCE;
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
            int $changed$iv$iv = (($changed$iv << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(factory$iv$iv);
            } else {
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv = Updater.m3496constructorimpl($composer2);
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), block$iv$iv);
            }
            skippableUpdate$iv$iv.invoke(SkippableUpdater.m3487boximpl(SkippableUpdater.m3488constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            function2.invoke($composer2, Integer.valueOf(($changed$iv$iv >> 9) & 14));
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$2
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

                public final void invoke(Composer composer, int i) {
                    AlertDialogKt.m1413AlertDialogFlowRowixp7dh8(mainAxisSpacing, crossAxisSpacing, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
