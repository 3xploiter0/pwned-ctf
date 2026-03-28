package com.ctfzonelabs.todo.ui.screens;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AddKt;
import androidx.compose.material.icons.filled.ClearKt;
import androidx.compose.material.icons.filled.DeleteKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TodoScreen.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ComposableSingletons$TodoScreenKt {
    public static final ComposableSingletons$TodoScreenKt INSTANCE = new ComposableSingletons$TodoScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f80lambda1 = ComposableLambdaKt.composableLambdaInstance(240288344, false, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C90@4154L197:TodoScreen.kt#73otoh");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(240288344, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-1.<anonymous> (TodoScreen.kt:90)");
                }
                IconKt.m2147Iconww6aTOc(AddKt.getAdd(Icons.INSTANCE.getDefault()), "Add Task", SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(28)), 0L, $composer, 432, 8);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f82lambda2 = ComposableLambdaKt.composableLambdaInstance(-1308501792, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C186@7301L13:TodoScreen.kt#73otoh");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1308501792, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-2.<anonymous> (TodoScreen.kt:186)");
            }
            TextKt.m2673Text4IGK_g("Close", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f83lambda3 = ComposableLambdaKt.composableLambdaInstance(1788466252, false, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-3$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C174@6943L11,171@6815L161:TodoScreen.kt#73otoh");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1788466252, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-3.<anonymous> (TodoScreen.kt:171)");
                }
                TextKt.m2673Text4IGK_g("Secret Flag", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable | 0).m1923getPrimary0d7_KjU(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 196614, 0, 131034);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-4, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f84lambda4 = ComposableLambdaKt.composableLambdaInstance(1175846951, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-4$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope TextButton, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
            ComposerKt.sourceInformation($composer, "C234@8452L201,239@8674L39,240@8734L17:TodoScreen.kt#73otoh");
            if (($changed & 81) != 16 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1175846951, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-4.<anonymous> (TodoScreen.kt:234)");
                }
                IconKt.m2147Iconww6aTOc(ClearKt.getClear(Icons.INSTANCE.getDefault()), "Delete All", SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(18)), 0L, $composer, 432, 8);
                SpacerKt.Spacer(SizeKt.m731width3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(4)), $composer, 6);
                TextKt.m2673Text4IGK_g("Clear All", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-5, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f85lambda5 = ComposableLambdaKt.composableLambdaInstance(1861217271, false, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-5$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C346@12530L11,343@12376L242:TodoScreen.kt#73otoh");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1861217271, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-5.<anonymous> (TodoScreen.kt:343)");
                }
                IconKt.m2147Iconww6aTOc(DeleteKt.getDelete(Icons.INSTANCE.getDefault()), "Delete", SizeKt.m726size3ABfNKs(Modifier.INSTANCE, Dp.m6485constructorimpl(20)), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable | 0).m1905getError0d7_KjU(), $composer, 432, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-6, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f86lambda6 = ComposableLambdaKt.composableLambdaInstance(1828276523, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-6$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C482@17206L16:TodoScreen.kt#73otoh");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1828276523, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-6.<anonymous> (TodoScreen.kt:482)");
            }
            TextKt.m2673Text4IGK_g("Add Task", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-7, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f87lambda7 = ComposableLambdaKt.composableLambdaInstance(-1807198916, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-7$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope TextButton, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
            ComposerKt.sourceInformation($composer, "C487@17336L14:TodoScreen.kt#73otoh");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1807198916, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-7.<anonymous> (TodoScreen.kt:487)");
            }
            TextKt.m2673Text4IGK_g("Cancel", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-8, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f88lambda8 = ComposableLambdaKt.composableLambdaInstance(630277271, false, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-8$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C442@15734L103:TodoScreen.kt#73otoh");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(630277271, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-8.<anonymous> (TodoScreen.kt:442)");
                }
                TextKt.m2673Text4IGK_g("Add New Task", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 196614, 0, 131038);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-9, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f89lambda9 = ComposableLambdaKt.composableLambdaInstance(-232647066, false, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-9$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C454@16120L18:TodoScreen.kt#73otoh");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-232647066, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-9.<anonymous> (TodoScreen.kt:454)");
            }
            TextKt.m2673Text4IGK_g("Task Title", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-10, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f81lambda10 = ComposableLambdaKt.composableLambdaInstance(-895973873, false, new Function2<Composer, Integer, Unit>() { // from class: com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt$lambda-10$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C464@16583L30:TodoScreen.kt#73otoh");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-895973873, $changed, -1, "com.ctfzonelabs.todo.ui.screens.ComposableSingletons$TodoScreenKt.lambda-10.<anonymous> (TodoScreen.kt:464)");
            }
            TextKt.m2673Text4IGK_g("Description (Optional)", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6942getLambda1$app_debug() {
        return f80lambda1;
    }

    /* renamed from: getLambda-10$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6943getLambda10$app_debug() {
        return f81lambda10;
    }

    /* renamed from: getLambda-2$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6944getLambda2$app_debug() {
        return f82lambda2;
    }

    /* renamed from: getLambda-3$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6945getLambda3$app_debug() {
        return f83lambda3;
    }

    /* renamed from: getLambda-4$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6946getLambda4$app_debug() {
        return f84lambda4;
    }

    /* renamed from: getLambda-5$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6947getLambda5$app_debug() {
        return f85lambda5;
    }

    /* renamed from: getLambda-6$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6948getLambda6$app_debug() {
        return f86lambda6;
    }

    /* renamed from: getLambda-7$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6949getLambda7$app_debug() {
        return f87lambda7;
    }

    /* renamed from: getLambda-8$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6950getLambda8$app_debug() {
        return f88lambda8;
    }

    /* renamed from: getLambda-9$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6951getLambda9$app_debug() {
        return f89lambda9;
    }
}
