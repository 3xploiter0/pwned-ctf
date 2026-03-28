package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: Scaffold.kt */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a¨\u0001\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0006\u0010!\u001a\u00020\"2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0003ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a§\u0002\u0010&\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\u0013\b\u0002\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a2\u0013\b\u0002\u0010#\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a2\u0019\b\u0002\u0010+\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001a2\u0013\b\u0002\u0010-\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a2\b\b\u0002\u0010.\u001a\u00020\u00172\b\b\u0002\u0010/\u001a\u00020\t2 \b\u0002\u00100\u001a\u001a\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001d¢\u0006\u0002\b\u001a¢\u0006\u0002\b22\b\b\u0002\u00103\u001a\u00020\t2\b\b\u0002\u00104\u001a\u0002052\b\b\u0002\u00106\u001a\u00020\u00012\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u0002082\b\b\u0002\u0010:\u001a\u0002082\b\b\u0002\u0010;\u001a\u0002082\b\b\u0002\u0010<\u001a\u0002082\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001aH\u0007ø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001a\u009f\u0002\u0010&\u001a\u00020\u00142\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\u0013\b\u0002\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a2\u0013\b\u0002\u0010#\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a2\u0019\b\u0002\u0010+\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001a2\u0013\b\u0002\u0010-\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a2\b\b\u0002\u0010.\u001a\u00020\u00172\b\b\u0002\u0010/\u001a\u00020\t2 \b\u0002\u00100\u001a\u001a\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001d¢\u0006\u0002\b\u001a¢\u0006\u0002\b22\b\b\u0002\u00103\u001a\u00020\t2\b\b\u0002\u00104\u001a\u0002052\b\b\u0002\u00106\u001a\u00020\u00012\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u0002082\b\b\u0002\u0010:\u001a\u0002082\b\b\u0002\u0010;\u001a\u0002082\b\b\u0002\u0010<\u001a\u0002082\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001aH\u0007ø\u0001\u0000¢\u0006\u0004\b?\u0010@\u001a¨\u0001\u0010A\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0006\u0010!\u001a\u00020\"2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0003ø\u0001\u0000¢\u0006\u0004\bB\u0010%\u001a¨\u0001\u0010C\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001b2\u0006\u0010!\u001a\u00020\"2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0003ø\u0001\u0000¢\u0006\u0004\bD\u0010%\u001a!\u0010E\u001a\u00020*2\b\b\u0002\u0010F\u001a\u00020G2\b\b\u0002\u0010H\u001a\u00020,H\u0007¢\u0006\u0002\u0010I\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u001c\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"1\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0087\u008e\u0002¢\u0006\u0018\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006J"}, d2 = {"FabSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "LocalFabPlacement", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/material/FabPlacement;", "getLocalFabPlacement", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "<set-?>", "", "ScaffoldSubcomposeInMeasureFix", "getScaffoldSubcomposeInMeasureFix$annotations", "()V", "getScaffoldSubcomposeInMeasureFix", "()Z", "setScaffoldSubcomposeInMeasureFix", "(Z)V", "ScaffoldSubcomposeInMeasureFix$delegate", "Landroidx/compose/runtime/MutableState;", "LegacyScaffoldLayout", "", "isFabDocked", "fabPosition", "Landroidx/compose/material/FabPosition;", "topBar", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "Landroidx/compose/ui/UiComposable;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/PaddingValues;", "snackbar", "fab", "contentWindowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "bottomBar", "LegacyScaffoldLayout-i1QSOvI", "(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "Scaffold", "modifier", "Landroidx/compose/ui/Modifier;", "scaffoldState", "Landroidx/compose/material/ScaffoldState;", "snackbarHost", "Landroidx/compose/material/SnackbarHostState;", "floatingActionButton", "floatingActionButtonPosition", "isFloatingActionButtonDocked", "drawerContent", "Landroidx/compose/foundation/layout/ColumnScope;", "Lkotlin/ExtensionFunctionType;", "drawerGesturesEnabled", "drawerShape", "Landroidx/compose/ui/graphics/Shape;", "drawerElevation", "drawerBackgroundColor", "Landroidx/compose/ui/graphics/Color;", "drawerContentColor", "drawerScrimColor", "backgroundColor", "contentColor", "Scaffold-u4IkXBM", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "Scaffold-27mzLpw", "(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "ScaffoldLayout", "ScaffoldLayout-i1QSOvI", "ScaffoldLayoutWithMeasureFix", "ScaffoldLayoutWithMeasureFix-i1QSOvI", "rememberScaffoldState", "drawerState", "Landroidx/compose/material/DrawerState;", "snackbarHostState", "(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;", "material_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScaffoldKt {
    private static final MutableState ScaffoldSubcomposeInMeasureFix$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
    private static final ProvidableCompositionLocal<FabPlacement> LocalFabPlacement = CompositionLocalKt.staticCompositionLocalOf(new Function0<FabPlacement>() { // from class: androidx.compose.material.ScaffoldKt$LocalFabPlacement$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FabPlacement invoke() {
            return null;
        }
    });
    private static final float FabSpacing = Dp.m6485constructorimpl(16);

    public static /* synthetic */ void getScaffoldSubcomposeInMeasureFix$annotations() {
    }

    public static final ScaffoldState rememberScaffoldState(DrawerState drawerState, SnackbarHostState snackbarHostState, Composer $composer, int $changed, int i) {
        Object value$iv$iv;
        Object value$iv$iv2;
        $composer.startReplaceableGroup(1569641925);
        ComposerKt.sourceInformation($composer, "C(rememberScaffoldState)74@2854L39,75@2938L32,76@2990L62:Scaffold.kt#jmzs0o");
        if ((i & 1) != 0) {
            drawerState = DrawerKt.rememberDrawerState(DrawerValue.Closed, null, $composer, 6, 2);
        }
        if ((i & 2) != 0) {
            $composer.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv = $composer.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv2 = new SnackbarHostState();
                $composer.updateRememberedValue(value$iv$iv2);
            } else {
                value$iv$iv2 = it$iv$iv;
            }
            $composer.endReplaceableGroup();
            snackbarHostState = (SnackbarHostState) value$iv$iv2;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1569641925, $changed, -1, "androidx.compose.material.rememberScaffoldState (Scaffold.kt:76)");
        }
        $composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
        Object it$iv$iv2 = $composer.rememberedValue();
        if (it$iv$iv2 == Composer.INSTANCE.getEmpty()) {
            value$iv$iv = new ScaffoldState(drawerState, snackbarHostState);
            $composer.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv2;
        }
        $composer.endReplaceableGroup();
        ScaffoldState scaffoldState = (ScaffoldState) value$iv$iv;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceableGroup();
        return scaffoldState;
    }

    /* renamed from: Scaffold-u4IkXBM, reason: not valid java name */
    public static final void m1642Scaffoldu4IkXBM(final WindowInsets contentWindowInsets, Modifier modifier, ScaffoldState scaffoldState, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function3, Function2<? super Composer, ? super Integer, Unit> function23, int floatingActionButtonPosition, boolean isFloatingActionButtonDocked, Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function32, boolean drawerGesturesEnabled, Shape drawerShape, float drawerElevation, long drawerBackgroundColor, long drawerContentColor, long drawerScrimColor, long backgroundColor, long contentColor, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function33, Composer $composer, final int $changed, final int $changed1, final int i) {
        int i2;
        Modifier modifier2;
        ScaffoldState scaffoldState2;
        Function2 topBar;
        Function2 bottomBar;
        Function3 snackbarHost;
        Function2 floatingActionButton;
        int floatingActionButtonPosition2;
        Function3 drawerContent;
        boolean drawerGesturesEnabled2;
        CornerBasedShape drawerShape2;
        float drawerElevation2;
        Shape drawerShape3;
        int $dirty1;
        long drawerBackgroundColor2;
        long drawerContentColor2;
        long drawerBackgroundColor3;
        int i3;
        long drawerScrimColor2;
        long backgroundColor2;
        int $dirty;
        Shape drawerShape4;
        long contentColor2;
        long backgroundColor3;
        int $dirty12;
        Modifier modifier3;
        boolean isFloatingActionButtonDocked2;
        ScaffoldState scaffoldState3;
        float drawerElevation3;
        Object value$iv$iv;
        ScaffoldState scaffoldState4;
        float drawerElevation4;
        boolean isFloatingActionButtonDocked3;
        Shape drawerShape5;
        Function3 drawerContent2;
        boolean drawerGesturesEnabled3;
        Function2 topBar2;
        Function2 bottomBar2;
        int floatingActionButtonPosition3;
        Function3 snackbarHost2;
        Function2 floatingActionButton2;
        long drawerContentColor3;
        long drawerBackgroundColor4;
        long drawerScrimColor3;
        long backgroundColor4;
        long contentColor3;
        ScaffoldState scaffoldState5;
        Modifier modifier4;
        Composer $composer2 = $composer.startRestartGroup(-1288630565);
        ComposerKt.sourceInformation($composer2, "C(Scaffold)P(4,15,16,18,1,17,12,13:c#material.FabPosition,14,6,9,11,8:c#ui.unit.Dp,5:c#ui.graphics.Color,7:c#ui.graphics.Color,10:c#ui.graphics.Color,0:c#ui.graphics.Color,3:c#ui.graphics.Color)187@8483L23,196@8993L6,198@9108L6,199@9156L38,200@9241L10,201@9296L6,202@9341L32,205@9449L86:Scaffold.kt#jmzs0o");
        int $dirty2 = $changed;
        int $dirty13 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 14) == 0) {
            $dirty2 |= $composer2.changed(contentWindowInsets) ? 4 : 2;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty2 |= 48;
        } else if (($changed & 112) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty2 |= ((i & 4) == 0 && $composer2.changed(scaffoldState)) ? 256 : 128;
        }
        int i5 = i & 8;
        int i6 = 1024;
        if (i5 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty2 |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        int i7 = i & 16;
        if (i7 != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 57344) == 0) {
            $dirty2 |= $composer2.changedInstance(function22) ? 16384 : 8192;
        }
        int i8 = i & 32;
        if (i8 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & 458752) == 0) {
            $dirty2 |= $composer2.changedInstance(function3) ? 131072 : 65536;
        }
        int i9 = i & 64;
        if (i9 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 3670016) == 0) {
            $dirty2 |= $composer2.changedInstance(function23) ? 1048576 : 524288;
        }
        int i10 = i & 128;
        if (i10 != 0) {
            $dirty2 |= 12582912;
            i2 = floatingActionButtonPosition;
        } else if (($changed & 29360128) == 0) {
            i2 = floatingActionButtonPosition;
            $dirty2 |= $composer2.changed(i2) ? 8388608 : 4194304;
        } else {
            i2 = floatingActionButtonPosition;
        }
        int i11 = i & 256;
        if (i11 != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 234881024) == 0) {
            $dirty2 |= $composer2.changed(isFloatingActionButtonDocked) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i12 = i & 512;
        if (i12 != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 1879048192) == 0) {
            $dirty2 |= $composer2.changedInstance(function32) ? 536870912 : 268435456;
        }
        int i13 = i & 1024;
        if (i13 != 0) {
            $dirty13 |= 6;
        } else if (($changed1 & 14) == 0) {
            $dirty13 |= $composer2.changed(drawerGesturesEnabled) ? 4 : 2;
        }
        if (($changed1 & 112) == 0) {
            $dirty13 |= ((i & 2048) == 0 && $composer2.changed(drawerShape)) ? 32 : 16;
        }
        int i14 = i & 4096;
        if (i14 != 0) {
            $dirty13 |= 384;
        } else if (($changed1 & 896) == 0) {
            $dirty13 |= $composer2.changed(drawerElevation) ? 256 : 128;
        }
        if (($changed1 & 7168) == 0) {
            if ((i & 8192) == 0 && $composer2.changed(drawerBackgroundColor)) {
                i6 = 2048;
            }
            $dirty13 |= i6;
        }
        if (($changed1 & 57344) == 0) {
            $dirty13 |= ((i & 16384) == 0 && $composer2.changed(drawerContentColor)) ? 16384 : 8192;
        }
        if (($changed1 & 458752) == 0) {
            $dirty13 |= ((i & 32768) == 0 && $composer2.changed(drawerScrimColor)) ? 131072 : 65536;
        }
        if (($changed1 & 3670016) == 0) {
            $dirty13 |= ((i & 65536) == 0 && $composer2.changed(backgroundColor)) ? 1048576 : 524288;
        }
        if (($changed1 & 29360128) == 0) {
            $dirty13 |= ((i & 131072) == 0 && $composer2.changed(contentColor)) ? 8388608 : 4194304;
        }
        if ((i & 262144) != 0) {
            $dirty13 |= 100663296;
        } else if (($changed1 & 234881024) == 0) {
            $dirty13 |= $composer2.changedInstance(function33) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if (($dirty2 & 1533916891) == 306783378 && (191739611 & $dirty13) == 38347922 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier;
            scaffoldState5 = scaffoldState;
            topBar2 = function2;
            bottomBar2 = function22;
            snackbarHost2 = function3;
            floatingActionButton2 = function23;
            isFloatingActionButtonDocked3 = isFloatingActionButtonDocked;
            drawerContent2 = function32;
            drawerGesturesEnabled3 = drawerGesturesEnabled;
            drawerShape5 = drawerShape;
            drawerElevation4 = drawerElevation;
            drawerBackgroundColor4 = drawerBackgroundColor;
            drawerContentColor3 = drawerContentColor;
            drawerScrimColor3 = drawerScrimColor;
            backgroundColor4 = backgroundColor;
            contentColor3 = contentColor;
            floatingActionButtonPosition3 = i2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 4) != 0) {
                    modifier2 = modifier5;
                    scaffoldState2 = rememberScaffoldState(null, null, $composer2, 0, 3);
                    $dirty2 &= -897;
                } else {
                    modifier2 = modifier5;
                    scaffoldState2 = scaffoldState;
                }
                topBar = i5 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1524getLambda1$material_release() : function2;
                bottomBar = i7 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1525getLambda2$material_release() : function22;
                snackbarHost = i8 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1526getLambda3$material_release() : function3;
                floatingActionButton = i9 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1527getLambda4$material_release() : function23;
                floatingActionButtonPosition2 = i10 != 0 ? FabPosition.INSTANCE.m1573getEnd5ygKITE() : floatingActionButtonPosition;
                boolean isFloatingActionButtonDocked4 = i11 != 0 ? false : isFloatingActionButtonDocked;
                drawerContent = i12 != 0 ? null : function32;
                drawerGesturesEnabled2 = i13 != 0 ? true : drawerGesturesEnabled;
                int $dirty3 = $dirty2;
                ScaffoldState scaffoldState6 = scaffoldState2;
                if ((i & 2048) != 0) {
                    drawerShape2 = MaterialTheme.INSTANCE.getShapes($composer2, 6).getLarge();
                    $dirty13 &= -113;
                } else {
                    drawerShape2 = drawerShape;
                }
                drawerElevation2 = i14 != 0 ? DrawerDefaults.INSTANCE.m1542getElevationD9Ej5fM() : drawerElevation;
                if ((i & 8192) != 0) {
                    drawerShape3 = drawerShape2;
                    $dirty1 = $dirty13 & (-7169);
                    drawerBackgroundColor2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1500getSurface0d7_KjU();
                } else {
                    drawerShape3 = drawerShape2;
                    $dirty1 = $dirty13;
                    drawerBackgroundColor2 = drawerBackgroundColor;
                }
                boolean isFloatingActionButtonDocked5 = isFloatingActionButtonDocked4;
                if ((i & 16384) != 0) {
                    drawerContentColor2 = ColorsKt.m1514contentColorForek8zF_U(drawerBackgroundColor2, $composer2, ($dirty1 >> 9) & 14);
                    $dirty1 &= -57345;
                } else {
                    drawerContentColor2 = drawerContentColor;
                }
                if ((32768 & i) != 0) {
                    drawerBackgroundColor3 = drawerBackgroundColor2;
                    i3 = 6;
                    drawerScrimColor2 = DrawerDefaults.INSTANCE.getScrimColor($composer2, 6);
                    $dirty1 &= -458753;
                } else {
                    drawerBackgroundColor3 = drawerBackgroundColor2;
                    i3 = 6;
                    drawerScrimColor2 = drawerScrimColor;
                }
                if ((i & 65536) != 0) {
                    backgroundColor2 = MaterialTheme.INSTANCE.getColors($composer2, i3).m1489getBackground0d7_KjU();
                    $dirty1 &= -3670017;
                } else {
                    backgroundColor2 = backgroundColor;
                }
                if ((i & 131072) != 0) {
                    $dirty = $dirty3;
                    drawerShape4 = drawerShape3;
                    $dirty12 = $dirty1 & (-29360129);
                    contentColor2 = ColorsKt.m1514contentColorForek8zF_U(backgroundColor2, $composer2, ($dirty1 >> 18) & 14);
                    isFloatingActionButtonDocked2 = isFloatingActionButtonDocked5;
                    backgroundColor3 = backgroundColor2;
                    modifier3 = modifier2;
                    scaffoldState3 = scaffoldState6;
                } else {
                    $dirty = $dirty3;
                    drawerShape4 = drawerShape3;
                    contentColor2 = contentColor;
                    backgroundColor3 = backgroundColor2;
                    $dirty12 = $dirty1;
                    modifier3 = modifier2;
                    isFloatingActionButtonDocked2 = isFloatingActionButtonDocked5;
                    scaffoldState3 = scaffoldState6;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 2048) != 0) {
                    $dirty13 &= -113;
                }
                if ((i & 8192) != 0) {
                    $dirty13 &= -7169;
                }
                if ((i & 16384) != 0) {
                    $dirty13 &= -57345;
                }
                if ((32768 & i) != 0) {
                    $dirty13 &= -458753;
                }
                if ((i & 65536) != 0) {
                    $dirty13 &= -3670017;
                }
                if ((i & 131072) != 0) {
                    $dirty13 &= -29360129;
                }
                topBar = function2;
                bottomBar = function22;
                floatingActionButton = function23;
                isFloatingActionButtonDocked2 = isFloatingActionButtonDocked;
                drawerContent = function32;
                drawerGesturesEnabled2 = drawerGesturesEnabled;
                drawerShape4 = drawerShape;
                drawerElevation2 = drawerElevation;
                drawerBackgroundColor3 = drawerBackgroundColor;
                drawerContentColor2 = drawerContentColor;
                drawerScrimColor2 = drawerScrimColor;
                backgroundColor3 = backgroundColor;
                contentColor2 = contentColor;
                $dirty = $dirty2;
                $dirty12 = $dirty13;
                floatingActionButtonPosition2 = i2;
                modifier3 = modifier;
                scaffoldState3 = scaffoldState;
                snackbarHost = function3;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                drawerElevation3 = drawerElevation2;
                ComposerKt.traceEventStart(-1288630565, $dirty, $dirty12, "androidx.compose.material.Scaffold (Scaffold.kt:204)");
            } else {
                drawerElevation3 = drawerElevation2;
            }
            int i15 = $dirty & 14;
            $composer2.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation($composer2, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean invalid$iv$iv = $composer2.changed(contentWindowInsets);
            Object it$iv$iv = $composer2.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new MutableWindowInsets(contentWindowInsets);
                $composer2.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            $composer2.endReplaceableGroup();
            final MutableWindowInsets safeInsets = (MutableWindowInsets) value$iv$iv;
            final long j = backgroundColor3;
            final long j2 = contentColor2;
            final boolean z = isFloatingActionButtonDocked2;
            final int i16 = floatingActionButtonPosition2;
            final Function2 function24 = topBar;
            final Function2 function25 = floatingActionButton;
            final Function2 function26 = bottomBar;
            final Function3 function34 = snackbarHost;
            final ScaffoldState scaffoldState7 = scaffoldState3;
            boolean isFloatingActionButtonDocked6 = isFloatingActionButtonDocked2;
            final Function3 child = ComposableLambdaKt.composableLambda($composer2, -219833176, true, new Function3<Modifier, Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$Scaffold$child$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier6, Composer composer, Integer num) {
                    invoke(modifier6, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Modifier childModifier, Composer $composer3, int $changed2) {
                    Object value$iv;
                    ComposerKt.sourceInformation($composer3, "C209@9601L905:Scaffold.kt#jmzs0o");
                    int $dirty4 = $changed2;
                    if (($changed2 & 14) == 0) {
                        $dirty4 |= $composer3.changed(childModifier) ? 4 : 2;
                    }
                    int $dirty5 = $dirty4;
                    if (($dirty5 & 91) != 18 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-219833176, $dirty5, -1, "androidx.compose.material.Scaffold.<anonymous> (Scaffold.kt:209)");
                        }
                        $composer3.startReplaceableGroup(-757570588);
                        boolean invalid$iv = $composer3.changed(safeInsets) | $composer3.changed(contentWindowInsets);
                        final MutableWindowInsets mutableWindowInsets = safeInsets;
                        final WindowInsets windowInsets = contentWindowInsets;
                        Object it$iv = $composer3.rememberedValue();
                        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv = new Function1<WindowInsets, Unit>() { // from class: androidx.compose.material.ScaffoldKt$Scaffold$child$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(WindowInsets windowInsets2) {
                                    invoke2(windowInsets2);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(WindowInsets consumedWindowInsets) {
                                    mutableWindowInsets.setInsets(WindowInsetsKt.exclude(windowInsets, consumedWindowInsets));
                                }
                            };
                            $composer3.updateRememberedValue(value$iv);
                        } else {
                            value$iv = it$iv;
                        }
                        $composer3.endReplaceableGroup();
                        Modifier modifierOnConsumedWindowInsetsChanged = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(childModifier, (Function1) value$iv);
                        long j3 = j;
                        long j4 = j2;
                        final boolean z2 = z;
                        final int i17 = i16;
                        final Function2<Composer, Integer, Unit> function27 = function24;
                        final Function3<PaddingValues, Composer, Integer, Unit> function35 = function33;
                        final Function2<Composer, Integer, Unit> function28 = function25;
                        final MutableWindowInsets mutableWindowInsets2 = safeInsets;
                        final Function2<Composer, Integer, Unit> function29 = function26;
                        final Function3<SnackbarHostState, Composer, Integer, Unit> function36 = function34;
                        final ScaffoldState scaffoldState8 = scaffoldState7;
                        SurfaceKt.m1675SurfaceFjzlyU(modifierOnConsumedWindowInsetsChanged, null, j3, j4, null, 0.0f, ComposableLambdaKt.composableLambda($composer3, 1772955108, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$Scaffold$child$1.2
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

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C218@10033L463:Scaffold.kt#jmzs0o");
                                if (($changed3 & 11) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1772955108, $changed3, -1, "androidx.compose.material.Scaffold.<anonymous>.<anonymous> (Scaffold.kt:218)");
                                    }
                                    boolean z3 = z2;
                                    int i18 = i17;
                                    Function2<Composer, Integer, Unit> function210 = function27;
                                    Function3<PaddingValues, Composer, Integer, Unit> function37 = function35;
                                    final Function3<SnackbarHostState, Composer, Integer, Unit> function38 = function36;
                                    final ScaffoldState scaffoldState9 = scaffoldState8;
                                    ScaffoldKt.m1643ScaffoldLayouti1QSOvI(z3, i18, function210, function37, ComposableLambdaKt.composableLambda($composer4, 433906483, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt.Scaffold.child.1.2.1
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

                                        public final void invoke(Composer $composer5, int $changed4) {
                                            ComposerKt.sourceInformation($composer5, "C225@10336L45:Scaffold.kt#jmzs0o");
                                            if (($changed4 & 11) == 2 && $composer5.getSkipping()) {
                                                $composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(433906483, $changed4, -1, "androidx.compose.material.Scaffold.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:225)");
                                            }
                                            function38.invoke(scaffoldState9.getSnackbarHostState(), $composer5, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), function28, mutableWindowInsets2, function29, $composer4, 24576);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }), $composer3, 1572864, 50);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            });
            if (drawerContent != null) {
                $composer2.startReplaceableGroup(-1013846315);
                ComposerKt.sourceInformation($composer2, "234@10555L487");
                scaffoldState4 = scaffoldState3;
                DrawerKt.m1545ModalDrawerGs3lGvM(drawerContent, modifier3, scaffoldState3.getDrawerState(), drawerGesturesEnabled2, drawerShape4, drawerElevation3, drawerBackgroundColor3, drawerContentColor2, drawerScrimColor2, ComposableLambdaKt.composableLambda($composer2, -1409196448, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$Scaffold$1
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
                        ComposerKt.sourceInformation($composer3, "C244@11015L15:Scaffold.kt#jmzs0o");
                        if (($changed2 & 11) == 2 && $composer3.getSkipping()) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1409196448, $changed2, -1, "androidx.compose.material.Scaffold.<anonymous> (Scaffold.kt:244)");
                        }
                        child.invoke(Modifier.INSTANCE, $composer3, 54);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }), $composer2, (($dirty >> 27) & 14) | 805306368 | ($dirty & 112) | (($dirty12 << 9) & 7168) | (($dirty12 << 9) & 57344) | (($dirty12 << 9) & 458752) | (($dirty12 << 9) & 3670016) | (($dirty12 << 9) & 29360128) | (($dirty12 << 9) & 234881024), 0);
                $composer2.endReplaceableGroup();
            } else {
                scaffoldState4 = scaffoldState3;
                $composer2.startReplaceableGroup(-1013845806);
                ComposerKt.sourceInformation($composer2, "247@11064L15");
                child.invoke(modifier3, $composer2, Integer.valueOf((($dirty >> 3) & 14) | 48));
                $composer2.endReplaceableGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            drawerElevation4 = drawerElevation3;
            isFloatingActionButtonDocked3 = isFloatingActionButtonDocked6;
            drawerShape5 = drawerShape4;
            drawerContent2 = drawerContent;
            drawerGesturesEnabled3 = drawerGesturesEnabled2;
            topBar2 = topBar;
            bottomBar2 = bottomBar;
            floatingActionButtonPosition3 = floatingActionButtonPosition2;
            snackbarHost2 = snackbarHost;
            floatingActionButton2 = floatingActionButton;
            drawerContentColor3 = drawerContentColor2;
            drawerBackgroundColor4 = drawerBackgroundColor3;
            drawerScrimColor3 = drawerScrimColor2;
            backgroundColor4 = backgroundColor3;
            contentColor3 = contentColor2;
            scaffoldState5 = scaffoldState4;
            modifier4 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final ScaffoldState scaffoldState8 = scaffoldState5;
            final Function2 function27 = topBar2;
            final Function2 function28 = bottomBar2;
            final Function3 function35 = snackbarHost2;
            final Function2 function29 = floatingActionButton2;
            final int i17 = floatingActionButtonPosition3;
            final boolean z2 = isFloatingActionButtonDocked3;
            final Function3 function36 = drawerContent2;
            final boolean z3 = drawerGesturesEnabled3;
            final Shape shape = drawerShape5;
            final float f = drawerElevation4;
            final long j3 = drawerBackgroundColor4;
            final long j4 = drawerContentColor3;
            final long j5 = drawerScrimColor3;
            final long j6 = backgroundColor4;
            final long j7 = contentColor3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$Scaffold$2
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

                public final void invoke(Composer composer, int i18) {
                    ScaffoldKt.m1642Scaffoldu4IkXBM(contentWindowInsets, modifier6, scaffoldState8, function27, function28, function35, function29, i17, z2, function36, z3, shape, f, j3, j4, j5, j6, j7, function33, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* renamed from: Scaffold-27mzLpw, reason: not valid java name */
    public static final void m1641Scaffold27mzLpw(Modifier modifier, ScaffoldState scaffoldState, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function3, Function2<? super Composer, ? super Integer, Unit> function23, int floatingActionButtonPosition, boolean isFloatingActionButtonDocked, Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function32, boolean drawerGesturesEnabled, Shape drawerShape, float drawerElevation, long drawerBackgroundColor, long drawerContentColor, long drawerScrimColor, long backgroundColor, long contentColor, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function33, Composer $composer, final int $changed, final int $changed1, final int i) {
        Function2 function24;
        int floatingActionButtonPosition2;
        Modifier modifier2;
        ScaffoldState scaffoldState2;
        Function2 topBar;
        Function2 bottomBar;
        Function3 snackbarHost;
        Function2 floatingActionButton;
        boolean isFloatingActionButtonDocked2;
        boolean drawerGesturesEnabled2;
        CornerBasedShape drawerShape2;
        float drawerElevation2;
        Shape drawerShape3;
        int $dirty1;
        long drawerBackgroundColor2;
        long drawerContentColor2;
        long drawerBackgroundColor3;
        long drawerScrimColor2;
        long backgroundColor2;
        int $dirty;
        Shape drawerShape4;
        long contentColor2;
        long backgroundColor3;
        int $dirty12;
        long drawerContentColor3;
        long drawerBackgroundColor4;
        long drawerScrimColor3;
        Modifier modifier3;
        Function3 drawerContent;
        ScaffoldState scaffoldState3;
        Composer $composer2;
        Modifier modifier4;
        ScaffoldState scaffoldState4;
        Function3 drawerContent2;
        Shape drawerShape5;
        boolean drawerGesturesEnabled3;
        float drawerElevation3;
        Function2 topBar2;
        Function2 bottomBar2;
        Function3 snackbarHost2;
        Function2 floatingActionButton2;
        int floatingActionButtonPosition3;
        boolean isFloatingActionButtonDocked3;
        Composer $composer3 = $composer.startRestartGroup(1037492569);
        ComposerKt.sourceInformation($composer3, "C(Scaffold)P(14,15,17,1,16,11,12:c#material.FabPosition,13,5,8,10,7:c#ui.unit.Dp,4:c#ui.graphics.Color,6:c#ui.graphics.Color,9:c#ui.graphics.Color,0:c#ui.graphics.Color,3:c#ui.graphics.Color)315@14928L23,324@15438L6,326@15553L6,327@15601L38,328@15686L10,329@15741L6,330@15786L32,333@15877L495:Scaffold.kt#jmzs0o");
        int $dirty2 = $changed;
        int $dirty13 = $changed1;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
        } else if (($changed & 14) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty2 |= ((i & 2) == 0 && $composer3.changed(scaffoldState)) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= 384;
        } else if (($changed & 896) == 0) {
            $dirty2 |= $composer3.changedInstance(function2) ? 256 : 128;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty2 |= $composer3.changedInstance(function22) ? 2048 : 1024;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 57344) == 0) {
            $dirty2 |= $composer3.changedInstance(function3) ? 16384 : 8192;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function24 = function23;
        } else if (($changed & 458752) == 0) {
            function24 = function23;
            $dirty2 |= $composer3.changedInstance(function24) ? 131072 : 65536;
        } else {
            function24 = function23;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty2 |= 1572864;
            floatingActionButtonPosition2 = floatingActionButtonPosition;
        } else if (($changed & 3670016) == 0) {
            floatingActionButtonPosition2 = floatingActionButtonPosition;
            $dirty2 |= $composer3.changed(floatingActionButtonPosition2) ? 1048576 : 524288;
        } else {
            floatingActionButtonPosition2 = floatingActionButtonPosition;
        }
        int i8 = i & 128;
        if (i8 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 29360128) == 0) {
            $dirty2 |= $composer3.changed(isFloatingActionButtonDocked) ? 8388608 : 4194304;
        }
        int i9 = i & 256;
        if (i9 != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 234881024) == 0) {
            $dirty2 |= $composer3.changedInstance(function32) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i10 = i & 512;
        if (i10 != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 1879048192) == 0) {
            $dirty2 |= $composer3.changed(drawerGesturesEnabled) ? 536870912 : 268435456;
        }
        if (($changed1 & 14) == 0) {
            $dirty13 |= ((i & 1024) == 0 && $composer3.changed(drawerShape)) ? 4 : 2;
        }
        int i11 = i & 2048;
        if (i11 != 0) {
            $dirty13 |= 48;
        } else if (($changed1 & 112) == 0) {
            $dirty13 |= $composer3.changed(drawerElevation) ? 32 : 16;
        }
        if (($changed1 & 896) == 0) {
            $dirty13 |= ((i & 4096) == 0 && $composer3.changed(drawerBackgroundColor)) ? 256 : 128;
        }
        if (($changed1 & 7168) == 0) {
            $dirty13 |= ((i & 8192) == 0 && $composer3.changed(drawerContentColor)) ? 2048 : 1024;
        }
        if (($changed1 & 57344) == 0) {
            $dirty13 |= ((i & 16384) == 0 && $composer3.changed(drawerScrimColor)) ? 16384 : 8192;
        }
        if (($changed1 & 458752) == 0) {
            $dirty13 |= ((i & 32768) == 0 && $composer3.changed(backgroundColor)) ? 131072 : 65536;
        }
        if (($changed1 & 3670016) == 0) {
            $dirty13 |= ((i & 65536) == 0 && $composer3.changed(contentColor)) ? 1048576 : 524288;
        }
        if ((i & 131072) != 0) {
            $dirty13 |= 12582912;
        } else if (($changed1 & 29360128) == 0) {
            $dirty13 |= $composer3.changedInstance(function33) ? 8388608 : 4194304;
        }
        if (($dirty2 & 1533916891) == 306783378 && (23967451 & $dirty13) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier;
            scaffoldState4 = scaffoldState;
            topBar2 = function2;
            bottomBar2 = function22;
            snackbarHost2 = function3;
            isFloatingActionButtonDocked3 = isFloatingActionButtonDocked;
            drawerContent2 = function32;
            drawerGesturesEnabled3 = drawerGesturesEnabled;
            drawerShape5 = drawerShape;
            drawerElevation3 = drawerElevation;
            drawerBackgroundColor4 = drawerBackgroundColor;
            drawerContentColor3 = drawerContentColor;
            drawerScrimColor3 = drawerScrimColor;
            backgroundColor3 = backgroundColor;
            contentColor2 = contentColor;
            floatingActionButton2 = function24;
            floatingActionButtonPosition3 = floatingActionButtonPosition2;
            $composer2 = $composer3;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 2) != 0) {
                    modifier2 = modifier5;
                    scaffoldState2 = rememberScaffoldState(null, null, $composer3, 0, 3);
                    $dirty2 &= -113;
                } else {
                    modifier2 = modifier5;
                    scaffoldState2 = scaffoldState;
                }
                topBar = i3 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1528getLambda5$material_release() : function2;
                bottomBar = i4 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1529getLambda6$material_release() : function22;
                snackbarHost = i5 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1530getLambda7$material_release() : function3;
                floatingActionButton = i6 != 0 ? ComposableSingletons$ScaffoldKt.INSTANCE.m1531getLambda8$material_release() : function23;
                if (i7 != 0) {
                    floatingActionButtonPosition2 = FabPosition.INSTANCE.m1573getEnd5ygKITE();
                }
                isFloatingActionButtonDocked2 = i8 != 0 ? false : isFloatingActionButtonDocked;
                Function3 drawerContent3 = i9 != 0 ? null : function32;
                drawerGesturesEnabled2 = i10 != 0 ? true : drawerGesturesEnabled;
                int $dirty3 = $dirty2;
                ScaffoldState scaffoldState5 = scaffoldState2;
                if ((i & 1024) != 0) {
                    drawerShape2 = MaterialTheme.INSTANCE.getShapes($composer3, 6).getLarge();
                    $dirty13 &= -15;
                } else {
                    drawerShape2 = drawerShape;
                }
                drawerElevation2 = i11 != 0 ? DrawerDefaults.INSTANCE.m1542getElevationD9Ej5fM() : drawerElevation;
                if ((i & 4096) != 0) {
                    drawerShape3 = drawerShape2;
                    $dirty1 = $dirty13 & (-897);
                    drawerBackgroundColor2 = MaterialTheme.INSTANCE.getColors($composer3, 6).m1500getSurface0d7_KjU();
                } else {
                    drawerShape3 = drawerShape2;
                    $dirty1 = $dirty13;
                    drawerBackgroundColor2 = drawerBackgroundColor;
                }
                Function3 drawerContent4 = drawerContent3;
                if ((i & 8192) != 0) {
                    drawerContentColor2 = ColorsKt.m1514contentColorForek8zF_U(drawerBackgroundColor2, $composer3, ($dirty1 >> 6) & 14);
                    $dirty1 &= -7169;
                } else {
                    drawerContentColor2 = drawerContentColor;
                }
                if ((i & 16384) != 0) {
                    drawerBackgroundColor3 = drawerBackgroundColor2;
                    drawerScrimColor2 = DrawerDefaults.INSTANCE.getScrimColor($composer3, 6);
                    $dirty1 &= -57345;
                } else {
                    drawerBackgroundColor3 = drawerBackgroundColor2;
                    drawerScrimColor2 = drawerScrimColor;
                }
                if ((32768 & i) != 0) {
                    backgroundColor2 = MaterialTheme.INSTANCE.getColors($composer3, 6).m1489getBackground0d7_KjU();
                    $dirty1 &= -458753;
                } else {
                    backgroundColor2 = backgroundColor;
                }
                if ((i & 65536) != 0) {
                    $dirty = $dirty3;
                    drawerShape4 = drawerShape3;
                    backgroundColor3 = backgroundColor2;
                    $dirty12 = $dirty1 & (-3670017);
                    drawerContentColor3 = drawerContentColor2;
                    drawerBackgroundColor4 = drawerBackgroundColor3;
                    drawerScrimColor3 = drawerScrimColor2;
                    contentColor2 = ColorsKt.m1514contentColorForek8zF_U(backgroundColor2, $composer3, ($dirty1 >> 15) & 14);
                    modifier3 = modifier2;
                    drawerContent = drawerContent4;
                    scaffoldState3 = scaffoldState5;
                } else {
                    $dirty = $dirty3;
                    drawerShape4 = drawerShape3;
                    contentColor2 = contentColor;
                    backgroundColor3 = backgroundColor2;
                    $dirty12 = $dirty1;
                    drawerContentColor3 = drawerContentColor2;
                    drawerBackgroundColor4 = drawerBackgroundColor3;
                    drawerScrimColor3 = drawerScrimColor2;
                    modifier3 = modifier2;
                    drawerContent = drawerContent4;
                    scaffoldState3 = scaffoldState5;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 1024) != 0) {
                    $dirty13 &= -15;
                }
                if ((i & 4096) != 0) {
                    $dirty13 &= -897;
                }
                if ((i & 8192) != 0) {
                    $dirty13 &= -7169;
                }
                if ((i & 16384) != 0) {
                    $dirty13 &= -57345;
                }
                if ((32768 & i) != 0) {
                    $dirty13 &= -458753;
                }
                if ((i & 65536) != 0) {
                    $dirty13 &= -3670017;
                }
                topBar = function2;
                bottomBar = function22;
                isFloatingActionButtonDocked2 = isFloatingActionButtonDocked;
                drawerContent = function32;
                drawerGesturesEnabled2 = drawerGesturesEnabled;
                drawerShape4 = drawerShape;
                drawerElevation2 = drawerElevation;
                drawerBackgroundColor4 = drawerBackgroundColor;
                drawerContentColor3 = drawerContentColor;
                drawerScrimColor3 = drawerScrimColor;
                backgroundColor3 = backgroundColor;
                contentColor2 = contentColor;
                $dirty = $dirty2;
                $dirty12 = $dirty13;
                floatingActionButton = function24;
                modifier3 = modifier;
                scaffoldState3 = scaffoldState;
                snackbarHost = function3;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                $composer2 = $composer3;
                ComposerKt.traceEventStart(1037492569, $dirty, $dirty12, "androidx.compose.material.Scaffold (Scaffold.kt:332)");
            } else {
                $composer2 = $composer3;
            }
            m1642Scaffoldu4IkXBM(WindowInsetsKt.m751WindowInsetsa9UjIt4$default(Dp.m6485constructorimpl(0), 0.0f, 0.0f, 0.0f, 14, null), modifier3, scaffoldState3, topBar, bottomBar, snackbarHost, floatingActionButton, floatingActionButtonPosition2, isFloatingActionButtonDocked2, drawerContent, drawerGesturesEnabled2, drawerShape4, drawerElevation2, drawerBackgroundColor4, drawerContentColor3, drawerScrimColor3, backgroundColor3, contentColor2, function33, $composer2, (($dirty << 3) & 112) | (($dirty << 3) & 896) | (($dirty << 3) & 7168) | (($dirty << 3) & 57344) | (($dirty << 3) & 458752) | (($dirty << 3) & 3670016) | (($dirty << 3) & 29360128) | (($dirty << 3) & 234881024) | (($dirty << 3) & 1879048192), (($dirty >> 27) & 14) | (($dirty12 << 3) & 112) | (($dirty12 << 3) & 896) | (($dirty12 << 3) & 7168) | (($dirty12 << 3) & 57344) | (($dirty12 << 3) & 458752) | (($dirty12 << 3) & 3670016) | (($dirty12 << 3) & 29360128) | (($dirty12 << 3) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            scaffoldState4 = scaffoldState3;
            drawerContent2 = drawerContent;
            drawerShape5 = drawerShape4;
            drawerGesturesEnabled3 = drawerGesturesEnabled2;
            drawerElevation3 = drawerElevation2;
            topBar2 = topBar;
            bottomBar2 = bottomBar;
            snackbarHost2 = snackbarHost;
            floatingActionButton2 = floatingActionButton;
            floatingActionButtonPosition3 = floatingActionButtonPosition2;
            isFloatingActionButtonDocked3 = isFloatingActionButtonDocked2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final ScaffoldState scaffoldState6 = scaffoldState4;
            final Function2 function25 = topBar2;
            final Function2 function26 = bottomBar2;
            final Function3 function34 = snackbarHost2;
            final Function2 function27 = floatingActionButton2;
            final int i12 = floatingActionButtonPosition3;
            final boolean z = isFloatingActionButtonDocked3;
            final Function3 function35 = drawerContent2;
            final boolean z2 = drawerGesturesEnabled3;
            final Shape shape = drawerShape5;
            final float f = drawerElevation3;
            final long j = drawerBackgroundColor4;
            final long j2 = drawerContentColor3;
            final long j3 = drawerScrimColor3;
            final long j4 = backgroundColor3;
            final long j5 = contentColor2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$Scaffold$3
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

                public final void invoke(Composer composer, int i13) {
                    ScaffoldKt.m1641Scaffold27mzLpw(modifier6, scaffoldState6, function25, function26, function34, function27, i12, z, function35, z2, shape, f, j, j2, j3, j4, j5, function33, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    public static final boolean getScaffoldSubcomposeInMeasureFix() {
        State $this$getValue$iv = ScaffoldSubcomposeInMeasureFix$delegate;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    public static final void setScaffoldSubcomposeInMeasureFix(boolean z) {
        MutableState $this$setValue$iv = ScaffoldSubcomposeInMeasureFix$delegate;
        $this$setValue$iv.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ScaffoldLayout-i1QSOvI, reason: not valid java name */
    public static final void m1643ScaffoldLayouti1QSOvI(final boolean isFabDocked, final int fabPosition, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final WindowInsets contentWindowInsets, final Function2<? super Composer, ? super Integer, Unit> function24, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-468424875);
        ComposerKt.sourceInformation($composer2, "C(ScaffoldLayout)P(5,4:c#material.FabPosition,7,1,6,3,2):Scaffold.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(isFabDocked) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer2.changed(fabPosition) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            $dirty |= $composer2.changedInstance(function3) ? 2048 : 1024;
        }
        if (($changed & 57344) == 0) {
            $dirty |= $composer2.changedInstance(function22) ? 16384 : 8192;
        }
        if (($changed & 458752) == 0) {
            $dirty |= $composer2.changedInstance(function23) ? 131072 : 65536;
        }
        if (($changed & 3670016) == 0) {
            $dirty |= $composer2.changed(contentWindowInsets) ? 1048576 : 524288;
        }
        if (($changed & 29360128) == 0) {
            $dirty |= $composer2.changedInstance(function24) ? 8388608 : 4194304;
        }
        if (($dirty & 23967451) != 4793490 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-468424875, $dirty, -1, "androidx.compose.material.ScaffoldLayout (Scaffold.kt:409)");
            }
            if (getScaffoldSubcomposeInMeasureFix()) {
                $composer2.startReplaceableGroup(-2103098080);
                ComposerKt.sourceInformation($composer2, "411@18576L322");
                m1644ScaffoldLayoutWithMeasureFixi1QSOvI(isFabDocked, fabPosition, function2, function3, function22, function23, contentWindowInsets, function24, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | ($dirty & 458752) | (3670016 & $dirty) | (29360128 & $dirty));
                $composer2.endReplaceableGroup();
            } else {
                $composer2.startReplaceableGroup(-2103097736);
                ComposerKt.sourceInformation($composer2, "422@18920L314");
                m1640LegacyScaffoldLayouti1QSOvI(isFabDocked, fabPosition, function2, function3, function22, function23, contentWindowInsets, function24, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | ($dirty & 458752) | (3670016 & $dirty) | (29360128 & $dirty));
                $composer2.endReplaceableGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayout$1
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
                    ScaffoldKt.m1643ScaffoldLayouti1QSOvI(isFabDocked, fabPosition, function2, function3, function22, function23, contentWindowInsets, function24, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ScaffoldLayoutWithMeasureFix-i1QSOvI, reason: not valid java name */
    public static final void m1644ScaffoldLayoutWithMeasureFixi1QSOvI(final boolean isFabDocked, final int fabPosition, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final WindowInsets contentWindowInsets, final Function2<? super Composer, ? super Integer, Unit> function24, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3;
        Composer $composer4 = $composer.startRestartGroup(1285900760);
        ComposerKt.sourceInformation($composer4, "C(ScaffoldLayoutWithMeasureFix)P(5,4:c#material.FabPosition,7,1,6,3,2)450@19773L6694:Scaffold.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer4.changed(isFabDocked) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer4.changed(fabPosition) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer4.changedInstance(function2) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            $dirty |= $composer4.changedInstance(function3) ? 2048 : 1024;
        }
        if ((57344 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function22) ? 16384 : 8192;
        }
        if ((458752 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function23) ? 131072 : 65536;
        }
        if ((3670016 & $changed) == 0) {
            $dirty |= $composer4.changed(contentWindowInsets) ? 1048576 : 524288;
        }
        if ((29360128 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function24) ? 8388608 : 4194304;
        }
        int $dirty2 = $dirty;
        if ((23967451 & $dirty2) != 4793490 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1285900760, $dirty2, -1, "androidx.compose.material.ScaffoldLayoutWithMeasureFix (Scaffold.kt:449)");
            }
            $composer4.startReplaceableGroup(-757560492);
            boolean invalid$iv = $composer4.changedInstance(function2) | $composer4.changedInstance(function22) | $composer4.changed(contentWindowInsets) | $composer4.changedInstance(function23) | $composer4.changed(fabPosition) | $composer4.changed(isFabDocked) | $composer4.changedInstance(function24) | $composer4.changedInstance(function3);
            Object value$iv = $composer4.rememberedValue();
            if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                $composer2 = $composer4;
                value$iv = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m1649invoke0kLqBqw(subcomposeMeasureScope, constraints.getValue());
                    }

                    /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m1649invoke0kLqBqw(final SubcomposeMeasureScope $this$SubcomposeLayout, long constraints) {
                        Object maxElem$iv;
                        Object maxElem$iv2;
                        FabPlacement fabPlacement;
                        int i;
                        Object maxElem$iv3;
                        Object maxElem$iv4;
                        Object maxElem$iv5;
                        int layoutWidth = Constraints.m6438getMaxWidthimpl(constraints);
                        final int layoutHeight = Constraints.m6437getMaxHeightimpl(constraints);
                        long looseConstraints = Constraints.m6428copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m6440getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m6438getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m6439getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m6437getMaxHeightimpl(constraints) : 0);
                        List $this$fastMap$iv = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.TopBar, function2);
                        List target$iv = new ArrayList($this$fastMap$iv.size());
                        int size = $this$fastMap$iv.size();
                        for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                            Object item$iv$iv = $this$fastMap$iv.get(index$iv$iv);
                            Measurable it = (Measurable) item$iv$iv;
                            target$iv.add(it.mo5339measureBRTryo0(looseConstraints));
                        }
                        final List topBarPlaceables = target$iv;
                        if (topBarPlaceables.isEmpty()) {
                            maxElem$iv = null;
                        } else {
                            maxElem$iv = topBarPlaceables.get(0);
                            Placeable it2 = (Placeable) maxElem$iv;
                            int maxValue$iv = it2.getHeight();
                            int i$iv = 1;
                            int lastIndex = CollectionsKt.getLastIndex(topBarPlaceables);
                            if (1 <= lastIndex) {
                                while (true) {
                                    Object e$iv = topBarPlaceables.get(i$iv);
                                    Placeable it3 = (Placeable) e$iv;
                                    int v$iv = it3.getHeight();
                                    if (maxValue$iv < v$iv) {
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
                        Placeable placeable = (Placeable) maxElem$iv;
                        final int topBarHeight = placeable != null ? placeable.getHeight() : 0;
                        List $this$fastMap$iv2 = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.Snackbar, function22);
                        WindowInsets windowInsets = contentWindowInsets;
                        int $i$f$fastMap = 0;
                        List target$iv2 = new ArrayList($this$fastMap$iv2.size());
                        List $this$fastForEach$iv$iv = $this$fastMap$iv2;
                        int index$iv$iv2 = 0;
                        int size2 = $this$fastForEach$iv$iv.size();
                        while (index$iv$iv2 < size2) {
                            Object item$iv$iv2 = $this$fastForEach$iv$iv.get(index$iv$iv2);
                            Measurable it4 = (Measurable) item$iv$iv2;
                            List $this$fastMap$iv3 = $this$fastMap$iv2;
                            int $i$f$fastMap2 = $i$f$fastMap;
                            int leftInset = windowInsets.getLeft($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            List $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv;
                            int rightInset = windowInsets.getRight($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            int bottomInset = windowInsets.getBottom($this$SubcomposeLayout);
                            WindowInsets windowInsets2 = windowInsets;
                            int i2 = (-leftInset) - rightInset;
                            int leftInset2 = -bottomInset;
                            target$iv2.add(it4.mo5339measureBRTryo0(ConstraintsKt.m6457offsetNN6EwU(looseConstraints, i2, leftInset2)));
                            index$iv$iv2++;
                            $this$fastMap$iv2 = $this$fastMap$iv3;
                            $i$f$fastMap = $i$f$fastMap2;
                            $this$fastForEach$iv$iv = $this$fastForEach$iv$iv2;
                            windowInsets = windowInsets2;
                        }
                        final List snackbarPlaceables = target$iv2;
                        if (snackbarPlaceables.isEmpty()) {
                            maxElem$iv2 = null;
                        } else {
                            maxElem$iv2 = snackbarPlaceables.get(0);
                            Placeable it5 = (Placeable) maxElem$iv2;
                            int maxValue$iv2 = it5.getHeight();
                            int i$iv2 = 1;
                            int lastIndex2 = CollectionsKt.getLastIndex(snackbarPlaceables);
                            if (1 <= lastIndex2) {
                                while (true) {
                                    Object e$iv2 = snackbarPlaceables.get(i$iv2);
                                    Placeable it6 = (Placeable) e$iv2;
                                    int v$iv2 = it6.getHeight();
                                    if (maxValue$iv2 < v$iv2) {
                                        maxElem$iv2 = e$iv2;
                                        maxValue$iv2 = v$iv2;
                                    }
                                    if (i$iv2 == lastIndex2) {
                                        break;
                                    }
                                    i$iv2++;
                                }
                            }
                        }
                        Placeable placeable2 = (Placeable) maxElem$iv2;
                        int snackbarHeight = placeable2 != null ? placeable2.getHeight() : 0;
                        List $this$fastMap$iv4 = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.Fab, function23);
                        WindowInsets windowInsets3 = contentWindowInsets;
                        int $i$f$fastMap3 = 0;
                        List target$iv3 = new ArrayList($this$fastMap$iv4.size());
                        List $this$fastForEach$iv$iv3 = $this$fastMap$iv4;
                        int $i$f$fastForEach = 0;
                        int index$iv$iv3 = 0;
                        int size3 = $this$fastForEach$iv$iv3.size();
                        while (index$iv$iv3 < size3) {
                            Object item$iv$iv3 = $this$fastForEach$iv$iv3.get(index$iv$iv3);
                            int $i$f$fastMap4 = $i$f$fastMap3;
                            Measurable measurable = (Measurable) item$iv$iv3;
                            List $this$fastForEach$iv$iv4 = $this$fastForEach$iv$iv3;
                            int $i$f$fastForEach2 = $i$f$fastForEach;
                            int leftInset3 = windowInsets3.getLeft($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            int i3 = size3;
                            int rightInset2 = windowInsets3.getRight($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            int bottomInset2 = windowInsets3.getBottom($this$SubcomposeLayout);
                            WindowInsets windowInsets4 = windowInsets3;
                            int i4 = (-leftInset3) - rightInset2;
                            int leftInset4 = -bottomInset2;
                            target$iv3.add(measurable.mo5339measureBRTryo0(ConstraintsKt.m6457offsetNN6EwU(looseConstraints, i4, leftInset4)));
                            index$iv$iv3++;
                            $this$fastMap$iv4 = $this$fastMap$iv4;
                            $i$f$fastMap3 = $i$f$fastMap4;
                            $this$fastForEach$iv$iv3 = $this$fastForEach$iv$iv4;
                            $i$f$fastForEach = $i$f$fastForEach2;
                            size3 = i3;
                            windowInsets3 = windowInsets4;
                        }
                        final List fabPlaceables = target$iv3;
                        if (fabPlaceables.isEmpty()) {
                            fabPlacement = null;
                        } else {
                            if (fabPlaceables.isEmpty()) {
                                maxElem$iv4 = null;
                            } else {
                                maxElem$iv4 = fabPlaceables.get(0);
                                Placeable it7 = (Placeable) maxElem$iv4;
                                int maxValue$iv3 = it7.getWidth();
                                int i$iv3 = 1;
                                int lastIndex3 = CollectionsKt.getLastIndex(fabPlaceables);
                                if (1 <= lastIndex3) {
                                    while (true) {
                                        Object e$iv3 = fabPlaceables.get(i$iv3);
                                        Placeable it8 = (Placeable) e$iv3;
                                        int v$iv3 = it8.getWidth();
                                        if (maxValue$iv3 < v$iv3) {
                                            maxElem$iv4 = e$iv3;
                                            maxValue$iv3 = v$iv3;
                                        }
                                        if (i$iv3 == lastIndex3) {
                                            break;
                                        }
                                        i$iv3++;
                                    }
                                }
                            }
                            Placeable placeable3 = (Placeable) maxElem$iv4;
                            int fabWidth = placeable3 != null ? placeable3.getWidth() : 0;
                            if (fabPlaceables.isEmpty()) {
                                maxElem$iv5 = null;
                            } else {
                                maxElem$iv5 = fabPlaceables.get(0);
                                Placeable it9 = (Placeable) maxElem$iv5;
                                int maxValue$iv4 = it9.getHeight();
                                int i$iv4 = 1;
                                int lastIndex4 = CollectionsKt.getLastIndex(fabPlaceables);
                                if (1 <= lastIndex4) {
                                    while (true) {
                                        Object e$iv4 = fabPlaceables.get(i$iv4);
                                        Placeable it10 = (Placeable) e$iv4;
                                        int v$iv4 = it10.getHeight();
                                        if (maxValue$iv4 < v$iv4) {
                                            maxElem$iv5 = e$iv4;
                                            maxValue$iv4 = v$iv4;
                                        }
                                        if (i$iv4 == lastIndex4) {
                                            break;
                                        }
                                        i$iv4++;
                                    }
                                }
                            }
                            Placeable placeable4 = (Placeable) maxElem$iv5;
                            int fabHeight = placeable4 != null ? placeable4.getHeight() : 0;
                            if (fabWidth == 0 || fabHeight == 0) {
                                fabPlacement = null;
                            } else {
                                int i5 = fabPosition;
                                int fabLeftOffset = FabPosition.m1568equalsimpl0(i5, FabPosition.INSTANCE.m1574getStart5ygKITE()) ? $this$SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) : (layoutWidth - $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing)) - fabWidth : FabPosition.m1568equalsimpl0(i5, FabPosition.INSTANCE.m1573getEnd5ygKITE()) ? $this$SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? (layoutWidth - $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing)) - fabWidth : $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) : (layoutWidth - fabWidth) / 2;
                                fabPlacement = new FabPlacement(isFabDocked, fabLeftOffset, fabWidth, fabHeight);
                            }
                        }
                        final FabPlacement fabPlacement2 = fabPlacement;
                        ScaffoldLayoutContent scaffoldLayoutContent = ScaffoldLayoutContent.BottomBar;
                        final Function2<Composer, Integer, Unit> function25 = function24;
                        List $this$fastMap$iv5 = $this$SubcomposeLayout.subcompose(scaffoldLayoutContent, ComposableLambdaKt.composableLambdaInstance(-1617485343, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$bottomBarPlaceables$1
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

                            public final void invoke(Composer $composer5, int $changed2) {
                                ComposerKt.sourceInformation($composer5, "C535@23290L132:Scaffold.kt#jmzs0o");
                                if (($changed2 & 11) != 2 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1617485343, $changed2, -1, "androidx.compose.material.ScaffoldLayoutWithMeasureFix.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:535)");
                                    }
                                    CompositionLocalKt.CompositionLocalProvider(ScaffoldKt.getLocalFabPlacement().provides(fabPlacement2), function25, $composer5, ProvidedValue.$stable | 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }));
                        List target$iv4 = new ArrayList($this$fastMap$iv5.size());
                        int index$iv$iv4 = 0;
                        int size4 = $this$fastMap$iv5.size();
                        while (index$iv$iv4 < size4) {
                            Object item$iv$iv4 = $this$fastMap$iv5.get(index$iv$iv4);
                            List $this$fastMap$iv6 = $this$fastMap$iv5;
                            Measurable it11 = (Measurable) item$iv$iv4;
                            target$iv4.add(it11.mo5339measureBRTryo0(looseConstraints));
                            index$iv$iv4++;
                            $this$fastMap$iv5 = $this$fastMap$iv6;
                        }
                        final List bottomBarPlaceables = target$iv4;
                        if (bottomBarPlaceables.isEmpty()) {
                            i = 0;
                            maxElem$iv3 = null;
                        } else {
                            i = 0;
                            maxElem$iv3 = bottomBarPlaceables.get(0);
                            Placeable it12 = (Placeable) maxElem$iv3;
                            int maxValue$iv5 = it12.getHeight();
                            int i$iv5 = 1;
                            int lastIndex5 = CollectionsKt.getLastIndex(bottomBarPlaceables);
                            if (1 <= lastIndex5) {
                                while (true) {
                                    Object e$iv5 = bottomBarPlaceables.get(i$iv5);
                                    Placeable it13 = (Placeable) e$iv5;
                                    int v$iv5 = it13.getHeight();
                                    if (maxValue$iv5 < v$iv5) {
                                        maxElem$iv3 = e$iv5;
                                        maxValue$iv5 = v$iv5;
                                    }
                                    if (i$iv5 == lastIndex5) {
                                        break;
                                    }
                                    i$iv5++;
                                }
                            }
                        }
                        Placeable placeable5 = (Placeable) maxElem$iv3;
                        final Integer bottomBarHeight = placeable5 != null ? Integer.valueOf(placeable5.getHeight()) : null;
                        final Integer fabOffsetFromBottom = fabPlacement2 != null ? Integer.valueOf(bottomBarHeight == null ? fabPlacement2.getHeight() + $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) + contentWindowInsets.getBottom($this$SubcomposeLayout) : isFabDocked ? (fabPlacement2.getHeight() / 2) + bottomBarHeight.intValue() : $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) + bottomBarHeight.intValue() + fabPlacement2.getHeight()) : null;
                        final int snackbarOffsetFromBottom = snackbarHeight != 0 ? snackbarHeight + (fabOffsetFromBottom != null ? fabOffsetFromBottom.intValue() : bottomBarHeight != null ? bottomBarHeight.intValue() : contentWindowInsets.getBottom($this$SubcomposeLayout)) : i;
                        int bodyContentHeight = layoutHeight - topBarHeight;
                        ScaffoldLayoutContent scaffoldLayoutContent2 = ScaffoldLayoutContent.MainContent;
                        final WindowInsets windowInsets5 = contentWindowInsets;
                        final Function3<PaddingValues, Composer, Integer, Unit> function32 = function3;
                        List $this$fastMap$iv7 = $this$SubcomposeLayout.subcompose(scaffoldLayoutContent2, ComposableLambdaKt.composableLambdaInstance(-914494158, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$bodyContentPlaceables$1
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

                            public final void invoke(Composer $composer5, int $changed2) {
                                float fM6485constructorimpl;
                                float bottom;
                                ComposerKt.sourceInformation($composer5, "C586@25446L21:Scaffold.kt#jmzs0o");
                                if (($changed2 & 11) != 2 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-914494158, $changed2, -1, "androidx.compose.material.ScaffoldLayoutWithMeasureFix.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:569)");
                                    }
                                    PaddingValues insets = WindowInsetsKt.asPaddingValues(windowInsets5, $this$SubcomposeLayout);
                                    if (topBarPlaceables.isEmpty()) {
                                        fM6485constructorimpl = insets.getTop();
                                    } else {
                                        fM6485constructorimpl = Dp.m6485constructorimpl(0);
                                    }
                                    if (bottomBarPlaceables.isEmpty() || bottomBarHeight == null) {
                                        bottom = insets.getBottom();
                                    } else {
                                        bottom = $this$SubcomposeLayout.mo370toDpu2uoSUM(bottomBarHeight.intValue());
                                    }
                                    PaddingValues innerPadding = PaddingKt.m677PaddingValuesa9UjIt4(PaddingKt.calculateStartPadding(insets, $this$SubcomposeLayout.getLayoutDirection()), fM6485constructorimpl, PaddingKt.calculateEndPadding(insets, $this$SubcomposeLayout.getLayoutDirection()), bottom);
                                    function32.invoke(innerPadding, $composer5, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }));
                        List target$iv5 = new ArrayList($this$fastMap$iv7.size());
                        List $this$fastForEach$iv$iv5 = $this$fastMap$iv7;
                        int $i$f$fastForEach3 = 0;
                        int index$iv$iv5 = 0;
                        int size5 = $this$fastForEach$iv$iv5.size();
                        while (index$iv$iv5 < size5) {
                            Object item$iv$iv5 = $this$fastForEach$iv$iv5.get(index$iv$iv5);
                            List $this$fastMap$iv8 = $this$fastMap$iv7;
                            Measurable it14 = (Measurable) item$iv$iv5;
                            target$iv5.add(it14.mo5339measureBRTryo0(Constraints.m6428copyZbe2FdA(looseConstraints, (11 & 1) != 0 ? Constraints.m6440getMinWidthimpl(looseConstraints) : 0, (11 & 2) != 0 ? Constraints.m6438getMaxWidthimpl(looseConstraints) : 0, (11 & 4) != 0 ? Constraints.m6439getMinHeightimpl(looseConstraints) : 0, (11 & 8) != 0 ? Constraints.m6437getMaxHeightimpl(looseConstraints) : bodyContentHeight)));
                            index$iv$iv5++;
                            $this$fastMap$iv7 = $this$fastMap$iv8;
                            $this$fastForEach$iv$iv5 = $this$fastForEach$iv$iv5;
                            $i$f$fastForEach3 = $i$f$fastForEach3;
                        }
                        final List bodyContentPlaceables = target$iv5;
                        return MeasureScope.layout$default($this$SubcomposeLayout, layoutWidth, layoutHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
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
                                List $this$fastForEach$iv = bodyContentPlaceables;
                                int i6 = topBarHeight;
                                int size6 = $this$fastForEach$iv.size();
                                for (int index$iv = 0; index$iv < size6; index$iv++) {
                                    Object item$iv = $this$fastForEach$iv.get(index$iv);
                                    Placeable it15 = (Placeable) item$iv;
                                    Placeable.PlacementScope.place$default($this$layout, it15, 0, i6, 0.0f, 4, null);
                                }
                                List $this$fastForEach$iv2 = topBarPlaceables;
                                int size7 = $this$fastForEach$iv2.size();
                                for (int index$iv2 = 0; index$iv2 < size7; index$iv2++) {
                                    Object item$iv2 = $this$fastForEach$iv2.get(index$iv2);
                                    Placeable it16 = (Placeable) item$iv2;
                                    Placeable.PlacementScope.place$default($this$layout, it16, 0, 0, 0.0f, 4, null);
                                }
                                List $this$fastForEach$iv3 = snackbarPlaceables;
                                int i7 = layoutHeight;
                                int i8 = snackbarOffsetFromBottom;
                                int size8 = $this$fastForEach$iv3.size();
                                for (int index$iv3 = 0; index$iv3 < size8; index$iv3++) {
                                    Object item$iv3 = $this$fastForEach$iv3.get(index$iv3);
                                    Placeable it17 = (Placeable) item$iv3;
                                    Placeable.PlacementScope.place$default($this$layout, it17, 0, i7 - i8, 0.0f, 4, null);
                                }
                                List $this$fastForEach$iv4 = bottomBarPlaceables;
                                int i9 = layoutHeight;
                                Integer num = bottomBarHeight;
                                int index$iv4 = 0;
                                int size9 = $this$fastForEach$iv4.size();
                                while (true) {
                                    int iIntValue = 0;
                                    if (index$iv4 >= size9) {
                                        break;
                                    }
                                    Object item$iv4 = $this$fastForEach$iv4.get(index$iv4);
                                    Placeable it18 = (Placeable) item$iv4;
                                    if (num != null) {
                                        iIntValue = num.intValue();
                                    }
                                    Placeable.PlacementScope.place$default($this$layout, it18, 0, i9 - iIntValue, 0.0f, 4, null);
                                    index$iv4++;
                                }
                                List $this$fastForEach$iv5 = fabPlaceables;
                                FabPlacement fabPlacement3 = fabPlacement2;
                                int i10 = layoutHeight;
                                Integer num2 = fabOffsetFromBottom;
                                int size10 = $this$fastForEach$iv5.size();
                                for (int index$iv5 = 0; index$iv5 < size10; index$iv5++) {
                                    Object item$iv5 = $this$fastForEach$iv5.get(index$iv5);
                                    Placeable it19 = (Placeable) item$iv5;
                                    Placeable.PlacementScope.place$default($this$layout, it19, fabPlacement3 != null ? fabPlacement3.getLeft() : 0, i10 - (num2 != null ? num2.intValue() : 0), 0.0f, 4, null);
                                }
                            }
                        }, 4, null);
                    }
                };
                $composer4.updateRememberedValue(value$iv);
            } else {
                $composer2 = $composer4;
            }
            $composer2.endReplaceableGroup();
            $composer3 = $composer2;
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) value$iv, $composer3, 0, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayoutWithMeasureFix$2
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
                    ScaffoldKt.m1644ScaffoldLayoutWithMeasureFixi1QSOvI(isFabDocked, fabPosition, function2, function3, function22, function23, contentWindowInsets, function24, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LegacyScaffoldLayout-i1QSOvI, reason: not valid java name */
    public static final void m1640LegacyScaffoldLayouti1QSOvI(final boolean isFabDocked, final int fabPosition, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final WindowInsets contentWindowInsets, final Function2<? super Composer, ? super Integer, Unit> function24, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3;
        Composer $composer4 = $composer.startRestartGroup(141059468);
        ComposerKt.sourceInformation($composer4, "C(LegacyScaffoldLayout)P(5,4:c#material.FabPosition,7,1,6,3,2)628@26997L7169:Scaffold.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer4.changed(isFabDocked) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer4.changed(fabPosition) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer4.changedInstance(function2) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            $dirty |= $composer4.changedInstance(function3) ? 2048 : 1024;
        }
        if ((57344 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function22) ? 16384 : 8192;
        }
        if ((458752 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function23) ? 131072 : 65536;
        }
        if ((3670016 & $changed) == 0) {
            $dirty |= $composer4.changed(contentWindowInsets) ? 1048576 : 524288;
        }
        if ((29360128 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function24) ? 8388608 : 4194304;
        }
        int $dirty2 = $dirty;
        if ((23967451 & $dirty2) != 4793490 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(141059468, $dirty2, -1, "androidx.compose.material.LegacyScaffoldLayout (Scaffold.kt:627)");
            }
            $composer4.startReplaceableGroup(-757553268);
            boolean invalid$iv = $composer4.changedInstance(function2) | $composer4.changedInstance(function22) | $composer4.changed(contentWindowInsets) | $composer4.changedInstance(function23) | $composer4.changed(fabPosition) | $composer4.changed(isFabDocked) | $composer4.changedInstance(function24) | $composer4.changedInstance(function3);
            Object value$iv = $composer4.rememberedValue();
            if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                $composer2 = $composer4;
                value$iv = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material.ScaffoldKt$LegacyScaffoldLayout$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m1648invoke0kLqBqw(subcomposeMeasureScope, constraints.getValue());
                    }

                    /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m1648invoke0kLqBqw(final SubcomposeMeasureScope $this$SubcomposeLayout, long constraints) {
                        final int layoutWidth = Constraints.m6438getMaxWidthimpl(constraints);
                        final int layoutHeight = Constraints.m6437getMaxHeightimpl(constraints);
                        final long looseConstraints = Constraints.m6428copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m6440getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m6438getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m6439getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m6437getMaxHeightimpl(constraints) : 0);
                        final Function2<Composer, Integer, Unit> function25 = function2;
                        final Function2<Composer, Integer, Unit> function26 = function22;
                        final Function2<Composer, Integer, Unit> function27 = function23;
                        final int i = fabPosition;
                        final boolean z = isFabDocked;
                        final WindowInsets windowInsets = contentWindowInsets;
                        final Function2<Composer, Integer, Unit> function28 = function24;
                        final Function3<PaddingValues, Composer, Integer, Unit> function32 = function3;
                        return MeasureScope.layout$default($this$SubcomposeLayout, layoutWidth, layoutHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.ScaffoldKt$LegacyScaffoldLayout$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
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
                                Object maxElem$iv;
                                Object maxElem$iv2;
                                FabPlacement fabPlacement;
                                Object maxElem$iv3;
                                Integer numValueOf;
                                Object maxElem$iv4;
                                Object maxElem$iv5;
                                List $this$fastMap$iv = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.TopBar, function25);
                                long j = looseConstraints;
                                List target$iv = new ArrayList($this$fastMap$iv.size());
                                int size = $this$fastMap$iv.size();
                                for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                                    Object item$iv$iv = $this$fastMap$iv.get(index$iv$iv);
                                    Measurable it = (Measurable) item$iv$iv;
                                    target$iv.add(it.mo5339measureBRTryo0(j));
                                }
                                final List topBarPlaceables = target$iv;
                                if (topBarPlaceables.isEmpty()) {
                                    maxElem$iv = null;
                                } else {
                                    maxElem$iv = topBarPlaceables.get(0);
                                    Placeable it2 = (Placeable) maxElem$iv;
                                    int maxValue$iv = it2.getHeight();
                                    int i$iv = 1;
                                    int lastIndex = CollectionsKt.getLastIndex(topBarPlaceables);
                                    if (1 <= lastIndex) {
                                        while (true) {
                                            Object e$iv = topBarPlaceables.get(i$iv);
                                            Placeable it3 = (Placeable) e$iv;
                                            int v$iv = it3.getHeight();
                                            if (maxValue$iv < v$iv) {
                                                maxElem$iv = e$iv;
                                                maxValue$iv = v$iv;
                                            }
                                            if (i$iv == lastIndex) {
                                                break;
                                            } else {
                                                i$iv++;
                                            }
                                        }
                                    }
                                }
                                Placeable placeable = (Placeable) maxElem$iv;
                                int topBarHeight = placeable != null ? placeable.getHeight() : 0;
                                List $this$fastMap$iv2 = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.Snackbar, function26);
                                WindowInsets windowInsets2 = windowInsets;
                                SubcomposeMeasureScope subcomposeMeasureScope = $this$SubcomposeLayout;
                                long j2 = looseConstraints;
                                int $i$f$fastMap = 0;
                                List target$iv2 = new ArrayList($this$fastMap$iv2.size());
                                List $this$fastForEach$iv$iv = $this$fastMap$iv2;
                                int index$iv$iv2 = 0;
                                int size2 = $this$fastForEach$iv$iv.size();
                                while (index$iv$iv2 < size2) {
                                    Object item$iv$iv2 = $this$fastForEach$iv$iv.get(index$iv$iv2);
                                    Measurable it4 = (Measurable) item$iv$iv2;
                                    List $this$fastMap$iv3 = $this$fastMap$iv2;
                                    SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                                    int $i$f$fastMap2 = $i$f$fastMap;
                                    int leftInset = windowInsets2.getLeft(subcomposeMeasureScope2, subcomposeMeasureScope.getLayoutDirection());
                                    List $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv;
                                    int rightInset = windowInsets2.getRight(subcomposeMeasureScope2, subcomposeMeasureScope.getLayoutDirection());
                                    int bottomInset = windowInsets2.getBottom(subcomposeMeasureScope2);
                                    target$iv2.add(it4.mo5339measureBRTryo0(ConstraintsKt.m6457offsetNN6EwU(j2, (-leftInset) - rightInset, -bottomInset)));
                                    index$iv$iv2++;
                                    $this$fastMap$iv2 = $this$fastMap$iv3;
                                    $i$f$fastMap = $i$f$fastMap2;
                                    $this$fastForEach$iv$iv = $this$fastForEach$iv$iv2;
                                    windowInsets2 = windowInsets2;
                                    subcomposeMeasureScope = subcomposeMeasureScope;
                                }
                                List snackbarPlaceables = target$iv2;
                                if (snackbarPlaceables.isEmpty()) {
                                    maxElem$iv2 = null;
                                } else {
                                    maxElem$iv2 = snackbarPlaceables.get(0);
                                    Placeable it5 = (Placeable) maxElem$iv2;
                                    int maxValue$iv2 = it5.getHeight();
                                    int i$iv2 = 1;
                                    int lastIndex2 = CollectionsKt.getLastIndex(snackbarPlaceables);
                                    if (1 <= lastIndex2) {
                                        while (true) {
                                            Object e$iv2 = snackbarPlaceables.get(i$iv2);
                                            Placeable it6 = (Placeable) e$iv2;
                                            int v$iv2 = it6.getHeight();
                                            if (maxValue$iv2 < v$iv2) {
                                                maxElem$iv2 = e$iv2;
                                                maxValue$iv2 = v$iv2;
                                            }
                                            if (i$iv2 == lastIndex2) {
                                                break;
                                            } else {
                                                i$iv2++;
                                            }
                                        }
                                    }
                                }
                                Placeable placeable2 = (Placeable) maxElem$iv2;
                                int snackbarHeight = placeable2 != null ? placeable2.getHeight() : 0;
                                List $this$fastMap$iv4 = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.Fab, function27);
                                WindowInsets windowInsets3 = windowInsets;
                                SubcomposeMeasureScope subcomposeMeasureScope3 = $this$SubcomposeLayout;
                                long j3 = looseConstraints;
                                int $i$f$fastMap3 = 0;
                                List target$iv3 = new ArrayList($this$fastMap$iv4.size());
                                List $this$fastForEach$iv$iv3 = $this$fastMap$iv4;
                                int $i$f$fastForEach = 0;
                                int index$iv$iv3 = 0;
                                int size3 = $this$fastForEach$iv$iv3.size();
                                while (index$iv$iv3 < size3) {
                                    Object item$iv$iv3 = $this$fastForEach$iv$iv3.get(index$iv$iv3);
                                    int $i$f$fastMap4 = $i$f$fastMap3;
                                    Measurable measurable = (Measurable) item$iv$iv3;
                                    List $this$fastForEach$iv$iv4 = $this$fastForEach$iv$iv3;
                                    SubcomposeMeasureScope subcomposeMeasureScope4 = subcomposeMeasureScope3;
                                    int $i$f$fastForEach2 = $i$f$fastForEach;
                                    int leftInset2 = windowInsets3.getLeft(subcomposeMeasureScope4, subcomposeMeasureScope3.getLayoutDirection());
                                    int i2 = size3;
                                    int rightInset2 = windowInsets3.getRight(subcomposeMeasureScope4, subcomposeMeasureScope3.getLayoutDirection());
                                    int bottomInset2 = windowInsets3.getBottom(subcomposeMeasureScope4);
                                    target$iv3.add(measurable.mo5339measureBRTryo0(ConstraintsKt.m6457offsetNN6EwU(j3, (-leftInset2) - rightInset2, -bottomInset2)));
                                    index$iv$iv3++;
                                    $this$fastMap$iv4 = $this$fastMap$iv4;
                                    $i$f$fastMap3 = $i$f$fastMap4;
                                    $this$fastForEach$iv$iv3 = $this$fastForEach$iv$iv4;
                                    $i$f$fastForEach = $i$f$fastForEach2;
                                    size3 = i2;
                                    windowInsets3 = windowInsets3;
                                    subcomposeMeasureScope3 = subcomposeMeasureScope3;
                                }
                                List fabPlaceables = target$iv3;
                                if (fabPlaceables.isEmpty()) {
                                    fabPlacement = null;
                                } else {
                                    if (fabPlaceables.isEmpty()) {
                                        maxElem$iv4 = null;
                                    } else {
                                        maxElem$iv4 = fabPlaceables.get(0);
                                        Placeable it7 = (Placeable) maxElem$iv4;
                                        int maxValue$iv3 = it7.getWidth();
                                        int i$iv3 = 1;
                                        int lastIndex3 = CollectionsKt.getLastIndex(fabPlaceables);
                                        if (1 <= lastIndex3) {
                                            while (true) {
                                                Object e$iv3 = fabPlaceables.get(i$iv3);
                                                Placeable it8 = (Placeable) e$iv3;
                                                int v$iv3 = it8.getWidth();
                                                if (maxValue$iv3 < v$iv3) {
                                                    maxElem$iv4 = e$iv3;
                                                    maxValue$iv3 = v$iv3;
                                                }
                                                if (i$iv3 == lastIndex3) {
                                                    break;
                                                } else {
                                                    i$iv3++;
                                                }
                                            }
                                        }
                                    }
                                    Placeable placeable3 = (Placeable) maxElem$iv4;
                                    int fabWidth = placeable3 != null ? placeable3.getWidth() : 0;
                                    if (fabPlaceables.isEmpty()) {
                                        maxElem$iv5 = null;
                                    } else {
                                        maxElem$iv5 = fabPlaceables.get(0);
                                        Placeable it9 = (Placeable) maxElem$iv5;
                                        int maxValue$iv4 = it9.getHeight();
                                        int i$iv4 = 1;
                                        int lastIndex4 = CollectionsKt.getLastIndex(fabPlaceables);
                                        if (1 <= lastIndex4) {
                                            while (true) {
                                                Object e$iv4 = fabPlaceables.get(i$iv4);
                                                Placeable it10 = (Placeable) e$iv4;
                                                int v$iv4 = it10.getHeight();
                                                if (maxValue$iv4 < v$iv4) {
                                                    maxElem$iv5 = e$iv4;
                                                    maxValue$iv4 = v$iv4;
                                                }
                                                if (i$iv4 == lastIndex4) {
                                                    break;
                                                } else {
                                                    i$iv4++;
                                                }
                                            }
                                        }
                                    }
                                    Placeable placeable4 = (Placeable) maxElem$iv5;
                                    int fabHeight = placeable4 != null ? placeable4.getHeight() : 0;
                                    if (fabWidth == 0 || fabHeight == 0) {
                                        fabPlacement = null;
                                    } else {
                                        int i3 = i;
                                        int fabLeftOffset = FabPosition.m1568equalsimpl0(i3, FabPosition.INSTANCE.m1574getStart5ygKITE()) ? $this$SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) : (layoutWidth - $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing)) - fabWidth : FabPosition.m1568equalsimpl0(i3, FabPosition.INSTANCE.m1573getEnd5ygKITE()) ? $this$SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? (layoutWidth - $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing)) - fabWidth : $this$SubcomposeLayout.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) : (layoutWidth - fabWidth) / 2;
                                        fabPlacement = new FabPlacement(z, fabLeftOffset, fabWidth, fabHeight);
                                    }
                                }
                                final FabPlacement fabPlacement2 = fabPlacement;
                                SubcomposeMeasureScope subcomposeMeasureScope5 = $this$SubcomposeLayout;
                                ScaffoldLayoutContent scaffoldLayoutContent = ScaffoldLayoutContent.BottomBar;
                                final Function2<Composer, Integer, Unit> function29 = function28;
                                List $this$fastMap$iv5 = subcomposeMeasureScope5.subcompose(scaffoldLayoutContent, ComposableLambdaKt.composableLambdaInstance(-252607998, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$LegacyScaffoldLayout$1$1$1$bottomBarPlaceables$1
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

                                    public final void invoke(Composer $composer5, int $changed2) {
                                        ComposerKt.sourceInformation($composer5, "C714@30842L144:Scaffold.kt#jmzs0o");
                                        if (($changed2 & 11) != 2 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-252607998, $changed2, -1, "androidx.compose.material.LegacyScaffoldLayout.<anonymous>.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:714)");
                                            }
                                            CompositionLocalKt.CompositionLocalProvider(ScaffoldKt.getLocalFabPlacement().provides(fabPlacement2), function29, $composer5, ProvidedValue.$stable | 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }));
                                long j4 = looseConstraints;
                                int $i$f$fastMap5 = 0;
                                List target$iv4 = new ArrayList($this$fastMap$iv5.size());
                                int index$iv$iv4 = 0;
                                int size4 = $this$fastMap$iv5.size();
                                while (index$iv$iv4 < size4) {
                                    Object item$iv$iv4 = $this$fastMap$iv5.get(index$iv$iv4);
                                    int $i$f$fastMap6 = $i$f$fastMap5;
                                    Measurable it11 = (Measurable) item$iv$iv4;
                                    target$iv4.add(it11.mo5339measureBRTryo0(j4));
                                    index$iv$iv4++;
                                    $this$fastMap$iv5 = $this$fastMap$iv5;
                                    $i$f$fastMap5 = $i$f$fastMap6;
                                }
                                final List bottomBarPlaceables = target$iv4;
                                if (bottomBarPlaceables.isEmpty()) {
                                    maxElem$iv3 = null;
                                } else {
                                    maxElem$iv3 = bottomBarPlaceables.get(0);
                                    Placeable it12 = (Placeable) maxElem$iv3;
                                    int maxValue$iv5 = it12.getHeight();
                                    int i$iv5 = 1;
                                    int lastIndex5 = CollectionsKt.getLastIndex(bottomBarPlaceables);
                                    if (1 <= lastIndex5) {
                                        while (true) {
                                            Object e$iv5 = bottomBarPlaceables.get(i$iv5);
                                            Placeable it13 = (Placeable) e$iv5;
                                            int height = it13.getHeight();
                                            if (maxValue$iv5 < height) {
                                                maxElem$iv3 = e$iv5;
                                                maxValue$iv5 = height;
                                            }
                                            if (i$iv5 == lastIndex5) {
                                                break;
                                            } else {
                                                i$iv5++;
                                            }
                                        }
                                    }
                                }
                                Placeable placeable5 = (Placeable) maxElem$iv3;
                                final Integer bottomBarHeight = placeable5 != null ? Integer.valueOf(placeable5.getHeight()) : null;
                                if (fabPlacement2 != null) {
                                    SubcomposeMeasureScope subcomposeMeasureScope6 = $this$SubcomposeLayout;
                                    numValueOf = Integer.valueOf(bottomBarHeight == null ? fabPlacement2.getHeight() + subcomposeMeasureScope6.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing) + windowInsets.getBottom(subcomposeMeasureScope6) : z ? bottomBarHeight.intValue() + (fabPlacement2.getHeight() / 2) : bottomBarHeight.intValue() + fabPlacement2.getHeight() + subcomposeMeasureScope6.mo367roundToPx0680j_4(ScaffoldKt.FabSpacing));
                                } else {
                                    numValueOf = null;
                                }
                                Integer fabOffsetFromBottom = numValueOf;
                                int snackbarOffsetFromBottom = snackbarHeight != 0 ? (fabOffsetFromBottom != null ? fabOffsetFromBottom.intValue() : bottomBarHeight != null ? bottomBarHeight.intValue() : windowInsets.getBottom($this$SubcomposeLayout)) + snackbarHeight : 0;
                                int bodyContentHeight = layoutHeight - topBarHeight;
                                SubcomposeMeasureScope subcomposeMeasureScope7 = $this$SubcomposeLayout;
                                ScaffoldLayoutContent scaffoldLayoutContent2 = ScaffoldLayoutContent.MainContent;
                                final WindowInsets windowInsets4 = windowInsets;
                                final SubcomposeMeasureScope subcomposeMeasureScope8 = $this$SubcomposeLayout;
                                final Function3<PaddingValues, Composer, Integer, Unit> function33 = function32;
                                List $this$fastMap$iv6 = subcomposeMeasureScope7.subcompose(scaffoldLayoutContent2, ComposableLambdaKt.composableLambdaInstance(230985361, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$LegacyScaffoldLayout$1$1$1$bodyContentPlaceables$1
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

                                    public final void invoke(Composer $composer5, int $changed2) {
                                        float fM6485constructorimpl;
                                        float bottom;
                                        ComposerKt.sourceInformation($composer5, "C765@33186L21:Scaffold.kt#jmzs0o");
                                        if (($changed2 & 11) != 2 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(230985361, $changed2, -1, "androidx.compose.material.LegacyScaffoldLayout.<anonymous>.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:748)");
                                            }
                                            PaddingValues insets = WindowInsetsKt.asPaddingValues(windowInsets4, subcomposeMeasureScope8);
                                            if (topBarPlaceables.isEmpty()) {
                                                fM6485constructorimpl = insets.getTop();
                                            } else {
                                                fM6485constructorimpl = Dp.m6485constructorimpl(0);
                                            }
                                            if (bottomBarPlaceables.isEmpty() || bottomBarHeight == null) {
                                                bottom = insets.getBottom();
                                            } else {
                                                bottom = subcomposeMeasureScope8.mo370toDpu2uoSUM(bottomBarHeight.intValue());
                                            }
                                            PaddingValues innerPadding = PaddingKt.m677PaddingValuesa9UjIt4(PaddingKt.calculateStartPadding(insets, subcomposeMeasureScope8.getLayoutDirection()), fM6485constructorimpl, PaddingKt.calculateEndPadding(insets, subcomposeMeasureScope8.getLayoutDirection()), bottom);
                                            function33.invoke(innerPadding, $composer5, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }));
                                long j5 = looseConstraints;
                                int $i$f$fastMap7 = 0;
                                List target$iv5 = new ArrayList($this$fastMap$iv6.size());
                                int index$iv$iv5 = 0;
                                int size5 = $this$fastMap$iv6.size();
                                while (index$iv$iv5 < size5) {
                                    Object item$iv$iv5 = $this$fastMap$iv6.get(index$iv$iv5);
                                    int $i$f$fastMap8 = $i$f$fastMap7;
                                    Measurable it14 = (Measurable) item$iv$iv5;
                                    long j6 = j5;
                                    target$iv5.add(it14.mo5339measureBRTryo0(Constraints.m6428copyZbe2FdA(j6, (11 & 1) != 0 ? Constraints.m6440getMinWidthimpl(j6) : 0, (11 & 2) != 0 ? Constraints.m6438getMaxWidthimpl(j6) : 0, (11 & 4) != 0 ? Constraints.m6439getMinHeightimpl(j6) : 0, (11 & 8) != 0 ? Constraints.m6437getMaxHeightimpl(j6) : bodyContentHeight)));
                                    index$iv$iv5++;
                                    $this$fastMap$iv6 = $this$fastMap$iv6;
                                    $i$f$fastMap7 = $i$f$fastMap8;
                                    j5 = j5;
                                }
                                List bodyContentPlaceables = target$iv5;
                                int index$iv = 0;
                                for (int size6 = bodyContentPlaceables.size(); index$iv < size6; size6 = size6) {
                                    Object item$iv = bodyContentPlaceables.get(index$iv);
                                    Placeable it15 = (Placeable) item$iv;
                                    Placeable.PlacementScope.place$default($this$layout, it15, 0, topBarHeight, 0.0f, 4, null);
                                    index$iv++;
                                }
                                int size7 = topBarPlaceables.size();
                                for (int index$iv2 = 0; index$iv2 < size7; index$iv2++) {
                                    Object item$iv2 = topBarPlaceables.get(index$iv2);
                                    Placeable it16 = (Placeable) item$iv2;
                                    Placeable.PlacementScope.place$default($this$layout, it16, 0, 0, 0.0f, 4, null);
                                }
                                int i4 = layoutHeight;
                                int size8 = snackbarPlaceables.size();
                                for (int index$iv3 = 0; index$iv3 < size8; index$iv3++) {
                                    Object item$iv3 = snackbarPlaceables.get(index$iv3);
                                    Placeable it17 = (Placeable) item$iv3;
                                    Placeable.PlacementScope.place$default($this$layout, it17, 0, i4 - snackbarOffsetFromBottom, 0.0f, 4, null);
                                }
                                int i5 = layoutHeight;
                                int size9 = bottomBarPlaceables.size();
                                for (int index$iv4 = 0; index$iv4 < size9; index$iv4++) {
                                    Object item$iv4 = bottomBarPlaceables.get(index$iv4);
                                    Placeable it18 = (Placeable) item$iv4;
                                    Placeable.PlacementScope.place$default($this$layout, it18, 0, i5 - (bottomBarHeight != null ? bottomBarHeight.intValue() : 0), 0.0f, 4, null);
                                }
                                int i6 = layoutHeight;
                                int size10 = fabPlaceables.size();
                                for (int index$iv5 = 0; index$iv5 < size10; index$iv5++) {
                                    Object item$iv5 = fabPlaceables.get(index$iv5);
                                    Placeable it19 = (Placeable) item$iv5;
                                    Placeable.PlacementScope.place$default($this$layout, it19, fabPlacement2 != null ? fabPlacement2.getLeft() : 0, i6 - (fabOffsetFromBottom != null ? fabOffsetFromBottom.intValue() : 0), 0.0f, 4, null);
                                }
                            }
                        }, 4, null);
                    }
                };
                $composer4.updateRememberedValue(value$iv);
            } else {
                $composer2 = $composer4;
            }
            $composer2.endReplaceableGroup();
            $composer3 = $composer2;
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) value$iv, $composer3, 0, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$LegacyScaffoldLayout$2
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
                    ScaffoldKt.m1640LegacyScaffoldLayouti1QSOvI(isFabDocked, fabPosition, function2, function3, function22, function23, contentWindowInsets, function24, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final ProvidableCompositionLocal<FabPlacement> getLocalFabPlacement() {
        return LocalFabPlacement;
    }
}
