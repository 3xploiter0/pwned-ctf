package androidx.navigation.compose;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.SizeTransform;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavGraphNavigator;
import androidx.navigation.compose.ComposeNavigator;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: NavHost.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001aó\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2$\b\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112(\b\u0002\u0010\u0016\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010\u0018\u001aµ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\u001f\b\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u00112\u001f\b\u0002\u0010\u0012\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u00112\u001f\b\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u00112\u001f\b\u0002\u0010\u0015\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010\u0019\u001a»\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001d2\u001d\b\u0002\u0010\u001e\u001a\u0017\u0012\u0004\u0012\u00020 \u0012\r\u0012\u000b\u0012\u0002\b\u00030!¢\u0006\u0002\b\u00100\u001f2$\b\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112(\b\u0002\u0010\u0016\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010$\u001a\u0098\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2$\b\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112(\b\u0002\u0010\u0016\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010&\u001aÚ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2\u001f\b\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u00112\u001f\b\u0002\u0010\u0012\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u00112\u001f\b\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u00112\u001f\b\u0002\u0010\u0015\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010'\u001aL\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010(\u001a¿\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001d2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001d2\u001d\b\u0002\u0010\u001e\u001a\u0017\u0012\u0004\u0012\u00020 \u0012\r\u0012\u000b\u0012\u0002\b\u00030!¢\u0006\u0002\b\u00100\u001f2$\b\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112$\b\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112(\b\u0002\u0010\u0016\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\f¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u0004\u0018\u00010\u000f*\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010-\u001a\u0004\u0018\u00010\u0013*\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010.\u001a\u0004\u0018\u00010\u000f*\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010/\u001a\u0004\u0018\u00010\u0013*\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u00100\u001a\u0004\u0018\u00010\u0017*\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002¨\u00061²\u0006\u0010\u00102\u001a\b\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002²\u0006\n\u00104\u001a\u000205X\u008a\u008e\u0002²\u0006\n\u00106\u001a\u000207X\u008a\u008e\u0002²\u0006\u0010\u00108\u001a\b\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002²\u0006\u0010\u00109\u001a\b\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002"}, d2 = {"NavHost", "", "navController", "Landroidx/navigation/NavHostController;", "graph", "Landroidx/navigation/NavGraph;", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "contentAlignment", "Landroidx/compose/ui/Alignment;", "enterTransition", "Lkotlin/Function1;", "Landroidx/compose/animation/AnimatedContentTransitionScope;", "Landroidx/navigation/NavBackStackEntry;", "Landroidx/compose/animation/EnterTransition;", "Lkotlin/jvm/JvmSuppressWildcards;", "Lkotlin/ExtensionFunctionType;", "exitTransition", "Landroidx/compose/animation/ExitTransition;", "popEnterTransition", "popExitTransition", "sizeTransform", "Landroidx/compose/animation/SizeTransform;", "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "startDestination", "", "route", "Lkotlin/reflect/KClass;", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "builder", "Landroidx/navigation/NavGraphBuilder;", "(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "", "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "createEnterTransition", "Landroidx/navigation/NavDestination;", "scope", "createExitTransition", "createPopEnterTransition", "createPopExitTransition", "createSizeTransform", "navigation-compose_release", "currentBackStack", "", NotificationCompat.CATEGORY_PROGRESS, "", "inPredictiveBack", "", "allVisibleEntries", "visibleEntries"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class NavHostKt {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of NavHost that supports AnimatedContent")
    public static final /* synthetic */ void NavHost(final NavHostController navController, final String startDestination, Modifier modifier, String route, final Function1 builder, Composer $composer, final int $changed, final int i) throws Throwable {
        Modifier modifier2;
        String str;
        Modifier modifier3;
        Object value$iv;
        String route2;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(141827520);
        ComposerKt.sourceInformation($composer3, "C(NavHost)P(2,4,1,3)93@3780L126,91@3740L190:NavHost.kt#opm8kd");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(startDestination) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= 384;
            modifier2 = modifier;
        } else if (($changed & 384) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty |= 3072;
            str = route;
        } else if (($changed & 3072) == 0) {
            str = route;
            $dirty |= $composer3.changed(str) ? 2048 : 1024;
        } else {
            str = route;
        }
        if ((i & 16) != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer3.changedInstance(builder) ? 16384 : 8192;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 9363) == 9362 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier3 = modifier2;
            route2 = str;
            $composer2 = $composer3;
        } else {
            modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            String route3 = i3 != 0 ? null : str;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(141827520, $dirty2, -1, "androidx.navigation.compose.NavHost (NavHost.kt:90)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 652764344, "CC(remember):NavHost.kt#9igjgp");
            boolean invalid$iv = (($dirty2 & 7168) == 2048) | (($dirty2 & 112) == 32) | ((57344 & $dirty2) == 16384);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                NavHostController $this$createGraph$iv = navController;
                NavigatorProvider $this$navigation$iv$iv = $this$createGraph$iv.get_navigatorProvider();
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder($this$navigation$iv$iv, startDestination, route3);
                builder.invoke(navGraphBuilder);
                value$iv = navGraphBuilder.build();
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            route2 = route3;
            $composer2 = $composer3;
            NavHost(navController, (NavGraph) value$iv, modifier3, null, null, null, null, null, null, $composer3, ($dirty2 & 14) | ($dirty2 & 896), 504);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final String str2 = route2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i4) throws Throwable {
                    NavHostKt.NavHost(navController, startDestination, modifier4, str2, builder, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of NavHost that supports sizeTransform")
    public static final /* synthetic */ void NavHost(final NavHostController navController, final String startDestination, Modifier modifier, Alignment contentAlignment, String route, Function1 enterTransition, Function1 exitTransition, Function1 popEnterTransition, Function1 popExitTransition, final Function1 builder, Composer $composer, final int $changed, final int i) throws Throwable {
        Modifier modifier2;
        Alignment contentAlignment2;
        String route2;
        Function1 exitTransition2;
        Function1 popEnterTransition2;
        Function1 popExitTransition2;
        Function1 enterTransition2;
        Function1 popEnterTransition3;
        Modifier modifier3;
        Alignment contentAlignment3;
        Function1 exitTransition3;
        int $dirty;
        Object value$iv;
        String route3;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(410432995);
        ComposerKt.sourceInformation($composer3, "C(NavHost)P(5,9,4,1,8,2,3,6,7)145@6005L126,143@5965L320:NavHost.kt#opm8kd");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(startDestination) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty2 |= 384;
            modifier2 = modifier;
        } else if (($changed & 384) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty2 |= 3072;
            contentAlignment2 = contentAlignment;
        } else if (($changed & 3072) == 0) {
            contentAlignment2 = contentAlignment;
            $dirty2 |= $composer3.changed(contentAlignment2) ? 2048 : 1024;
        } else {
            contentAlignment2 = contentAlignment;
        }
        int i4 = i & 16;
        if (i4 != 0) {
            $dirty2 |= 24576;
            route2 = route;
        } else if (($changed & 24576) == 0) {
            route2 = route;
            $dirty2 |= $composer3.changed(route2) ? 16384 : 8192;
        } else {
            route2 = route;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changedInstance(enterTransition) ? 131072 : 65536;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty2 |= 1572864;
            exitTransition2 = exitTransition;
        } else if (($changed & 1572864) == 0) {
            exitTransition2 = exitTransition;
            $dirty2 |= $composer3.changedInstance(exitTransition2) ? 1048576 : 524288;
        } else {
            exitTransition2 = exitTransition;
        }
        if (($changed & 12582912) == 0) {
            $dirty2 |= ((i & 128) == 0 && $composer3.changedInstance(popEnterTransition)) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= ((i & 256) == 0 && $composer3.changedInstance(popExitTransition)) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i & 512) != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty2 |= $composer3.changedInstance(builder) ? 536870912 : 268435456;
        }
        if ((306783379 & $dirty2) == 306783378 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            enterTransition2 = enterTransition;
            popEnterTransition3 = popEnterTransition;
            popExitTransition2 = popExitTransition;
            modifier3 = modifier2;
            contentAlignment3 = contentAlignment2;
            exitTransition3 = exitTransition2;
            route3 = route2;
            $composer2 = $composer3;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i3 != 0) {
                    contentAlignment2 = Alignment.INSTANCE.getTopStart();
                }
                if (i4 != 0) {
                    route2 = null;
                }
                AnonymousClass3 enterTransition3 = i5 != 0 ? new Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.3
                    @Override // kotlin.jvm.functions.Function1
                    public final EnterTransition invoke(AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
                        return EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(700, 0, null, 6, null), 0.0f, 2, null);
                    }
                } : enterTransition;
                if (i6 != 0) {
                    exitTransition2 = new Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.4
                        @Override // kotlin.jvm.functions.Function1
                        public final ExitTransition invoke(AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
                            return EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(700, 0, null, 6, null), 0.0f, 2, null);
                        }
                    };
                }
                if ((i & 128) != 0) {
                    popEnterTransition2 = enterTransition3;
                    $dirty2 &= -29360129;
                } else {
                    popEnterTransition2 = popEnterTransition;
                }
                if ((i & 256) != 0) {
                    enterTransition2 = enterTransition3;
                    popEnterTransition3 = popEnterTransition2;
                    modifier3 = modifier2;
                    popExitTransition2 = exitTransition2;
                    contentAlignment3 = contentAlignment2;
                    exitTransition3 = exitTransition2;
                    $dirty = $dirty2 & (-234881025);
                } else {
                    popExitTransition2 = popExitTransition;
                    enterTransition2 = enterTransition3;
                    popEnterTransition3 = popEnterTransition2;
                    modifier3 = modifier2;
                    contentAlignment3 = contentAlignment2;
                    exitTransition3 = exitTransition2;
                    $dirty = $dirty2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 128) != 0) {
                    $dirty2 &= -29360129;
                }
                if ((i & 256) != 0) {
                    enterTransition2 = enterTransition;
                    popEnterTransition3 = popEnterTransition;
                    popExitTransition2 = popExitTransition;
                    modifier3 = modifier2;
                    contentAlignment3 = contentAlignment2;
                    exitTransition3 = exitTransition2;
                    $dirty = $dirty2 & (-234881025);
                } else {
                    enterTransition2 = enterTransition;
                    popEnterTransition3 = popEnterTransition;
                    popExitTransition2 = popExitTransition;
                    modifier3 = modifier2;
                    contentAlignment3 = contentAlignment2;
                    exitTransition3 = exitTransition2;
                    $dirty = $dirty2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(410432995, $dirty, -1, "androidx.navigation.compose.NavHost (NavHost.kt:142)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 652835544, "CC(remember):NavHost.kt#9igjgp");
            boolean invalid$iv = ((57344 & $dirty) == 16384) | (($dirty & 112) == 32) | ((1879048192 & $dirty) == 536870912);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                NavHostController $this$createGraph$iv = navController;
                NavigatorProvider $this$navigation$iv$iv = $this$createGraph$iv.get_navigatorProvider();
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder($this$navigation$iv$iv, startDestination, route2);
                builder.invoke(navGraphBuilder);
                value$iv = navGraphBuilder.build();
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            route3 = route2;
            $composer2 = $composer3;
            NavHost(navController, (NavGraph) value$iv, modifier3, contentAlignment3, enterTransition2, exitTransition3, popEnterTransition3, popExitTransition2, null, $composer3, ($dirty & 14) | ($dirty & 896) | ($dirty & 7168) | (($dirty >> 3) & 57344) | (($dirty >> 3) & 458752) | (($dirty >> 3) & 3670016) | (29360128 & ($dirty >> 3)), 256);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final Alignment alignment = contentAlignment3;
            final String str = route3;
            final Function1 function1 = enterTransition2;
            final Function1 function12 = exitTransition3;
            final Function1 function13 = popEnterTransition3;
            final Function1 function14 = popExitTransition2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) throws Throwable {
                    NavHostKt.NavHost(navController, startDestination, modifier4, alignment, str, function1, function12, function13, function14, builder, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void NavHost(final NavHostController navController, final String startDestination, Modifier modifier, Alignment contentAlignment, String route, Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition> function1, Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition> function12, Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition> function13, Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition> function14, Function1<AnimatedContentTransitionScope<NavBackStackEntry>, SizeTransform> function15, final Function1<? super NavGraphBuilder, Unit> function16, Composer $composer, final int $changed, final int $changed1, final int i) throws Throwable {
        Modifier modifier2;
        Alignment alignment;
        String route2;
        Function1 popEnterTransition;
        Function1 popExitTransition;
        Function1 sizeTransform;
        Modifier modifier3;
        Alignment contentAlignment2;
        Function1 popExitTransition2;
        Function1 enterTransition;
        Function1 exitTransition;
        Function1 popEnterTransition2;
        int $dirty;
        String route3;
        Object value$iv;
        String route4;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(1840250294);
        ComposerKt.sourceInformation($composer3, "C(NavHost)P(5,10,4,1,8,2,3,6,7,9)213@8656L126,211@8616L343:NavHost.kt#opm8kd");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(startDestination) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty2 |= 384;
            modifier2 = modifier;
        } else if (($changed & 384) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty2 |= 3072;
            alignment = contentAlignment;
        } else if (($changed & 3072) == 0) {
            alignment = contentAlignment;
            $dirty2 |= $composer3.changed(alignment) ? 2048 : 1024;
        } else {
            alignment = contentAlignment;
        }
        int i4 = i & 16;
        if (i4 != 0) {
            $dirty2 |= 24576;
            route2 = route;
        } else if (($changed & 24576) == 0) {
            route2 = route;
            $dirty2 |= $composer3.changed(route2) ? 16384 : 8192;
        } else {
            route2 = route;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changedInstance(function1) ? 131072 : 65536;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changedInstance(function12) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty2 |= ((i & 128) == 0 && $composer3.changedInstance(function13)) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= ((i & 256) == 0 && $composer3.changedInstance(function14)) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i7 = i & 512;
        if (i7 != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty2 |= $composer3.changedInstance(function15) ? 536870912 : 268435456;
        }
        if ((i & 1024) != 0) {
            $dirty1 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty1 |= $composer3.changedInstance(function16) ? 4 : 2;
        }
        int $dirty12 = $dirty1;
        if ((306783379 & $dirty2) == 306783378 && ($dirty12 & 3) == 2 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            enterTransition = function1;
            exitTransition = function12;
            popEnterTransition2 = function13;
            popExitTransition2 = function14;
            sizeTransform = function15;
            route4 = route2;
            modifier3 = modifier2;
            contentAlignment2 = alignment;
            $composer2 = $composer3;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                Alignment contentAlignment3 = i3 != 0 ? Alignment.INSTANCE.getTopStart() : alignment;
                if (i4 != 0) {
                    route2 = null;
                }
                Function1 enterTransition2 = i5 != 0 ? new Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.7
                    @Override // kotlin.jvm.functions.Function1
                    public final EnterTransition invoke(AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
                        return EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(700, 0, null, 6, null), 0.0f, 2, null);
                    }
                } : function1;
                Function1 exitTransition2 = i6 != 0 ? new Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.8
                    @Override // kotlin.jvm.functions.Function1
                    public final ExitTransition invoke(AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
                        return EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(700, 0, null, 6, null), 0.0f, 2, null);
                    }
                } : function12;
                if ((i & 128) != 0) {
                    popEnterTransition = enterTransition2;
                    $dirty2 &= -29360129;
                } else {
                    popEnterTransition = function13;
                }
                if ((i & 256) != 0) {
                    popExitTransition = exitTransition2;
                    $dirty2 &= -234881025;
                } else {
                    popExitTransition = function14;
                }
                if (i7 != 0) {
                    sizeTransform = null;
                    modifier3 = modifier4;
                    contentAlignment2 = contentAlignment3;
                    popExitTransition2 = popExitTransition;
                    enterTransition = enterTransition2;
                    exitTransition = exitTransition2;
                    popEnterTransition2 = popEnterTransition;
                    $dirty = $dirty2;
                    route3 = route2;
                } else {
                    sizeTransform = function15;
                    modifier3 = modifier4;
                    contentAlignment2 = contentAlignment3;
                    popExitTransition2 = popExitTransition;
                    enterTransition = enterTransition2;
                    exitTransition = exitTransition2;
                    popEnterTransition2 = popEnterTransition;
                    $dirty = $dirty2;
                    route3 = route2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 128) != 0) {
                    $dirty2 &= -29360129;
                }
                if ((i & 256) != 0) {
                    enterTransition = function1;
                    exitTransition = function12;
                    popEnterTransition2 = function13;
                    popExitTransition2 = function14;
                    sizeTransform = function15;
                    $dirty = $dirty2 & (-234881025);
                    modifier3 = modifier2;
                    contentAlignment2 = alignment;
                    route3 = route2;
                } else {
                    enterTransition = function1;
                    exitTransition = function12;
                    popEnterTransition2 = function13;
                    popExitTransition2 = function14;
                    sizeTransform = function15;
                    $dirty = $dirty2;
                    modifier3 = modifier2;
                    contentAlignment2 = alignment;
                    route3 = route2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1840250294, $dirty, $dirty12, "androidx.navigation.compose.NavHost (NavHost.kt:210)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 652920376, "CC(remember):NavHost.kt#9igjgp");
            boolean invalid$iv = ((57344 & $dirty) == 16384) | (($dirty & 112) == 32) | (($dirty12 & 14) == 4);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                NavHostController $this$createGraph$iv = navController;
                NavigatorProvider $this$navigation$iv$iv = $this$createGraph$iv.get_navigatorProvider();
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder($this$navigation$iv$iv, startDestination, route3);
                function16.invoke(navGraphBuilder);
                value$iv = navGraphBuilder.build();
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            route4 = route3;
            $composer2 = $composer3;
            NavHost(navController, (NavGraph) value$iv, modifier3, contentAlignment2, enterTransition, exitTransition, popEnterTransition2, popExitTransition2, sizeTransform, $composer3, ($dirty & 14) | ($dirty & 896) | ($dirty & 7168) | (($dirty >> 3) & 57344) | (($dirty >> 3) & 458752) | (($dirty >> 3) & 3670016) | (($dirty >> 3) & 29360128) | (234881024 & ($dirty >> 3)), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier3;
            final Alignment alignment2 = contentAlignment2;
            final String str = route4;
            final Function1 function17 = enterTransition;
            final Function1 function18 = exitTransition;
            final Function1 function19 = popEnterTransition2;
            final Function1 function110 = popExitTransition2;
            final Function1 function111 = sizeTransform;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.10
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) throws Throwable {
                    NavHostKt.NavHost(navController, startDestination, modifier5, alignment2, str, function17, function18, function19, function110, function111, function16, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static final void NavHost(androidx.navigation.NavHostController r32, kotlin.reflect.KClass<?> r33, androidx.compose.ui.Modifier r34, androidx.compose.ui.Alignment r35, kotlin.reflect.KClass<?> r36, java.util.Map<kotlin.reflect.KType, androidx.navigation.NavType<?>> r37, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.EnterTransition> r38, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.ExitTransition> r39, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.EnterTransition> r40, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.ExitTransition> r41, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.SizeTransform> r42, kotlin.jvm.functions.Function1<? super androidx.navigation.NavGraphBuilder, kotlin.Unit> r43, androidx.compose.runtime.Composer r44, int r45, int r46, int r47) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt.NavHost(androidx.navigation.NavHostController, kotlin.reflect.KClass, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, kotlin.reflect.KClass, java.util.Map, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static final void NavHost(androidx.navigation.NavHostController r32, java.lang.Object r33, androidx.compose.ui.Modifier r34, androidx.compose.ui.Alignment r35, kotlin.reflect.KClass<?> r36, java.util.Map<kotlin.reflect.KType, androidx.navigation.NavType<?>> r37, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.EnterTransition> r38, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.ExitTransition> r39, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.EnterTransition> r40, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.ExitTransition> r41, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.SizeTransform> r42, kotlin.jvm.functions.Function1<? super androidx.navigation.NavGraphBuilder, kotlin.Unit> r43, androidx.compose.runtime.Composer r44, int r45, int r46, int r47) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt.NavHost(androidx.navigation.NavHostController, java.lang.Object, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, kotlin.reflect.KClass, java.util.Map, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int, int):void");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of NavHost that supports AnimatedContent")
    public static final /* synthetic */ void NavHost(final NavHostController navController, final NavGraph graph, Modifier modifier, Composer $composer, final int $changed, final int i) throws Throwable {
        Modifier modifier2;
        Modifier.Companion modifier3;
        Composer $composer2 = $composer.startRestartGroup(-957014592);
        ComposerKt.sourceInformation($composer2, "C(NavHost)P(2)392@15641L39:NavHost.kt#opm8kd");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(graph) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= 384;
            modifier2 = modifier;
        } else if (($changed & 384) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if (($dirty & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
        } else {
            if (i2 != 0) {
                modifier3 = Modifier.INSTANCE;
            } else {
                modifier3 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-957014592, $dirty, -1, "androidx.navigation.compose.NavHost (NavHost.kt:392)");
            }
            NavHost(navController, graph, modifier3, null, null, null, null, null, null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896), 504);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.19
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) throws Throwable {
                    NavHostKt.NavHost(navController, graph, modifier4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of NavHost that supports sizeTransform")
    public static final /* synthetic */ void NavHost(final NavHostController navController, final NavGraph graph, Modifier modifier, Alignment contentAlignment, Function1 enterTransition, Function1 exitTransition, Function1 popEnterTransition, Function1 popExitTransition, Composer $composer, final int $changed, final int i) throws Throwable {
        Alignment contentAlignment2;
        Function1 enterTransition2;
        Function1 exitTransition2;
        Function1 popEnterTransition2;
        Modifier.Companion modifier2;
        Function1 popExitTransition2;
        int $dirty;
        Function1 enterTransition3;
        Function1 exitTransition3;
        Function1 popEnterTransition3;
        Modifier modifier3;
        Function1 enterTransition4;
        Function1 exitTransition4;
        Function1 popEnterTransition4;
        Function1 popExitTransition3;
        Alignment contentAlignment3;
        Composer $composer2 = $composer.startRestartGroup(-1818191915);
        ComposerKt.sourceInformation($composer2, "C(NavHost)P(5,3,4)431@17424L199:NavHost.kt#opm8kd");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(graph) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty2 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 256 : 128;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty2 |= 3072;
            contentAlignment2 = contentAlignment;
        } else if (($changed & 3072) == 0) {
            contentAlignment2 = contentAlignment;
            $dirty2 |= $composer2.changed(contentAlignment2) ? 2048 : 1024;
        } else {
            contentAlignment2 = contentAlignment;
        }
        int i4 = i & 16;
        if (i4 != 0) {
            $dirty2 |= 24576;
            enterTransition2 = enterTransition;
        } else if (($changed & 24576) == 0) {
            enterTransition2 = enterTransition;
            $dirty2 |= $composer2.changedInstance(enterTransition2) ? 16384 : 8192;
        } else {
            enterTransition2 = enterTransition;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            exitTransition2 = exitTransition;
        } else if ((196608 & $changed) == 0) {
            exitTransition2 = exitTransition;
            $dirty2 |= $composer2.changedInstance(exitTransition2) ? 131072 : 65536;
        } else {
            exitTransition2 = exitTransition;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                popEnterTransition2 = popEnterTransition;
                int i6 = $composer2.changedInstance(popEnterTransition2) ? 1048576 : 524288;
                $dirty2 |= i6;
            } else {
                popEnterTransition2 = popEnterTransition;
            }
            $dirty2 |= i6;
        } else {
            popEnterTransition2 = popEnterTransition;
        }
        if (($changed & 12582912) == 0) {
            $dirty2 |= ((i & 128) == 0 && $composer2.changedInstance(popExitTransition)) ? 8388608 : 4194304;
        }
        if (($dirty2 & 4793491) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            popExitTransition3 = popExitTransition;
            contentAlignment3 = contentAlignment2;
            popEnterTransition4 = popEnterTransition2;
            exitTransition4 = exitTransition2;
            enterTransition4 = enterTransition2;
            modifier3 = modifier;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier2 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if (i3 != 0) {
                    contentAlignment2 = Alignment.INSTANCE.getTopStart();
                }
                if (i4 != 0) {
                    enterTransition2 = new Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.20
                        @Override // kotlin.jvm.functions.Function1
                        public final EnterTransition invoke(AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
                            return EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(700, 0, null, 6, null), 0.0f, 2, null);
                        }
                    };
                }
                if (i5 != 0) {
                    exitTransition2 = new Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.21
                        @Override // kotlin.jvm.functions.Function1
                        public final ExitTransition invoke(AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
                            return EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(700, 0, null, 6, null), 0.0f, 2, null);
                        }
                    };
                }
                if ((i & 64) != 0) {
                    $dirty2 &= -3670017;
                    popEnterTransition2 = enterTransition2;
                }
                if ((i & 128) != 0) {
                    exitTransition3 = exitTransition2;
                    $dirty = $dirty2 & (-29360129);
                    popExitTransition2 = exitTransition3;
                    enterTransition3 = enterTransition2;
                    popEnterTransition3 = popEnterTransition2;
                } else {
                    popExitTransition2 = popExitTransition;
                    $dirty = $dirty2;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                    popEnterTransition3 = popEnterTransition2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 64) != 0) {
                    $dirty2 &= -3670017;
                }
                if ((i & 128) != 0) {
                    popExitTransition2 = popExitTransition;
                    $dirty = $dirty2 & (-29360129);
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                    popEnterTransition3 = popEnterTransition2;
                    modifier2 = modifier;
                } else {
                    modifier2 = modifier;
                    popExitTransition2 = popExitTransition;
                    $dirty = $dirty2;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                    popEnterTransition3 = popEnterTransition2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1818191915, $dirty, -1, "androidx.navigation.compose.NavHost (NavHost.kt:430)");
            }
            NavHost(navController, graph, modifier2, contentAlignment2, enterTransition3, exitTransition3, popEnterTransition3, popExitTransition2, null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty), 256);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            enterTransition4 = enterTransition3;
            exitTransition4 = exitTransition3;
            popEnterTransition4 = popEnterTransition3;
            popExitTransition3 = popExitTransition2;
            contentAlignment3 = contentAlignment2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final Alignment alignment = contentAlignment3;
            final Function1 function1 = enterTransition4;
            final Function1 function12 = exitTransition4;
            final Function1 function13 = popEnterTransition4;
            final Function1 function14 = popExitTransition3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt.NavHost.22
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) throws Throwable {
                    NavHostKt.NavHost(navController, graph, modifier4, alignment, function1, function12, function13, function14, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x0439 A[PHI: r6
      0x0439: PHI (r6v34 'popEnterTransition' kotlin.jvm.functions.Function1) = 
      (r6v20 'popEnterTransition' kotlin.jvm.functions.Function1)
      (r6v35 'popEnterTransition' kotlin.jvm.functions.Function1)
     binds: [B:199:0x0437, B:195:0x042e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04ae A[PHI: r6 r26
      0x04ae: PHI (r6v32 'popExitTransition' kotlin.jvm.functions.Function1) = (r6v24 'popExitTransition' kotlin.jvm.functions.Function1), (r6v33 'popExitTransition' kotlin.jvm.functions.Function1) binds: [B:222:0x04ac, B:219:0x04a1] A[DONT_GENERATE, DONT_INLINE]
      0x04ae: PHI (r26v4 'enterTransition' kotlin.jvm.functions.Function1) = (r26v2 'enterTransition' kotlin.jvm.functions.Function1), (r26v5 'enterTransition' kotlin.jvm.functions.Function1) binds: [B:222:0x04ac, B:219:0x04a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x04db A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0529 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0577 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x06ce  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0791  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void NavHost(final androidx.navigation.NavHostController r37, final androidx.navigation.NavGraph r38, androidx.compose.ui.Modifier r39, androidx.compose.ui.Alignment r40, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.EnterTransition> r41, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.ExitTransition> r42, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.EnterTransition> r43, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.ExitTransition> r44, kotlin.jvm.functions.Function1<androidx.compose.animation.AnimatedContentTransitionScope<androidx.navigation.NavBackStackEntry>, androidx.compose.animation.SizeTransform> r45, androidx.compose.runtime.Composer r46, final int r47, final int r48) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 2160
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt.NavHost(androidx.navigation.NavHostController, androidx.navigation.NavGraph, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<NavBackStackEntry> NavHost$lambda$6(State<? extends List<NavBackStackEntry>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavHost$lambda$8(MutableFloatState $progress$delegate) {
        MutableFloatState $this$getValue$iv = $progress$delegate;
        return $this$getValue$iv.getFloatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean NavHost$lambda$11(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void NavHost$lambda$12(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<NavBackStackEntry> NavHost$lambda$15(State<? extends List<NavBackStackEntry>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<NavBackStackEntry> NavHost$lambda$17(State<? extends List<NavBackStackEntry>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EnterTransition createEnterTransition(NavDestination $this$createEnterTransition, AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
        Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition> enterTransition$navigation_compose_release;
        if ($this$createEnterTransition instanceof ComposeNavigator.Destination) {
            Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition> enterTransition$navigation_compose_release2 = ((ComposeNavigator.Destination) $this$createEnterTransition).getEnterTransition$navigation_compose_release();
            if (enterTransition$navigation_compose_release2 != null) {
                return enterTransition$navigation_compose_release2.invoke(animatedContentTransitionScope);
            }
            return null;
        }
        if (!($this$createEnterTransition instanceof ComposeNavGraphNavigator.ComposeNavGraph) || (enterTransition$navigation_compose_release = ((ComposeNavGraphNavigator.ComposeNavGraph) $this$createEnterTransition).getEnterTransition$navigation_compose_release()) == null) {
            return null;
        }
        return enterTransition$navigation_compose_release.invoke(animatedContentTransitionScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExitTransition createExitTransition(NavDestination $this$createExitTransition, AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
        Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition> exitTransition$navigation_compose_release;
        if ($this$createExitTransition instanceof ComposeNavigator.Destination) {
            Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition> exitTransition$navigation_compose_release2 = ((ComposeNavigator.Destination) $this$createExitTransition).getExitTransition$navigation_compose_release();
            if (exitTransition$navigation_compose_release2 != null) {
                return exitTransition$navigation_compose_release2.invoke(animatedContentTransitionScope);
            }
            return null;
        }
        if (!($this$createExitTransition instanceof ComposeNavGraphNavigator.ComposeNavGraph) || (exitTransition$navigation_compose_release = ((ComposeNavGraphNavigator.ComposeNavGraph) $this$createExitTransition).getExitTransition$navigation_compose_release()) == null) {
            return null;
        }
        return exitTransition$navigation_compose_release.invoke(animatedContentTransitionScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EnterTransition createPopEnterTransition(NavDestination $this$createPopEnterTransition, AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
        Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition> popEnterTransition$navigation_compose_release;
        if ($this$createPopEnterTransition instanceof ComposeNavigator.Destination) {
            Function1<AnimatedContentTransitionScope<NavBackStackEntry>, EnterTransition> popEnterTransition$navigation_compose_release2 = ((ComposeNavigator.Destination) $this$createPopEnterTransition).getPopEnterTransition$navigation_compose_release();
            if (popEnterTransition$navigation_compose_release2 != null) {
                return popEnterTransition$navigation_compose_release2.invoke(animatedContentTransitionScope);
            }
            return null;
        }
        if (!($this$createPopEnterTransition instanceof ComposeNavGraphNavigator.ComposeNavGraph) || (popEnterTransition$navigation_compose_release = ((ComposeNavGraphNavigator.ComposeNavGraph) $this$createPopEnterTransition).getPopEnterTransition$navigation_compose_release()) == null) {
            return null;
        }
        return popEnterTransition$navigation_compose_release.invoke(animatedContentTransitionScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExitTransition createPopExitTransition(NavDestination $this$createPopExitTransition, AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
        Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition> popExitTransition$navigation_compose_release;
        if ($this$createPopExitTransition instanceof ComposeNavigator.Destination) {
            Function1<AnimatedContentTransitionScope<NavBackStackEntry>, ExitTransition> popExitTransition$navigation_compose_release2 = ((ComposeNavigator.Destination) $this$createPopExitTransition).getPopExitTransition$navigation_compose_release();
            if (popExitTransition$navigation_compose_release2 != null) {
                return popExitTransition$navigation_compose_release2.invoke(animatedContentTransitionScope);
            }
            return null;
        }
        if (!($this$createPopExitTransition instanceof ComposeNavGraphNavigator.ComposeNavGraph) || (popExitTransition$navigation_compose_release = ((ComposeNavGraphNavigator.ComposeNavGraph) $this$createPopExitTransition).getPopExitTransition$navigation_compose_release()) == null) {
            return null;
        }
        return popExitTransition$navigation_compose_release.invoke(animatedContentTransitionScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SizeTransform createSizeTransform(NavDestination $this$createSizeTransform, AnimatedContentTransitionScope<NavBackStackEntry> animatedContentTransitionScope) {
        Function1<AnimatedContentTransitionScope<NavBackStackEntry>, SizeTransform> sizeTransform$navigation_compose_release;
        if ($this$createSizeTransform instanceof ComposeNavigator.Destination) {
            Function1<AnimatedContentTransitionScope<NavBackStackEntry>, SizeTransform> sizeTransform$navigation_compose_release2 = ((ComposeNavigator.Destination) $this$createSizeTransform).getSizeTransform$navigation_compose_release();
            if (sizeTransform$navigation_compose_release2 != null) {
                return sizeTransform$navigation_compose_release2.invoke(animatedContentTransitionScope);
            }
            return null;
        }
        if (!($this$createSizeTransform instanceof ComposeNavGraphNavigator.ComposeNavGraph) || (sizeTransform$navigation_compose_release = ((ComposeNavGraphNavigator.ComposeNavGraph) $this$createSizeTransform).getSizeTransform$navigation_compose_release()) == null) {
            return null;
        }
        return sizeTransform$navigation_compose_release.invoke(animatedContentTransitionScope);
    }
}
