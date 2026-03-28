.class public final Landroidx/navigation/compose/NavHostKt;
.super Ljava/lang/Object;
.source "NavHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 NavController.kt\nandroidx/navigation/NavControllerKt\n+ 4 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilderKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 8 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,762:1\n1223#2,3:763\n1226#2,3:768\n1223#2,3:771\n1226#2,3:776\n1223#2,3:779\n1226#2,3:784\n1223#2,3:787\n1226#2,3:792\n1223#2,3:795\n1226#2,3:800\n1223#2,6:805\n1223#2,6:811\n1223#2,6:817\n1223#2,6:823\n1223#2,6:829\n1223#2,6:835\n1223#2,6:841\n1223#2,6:847\n1223#2,6:853\n1223#2,6:859\n1223#2,6:865\n1223#2,6:871\n1223#2,6:877\n1223#2,6:883\n1223#2,6:889\n2825#3:766\n2825#3:774\n2825#3:782\n2842#3:790\n2859#3:798\n59#4:767\n59#4:775\n59#4:783\n77#4:791\n95#4:799\n77#5:803\n146#6:804\n146#6:895\n81#7:896\n81#7:900\n107#7,2:901\n81#7:903\n81#7:904\n76#8:897\n109#8,2:898\n*S KotlinDebug\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt\n*L\n94#1:763,3\n94#1:768,3\n146#1:771,3\n146#1:776,3\n214#1:779,3\n214#1:784,3\n286#1:787,3\n286#1:792,3\n358#1:795,3\n358#1:800,3\n512#1:805,6\n513#1:811,6\n514#1:817,6\n532#1:823,6\n543#1:829,6\n553#1:835,6\n556#1:841,6\n570#1:847,6\n586#1:853,6\n594#1:859,6\n600#1:865,6\n610#1:871,6\n615#1:877,6\n648#1:883,6\n700#1:889,6\n95#1:766\n147#1:774\n215#1:782\n287#1:790\n359#1:798\n95#1:767\n147#1:775\n215#1:783\n287#1:791\n359#1:799\n493#1:803\n507#1:804\n711#1:895\n510#1:896\n513#1:900\n513#1:901,2\n540#1:903\n543#1:904\n512#1:897\n512#1:898,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a\u00f3\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\u0018\u001a\u00b5\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u001f\u0008\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0012\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0015\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u00bb\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\u001d\u0008\u0002\u0010\u001e\u001a\u0017\u0012\u0004\u0012\u00020 \u0012\r\u0012\u000b\u0012\u0002\u0008\u00030!\u00a2\u0006\u0002\u0008\u00100\u001f2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010$\u001a\u0098\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010&\u001a\u00da\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2\u001f\u0008\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0012\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0015\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\'\u001aL\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010(\u001a\u00bf\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001d2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\u001d\u0008\u0002\u0010\u001e\u001a\u0017\u0012\u0004\u0012\u00020 \u0012\r\u0012\u000b\u0012\u0002\u0008\u00030!\u00a2\u0006\u0002\u0008\u00100\u001f2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u0004\u0018\u00010\u000f*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010-\u001a\u0004\u0018\u00010\u0013*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010.\u001a\u0004\u0018\u00010\u000f*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010/\u001a\u0004\u0018\u00010\u0013*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u00100\u001a\u0004\u0018\u00010\u0017*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u00a8\u00061\u00b2\u0006\u0010\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002\u00b2\u0006\n\u00104\u001a\u000205X\u008a\u008e\u0002\u00b2\u0006\n\u00106\u001a\u000207X\u008a\u008e\u0002\u00b2\u0006\u0010\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002\u00b2\u0006\u0010\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002"
    }
    d2 = {
        "NavHost",
        "",
        "navController",
        "Landroidx/navigation/NavHostController;",
        "graph",
        "Landroidx/navigation/NavGraph;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "contentAlignment",
        "Landroidx/compose/ui/Alignment;",
        "enterTransition",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/animation/EnterTransition;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "Lkotlin/ExtensionFunctionType;",
        "exitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "popEnterTransition",
        "popExitTransition",
        "sizeTransform",
        "Landroidx/compose/animation/SizeTransform;",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "startDestination",
        "",
        "route",
        "Lkotlin/reflect/KClass;",
        "typeMap",
        "",
        "Lkotlin/reflect/KType;",
        "Landroidx/navigation/NavType;",
        "builder",
        "Landroidx/navigation/NavGraphBuilder;",
        "(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "createEnterTransition",
        "Landroidx/navigation/NavDestination;",
        "scope",
        "createExitTransition",
        "createPopEnterTransition",
        "createPopExitTransition",
        "createSizeTransform",
        "navigation-compose_release",
        "currentBackStack",
        "",
        "progress",
        "",
        "inPredictiveBack",
        "",
        "allVisibleEntries",
        "visibleEntries"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports AnimatedContent"
    .end annotation

    .line 393
    move/from16 v6, p4

    const v0, -0x390ae240    # -31374.875f

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(2)392@15641L39:NavHost.kt#opm8kd"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v6, 0x6

    if-nez v2, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v6, 0x30

    if-nez v2, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v6, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit16 v8, v1, 0x93

    const/16 v9, 0x92

    if-ne v8, v9, :cond_a

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_8

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 392
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 393
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_b
    move-object v2, v7

    .line 392
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 393
    const/4 v7, -0x1

    const-string v8, "androidx.navigation.compose.NavHost (NavHost.kt:392)"

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_c
    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v7, v1, 0x70

    or-int/2addr v0, v7

    and-int/lit16 v7, v1, 0x380

    or-int v17, v0, v7

    const/16 v18, 0x1f8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move-object/from16 v16, v5

    invoke-static/range {v7 .. v18}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    move-object v7, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_e

    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$19;

    move-object v0, v9

    move v10, v1

    .end local v1    # "$dirty":I
    .local v10, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, p4

    move-object v11, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/compose/NavHostKt$NavHost$19;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;II)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_9

    .end local v10    # "$dirty":I
    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_e
    move v10, v1

    move-object v11, v5

    .end local v1    # "$dirty":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$dirty":I
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_9
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p5, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports sizeTransform"
    .end annotation

    .line 431
    move/from16 v11, p9

    move/from16 v10, p10

    const v0, -0x6c5f682b

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,3,4)431@17424L199:NavHost.kt#opm8kd"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v7, p1

    :goto_3
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, v10, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit8 v6, v10, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v12, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v12, v11, 0x6000

    if-nez v12, :cond_e

    move-object/from16 v12, p4

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p4

    :goto_9
    and-int/lit8 v13, v10, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_f

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int/2addr v14, v11

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-object/from16 v14, p5

    :goto_b
    const/high16 v15, 0x180000

    and-int/2addr v15, v11

    if-nez v15, :cond_14

    and-int/lit8 v15, v10, 0x40

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v15, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v15, p6

    :goto_d
    const/high16 v16, 0xc00000

    and-int v16, v11, v16

    if-nez v16, :cond_17

    and-int/lit16 v0, v10, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    goto :goto_f

    :cond_17
    move-object/from16 v0, p7

    :goto_f
    const v17, 0x492493

    and-int v0, v1, v17

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 442
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, p7

    move/from16 v18, v1

    move-object v13, v5

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v12

    move-object/from16 v12, p2

    goto/16 :goto_14

    .line 431
    :cond_19
    :goto_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v3, -0x1c00001

    const v17, -0x380001

    if-eqz v0, :cond_1d

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 430
    :cond_1a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_1b

    and-int v1, v1, v17

    :cond_1b
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_1c

    and-int v0, v1, v3

    move-object/from16 v4, p7

    move v6, v0

    move-object v1, v12

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v0, p2

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_13

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v4, p7

    move v6, v1

    move-object v1, v12

    move-object v2, v14

    move-object v3, v15

    goto :goto_13

    .line 431
    :cond_1d
    :goto_11
    if-eqz v2, :cond_1e

    .line 419
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_12

    .line 431
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move-object/from16 v0, p2

    .line 419
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_12
    if-eqz v4, :cond_1f

    .line 420
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object v5, v2

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v5, "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_1f
    if-eqz v6, :cond_20

    .line 421
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$20;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$20;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v12, v2

    .end local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v12, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_20
    if-eqz v13, :cond_21

    .line 424
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$21;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$21;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v14, v2

    .end local p5    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v14, "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_21
    and-int/lit8 v2, v10, 0x40

    if-eqz v2, :cond_22

    .line 428
    move-object v2, v12

    .end local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v17

    move-object v15, v2

    .end local v2    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v15, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_22
    and-int/lit16 v2, v10, 0x80

    if-eqz v2, :cond_23

    .line 430
    move-object v2, v14

    .end local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popExitTransition":Lkotlin/jvm/functions/Function1;
    and-int/2addr v1, v3

    move v6, v1

    move-object v4, v2

    move-object v1, v12

    move-object v3, v15

    goto :goto_13

    .line 428
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_23
    move-object/from16 v4, p7

    move v6, v1

    move-object v1, v12

    move-object v2, v14

    move-object v3, v15

    .line 430
    .end local v12    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local v14    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v15    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v1, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v3, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v4, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v6, "$dirty":I
    :goto_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_24

    .line 431
    const/4 v12, -0x1

    const-string v13, "androidx.navigation.compose.NavHost (NavHost.kt:430)"

    const v14, -0x6c5f682b

    invoke-static {v14, v6, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 433
    :cond_24
    nop

    .line 434
    nop

    .line 435
    nop

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 439
    nop

    .line 440
    and-int/lit8 v12, v6, 0xe

    and-int/lit8 v13, v6, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v6, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v13, v6, 0x1c00

    or-int/2addr v12, v13

    const v13, 0xe000

    and-int/2addr v13, v6

    or-int/2addr v12, v13

    const/high16 v13, 0x70000

    and-int/2addr v13, v6

    or-int/2addr v12, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v6

    or-int/2addr v12, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v6

    or-int v22, v12, v13

    .line 432
    const/16 v20, 0x0

    const/16 v23, 0x100

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v0

    move-object v15, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v9

    invoke-static/range {v12 .. v23}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 442
    :cond_25
    move-object v12, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v5

    move/from16 v18, v6

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local v2    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v3    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v4    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v5    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local v6    # "$dirty":I
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v14, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v15, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v16, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v17, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v18, "$dirty":I
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_26

    new-instance v19, Landroidx/navigation/compose/NavHostKt$NavHost$22;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v11, v6

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v20, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$NavHost$22;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_26
    move-object/from16 v20, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_15
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p5, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "sizeTransform"    # Lkotlin/jvm/functions/Function1;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Landroidx/navigation/NavGraph;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 491
    move-object/from16 v12, p0

    move/from16 v13, p10

    move/from16 v11, p11

    const v0, -0x751a66d8

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,3,4)492@19706L7,*494@19790L7,509@20395L16,511@20433L36,512@20498L34,513@20586L652,513@20537L701,531@21277L138,531@21244L171,537@21447L29,539@21536L16,542@21641L186,552@21922L42,714@29628L27:NavHost.kt#opm8kd"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v15, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x30

    if-nez v2, :cond_5

    move-object/from16 v15, p1

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v15, p1

    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v13, 0x180

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v5, v11, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v13, 0xc00

    if-nez v6, :cond_b

    move-object/from16 v6, p3

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    and-int/lit8 v7, v11, 0x10

    if-eqz v7, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v13, 0x6000

    if-nez v8, :cond_e

    move-object/from16 v8, p4

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v9, v11, 0x20

    const/high16 v10, 0x30000

    if-eqz v9, :cond_f

    or-int/2addr v1, v10

    move-object/from16 v10, p5

    goto :goto_b

    :cond_f
    and-int/2addr v10, v13

    if-nez v10, :cond_11

    move-object/from16 v10, p5

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v10, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v17, v13, v16

    if-nez v17, :cond_14

    and-int/lit8 v17, v11, 0x40

    if-nez v17, :cond_12

    move-object/from16 v3, p6

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v3, p6

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_14
    move-object/from16 v3, p6

    :goto_d
    const/high16 v18, 0xc00000

    and-int v19, v13, v18

    if-nez v19, :cond_17

    and-int/lit16 v0, v11, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v21, 0x400000

    :goto_e
    or-int v1, v1, v21

    goto :goto_f

    :cond_17
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    const/high16 v21, 0x6000000

    if-eqz v0, :cond_18

    or-int v1, v1, v21

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v21, v13, v21

    if-nez v21, :cond_1a

    move-object/from16 v3, p8

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v21, 0x2000000

    :goto_10
    or-int v1, v1, v21

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p8

    :goto_11
    const v21, 0x2492493

    and-int v3, v1, v21

    const v4, 0x2492492

    if-ne v3, v4, :cond_1c

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    .line 716
    :cond_1b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v21, p2

    move-object/from16 v24, p6

    move-object/from16 v31, p7

    move-object/from16 v12, p8

    move/from16 v28, v1

    move-object/from16 v22, v6

    move-object/from16 v26, v8

    move-object/from16 v25, v10

    goto/16 :goto_40

    .line 491
    :cond_1c
    :goto_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_20

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_13

    .line 490
    :cond_1d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1e

    const v0, -0x380001

    and-int/2addr v1, v0

    :cond_1e
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_1f

    const v0, -0x1c00001

    and-int/2addr v0, v1

    move-object/from16 v21, p2

    move-object/from16 v7, p7

    move v5, v0

    move-object/from16 v22, v6

    move-object v9, v10

    move-object/from16 v6, p8

    move-object v10, v8

    move-object/from16 v8, p6

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_17

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1f
    move-object/from16 v21, p2

    move-object/from16 v7, p7

    move v5, v1

    move-object/from16 v22, v6

    move-object v9, v10

    move-object/from16 v6, p8

    move-object v10, v8

    move-object/from16 v8, p6

    goto/16 :goto_17

    .line 491
    :cond_20
    :goto_13
    if-eqz v2, :cond_21

    .line 465
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 491
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    move-object/from16 v2, p2

    .line 465
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v5, :cond_22

    .line 466
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    move-object v6, v3

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v6, "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_22
    if-eqz v7, :cond_23

    .line 470
    sget-object v3, Landroidx/navigation/compose/NavHostKt$NavHost$23;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$23;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v8, v3

    .end local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_23
    if-eqz v9, :cond_24

    .line 476
    sget-object v3, Landroidx/navigation/compose/NavHostKt$NavHost$24;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$24;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v10, v3

    .end local p5    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v10, "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_24
    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_25

    .line 482
    move-object v3, v8

    .end local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v3, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    const v4, -0x380001

    and-int/2addr v1, v4

    goto :goto_15

    .line 476
    .end local v3    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_25
    move-object/from16 v3, p6

    .line 482
    .end local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_15
    and-int/lit16 v4, v11, 0x80

    if-eqz v4, :cond_26

    .line 486
    move-object v4, v10

    .end local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v4, "popExitTransition":Lkotlin/jvm/functions/Function1;
    const v5, -0x1c00001

    and-int/2addr v1, v5

    goto :goto_16

    .line 482
    .end local v4    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_26
    move-object/from16 v4, p7

    .line 486
    .end local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_16
    if-eqz v0, :cond_27

    .line 490
    const/4 v0, 0x0

    move v5, v1

    move-object/from16 v21, v2

    move-object v7, v4

    move-object/from16 v22, v6

    move-object v9, v10

    move-object v6, v0

    move-object v10, v8

    move-object v8, v3

    .end local p8    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v0, "sizeTransform":Lkotlin/jvm/functions/Function1;
    goto :goto_17

    .line 486
    .end local v0    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    :cond_27
    move v5, v1

    move-object/from16 v21, v2

    move-object v7, v4

    move-object/from16 v22, v6

    move-object v9, v10

    move-object/from16 v6, p8

    move-object v10, v8

    move-object v8, v3

    .line 490
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v4    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local p8    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v5, "$dirty":I
    .local v6, "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v7, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v9, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v10, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v21, "modifier":Landroidx/compose/ui/Modifier;
    .local v22, "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_17
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 491
    const/4 v0, -0x1

    const-string v1, "androidx.navigation.compose.NavHost (NavHost.kt:490)"

    const v2, -0x751a66d8

    invoke-static {v2, v5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 493
    :cond_28
    invoke-static {}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 803
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v14, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 493
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v4, v3

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    .line 495
    .local v4, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v0, v14, v1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 494
    move-object/from16 v20, v0

    .line 499
    .local v20, "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    invoke-interface/range {v20 .. v20}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 502
    invoke-virtual/range {p0 .. p1}, Landroidx/navigation/NavHostController;->setGraph(Landroidx/navigation/NavGraph;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    const-string v1, "composable"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 804
    .local v2, "$i$f$get":I
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 507
    .end local v0    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$get":I
    instance-of v1, v0, Landroidx/navigation/compose/ComposeNavigator;

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    goto :goto_18

    :cond_29
    move-object v0, v3

    :goto_18
    if-nez v0, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_2b

    new-instance v16, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v3

    move-object/from16 v3, v21

    move-object v15, v4

    .end local v4    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .local v15, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object/from16 v4, v22

    move/from16 v23, v5

    .end local v5    # "$dirty":I
    .local v23, "$dirty":I
    move-object v5, v10

    move-object/from16 p2, v6

    .end local v6    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local p2, "sizeTransform":Lkotlin/jvm/functions/Function1;
    move-object v6, v9

    move-object/from16 p3, v7

    .end local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local p3, "popExitTransition":Lkotlin/jvm/functions/Function1;
    move-object v7, v8

    move-object/from16 v24, v8

    .end local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v24, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    move-object/from16 v8, p3

    move-object/from16 v25, v9

    .end local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v25, "exitTransition":Lkotlin/jvm/functions/Function1;
    move-object/from16 v9, p2

    move-object/from16 v26, v10

    .end local v10    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v26, "enterTransition":Lkotlin/jvm/functions/Function1;
    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .end local v15    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v23    # "$dirty":I
    .end local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .end local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v5    # "$dirty":I
    .restart local v6    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v10    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2b
    move-object v15, v4

    move/from16 v23, v5

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 508
    .end local v4    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v5    # "$dirty":I
    .end local v6    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .end local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v10    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v15    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v23    # "$dirty":I
    .restart local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_19
    return-void

    .line 507
    .end local v15    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v23    # "$dirty":I
    .end local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .end local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v5    # "$dirty":I
    .restart local v6    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v10    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2c
    move-object v15, v4

    move/from16 v23, v5

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 506
    .end local v4    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v5    # "$dirty":I
    .end local v6    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .end local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v10    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v15    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v23    # "$dirty":I
    .restart local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    move-object v13, v0

    .line 510
    .local v13, "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    invoke-virtual {v13}, Landroidx/navigation/compose/ComposeNavigator;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v3, v14, v10, v1}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 512
    .local v0, "currentBackStack$delegate":Landroidx/compose/runtime/State;
    const v2, 0x26f085fe

    const-string v9, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v14, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid$iv":Z
    move-object v4, v14

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 805
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 806
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_2d

    .line 807
    const/4 v8, 0x0

    .line 512
    .local v8, "$i$a$-cache-NavHostKt$NavHost$progress$2":I
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v8

    .line 807
    .end local v8    # "$i$a$-cache-NavHostKt$NavHost$progress$2":I
    nop

    .line 808
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 809
    nop

    .end local v8    # "value$iv":Ljava/lang/Object;
    goto :goto_1a

    .line 810
    :cond_2d
    move-object v8, v6

    .line 806
    :goto_1a
    nop

    .line 805
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 512
    .end local v2    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v8, Landroidx/compose/runtime/MutableFloatState;

    .local v8, "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 513
    const v2, 0x26f08e1c

    invoke-static {v14, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .restart local v2    # "invalid$iv":Z
    move-object v4, v14

    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 811
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 812
    .restart local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_2e

    .line 813
    const/4 v1, 0x0

    .line 513
    .local v1, "$i$a$-cache-NavHostKt$NavHost$inPredictiveBack$2":I
    move/from16 p4, v1

    .end local v1    # "$i$a$-cache-NavHostKt$NavHost$inPredictiveBack$2":I
    .local p4, "$i$a$-cache-NavHostKt$NavHost$inPredictiveBack$2":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x2

    invoke-static {v1, v3, v10, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 813
    .end local p4    # "$i$a$-cache-NavHostKt$NavHost$inPredictiveBack$2":I
    nop

    .line 814
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 815
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_1b

    .line 816
    :cond_2e
    move-object v1, v6

    .line 812
    :goto_1b
    nop

    .line 811
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 513
    .end local v2    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v10, v1

    check-cast v10, Landroidx/compose/runtime/MutableState;

    .local v10, "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 514
    invoke-static {v0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v1, 0x0

    :goto_1c
    const v2, 0x26f09b86    # 1.66955E-15f

    invoke-static {v14, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .restart local v2    # "invalid$iv":Z
    move-object v4, v14

    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 817
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 818
    .restart local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_31

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_30

    goto :goto_1d

    .line 822
    :cond_30
    move-object v3, v6

    goto :goto_1e

    .line 819
    :cond_31
    :goto_1d
    const/4 v3, 0x0

    .line 514
    .local v3, "$i$a$-cache-NavHostKt$NavHost$25":I
    new-instance v27, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    const/16 v28, 0x0

    move-object/from16 p4, v27

    move-object/from16 p5, v13

    move-object/from16 p6, v8

    move-object/from16 p7, v0

    move-object/from16 p8, v10

    move-object/from16 p9, v28

    invoke-direct/range {p4 .. p9}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v27, Lkotlin/jvm/functions/Function2;

    .line 819
    .end local v3    # "$i$a$-cache-NavHostKt$NavHost$25":I
    move-object/from16 v3, v27

    .line 820
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 821
    nop

    .line 818
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_1e
    nop

    .line 817
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 514
    .end local v2    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v14, v2, v2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 532
    const v1, 0x26f0efe4

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "invalid$iv":Z
    move-object v2, v14

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 823
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 824
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_33

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_32

    goto :goto_1f

    .line 828
    :cond_32
    move-object v6, v4

    goto :goto_20

    .line 825
    :cond_33
    :goto_1f
    const/4 v6, 0x0

    .line 532
    .local v6, "$i$a$-cache-NavHostKt$NavHost$26":I
    new-instance v7, Landroidx/navigation/compose/NavHostKt$NavHost$26$1;

    invoke-direct {v7, v12, v15}, Landroidx/navigation/compose/NavHostKt$NavHost$26$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/LifecycleOwner;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 825
    .end local v6    # "$i$a$-cache-NavHostKt$NavHost$26":I
    move-object v6, v7

    .line 826
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 827
    nop

    .line 824
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_20
    nop

    .line 823
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 532
    .end local v1    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    invoke-static {v15, v6, v14, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 538
    invoke-static {v14, v1}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v7

    .line 540
    .local v7, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v14, v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 543
    .local v6, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    const v1, 0x26f11d94

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .restart local v1    # "invalid$iv":Z
    move-object v2, v14

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 829
    .restart local v3    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 830
    .restart local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_34

    .line 831
    const/4 v1, 0x0

    .line 544
    .local v1, "$i$a$-cache-NavHostKt$NavHost$visibleEntries$2":I
    move/from16 p5, v1

    .end local v1    # "$i$a$-cache-NavHostKt$NavHost$visibleEntries$2":I
    .local p5, "$i$a$-cache-NavHostKt$NavHost$visibleEntries$2":I
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;

    invoke-direct {v1, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 548
    nop

    .line 831
    .end local p5    # "$i$a$-cache-NavHostKt$NavHost$visibleEntries$2":I
    nop

    .line 832
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 833
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_21

    .line 834
    :cond_34
    move-object v1, v4

    .line 830
    :goto_21
    nop

    .line 829
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 543
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/State;

    .local v5, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 551
    invoke-static {v5}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 553
    .local v4, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    const v1, 0x26f14024

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object v2, v14

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 835
    .restart local v3    # "$i$f$cache":I
    move/from16 p4, v1

    .end local v1    # "invalid$iv":Z
    .restart local p4    # "invalid$iv":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 836
    .local v27, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v3

    .end local v3    # "$i$f$cache":I
    .local p5, "$i$f$cache":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_35

    .line 837
    const/4 v3, 0x0

    .line 553
    .local v3, "$i$a$-cache-NavHostKt$NavHost$zIndices$1":I
    new-instance v28, Ljava/util/LinkedHashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v28, Ljava/util/Map;

    .line 837
    .end local v3    # "$i$a$-cache-NavHostKt$NavHost$zIndices$1":I
    move-object/from16 v3, v28

    .line 838
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 839
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_22

    .line 840
    :cond_35
    move-object v3, v1

    .line 836
    :goto_22
    nop

    .line 835
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 553
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "invalid$iv":Z
    .end local p5    # "$i$f$cache":I
    check-cast v3, Ljava/util/Map;

    .local v3, "zIndices":Ljava/util/Map;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v1, 0x26f16314

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "555@22098L597,569@22793L597,585@23521L301,593@23855L146,593@23832L169,599@24033L348,606@24408L52,647@26382L1208,673@27667L1333,645@26314L2686,699@29073L341,699@29009L405"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 555
    if-eqz v4, :cond_51

    .line 556
    const v1, 0x26f1584f

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x380000

    move/from16 v12, v23

    .end local v23    # "$dirty":I
    .local v12, "$dirty":I
    and-int/2addr v2, v12

    xor-int v2, v2, v16

    move-object/from16 p4, v6

    const/high16 v6, 0x100000

    .end local v6    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .local p4, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    if-le v2, v6, :cond_36

    move-object/from16 v6, v24

    .end local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v6, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_23

    .end local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_36
    move-object/from16 v6, v24

    .end local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_23
    and-int v2, v12, v16

    const/high16 v11, 0x100000

    if-ne v2, v11, :cond_38

    :cond_37
    const/4 v2, 0x1

    goto :goto_24

    :cond_38
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v12

    const/16 v11, 0x4000

    if-ne v2, v11, :cond_39

    const/4 v2, 0x1

    goto :goto_25

    :cond_39
    const/4 v2, 0x0

    :goto_25
    or-int/2addr v1, v2

    .local v1, "invalid$iv":Z
    move-object v2, v14

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 841
    .local v11, "$i$f$cache":I
    move/from16 p5, v11

    .end local v11    # "$i$f$cache":I
    .restart local p5    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 842
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_3b

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v1

    .end local v1    # "invalid$iv":Z
    .local p6, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v11, v1, :cond_3a

    goto :goto_26

    .line 846
    :cond_3a
    move-object v1, v11

    move-object/from16 v17, v15

    move-object/from16 v15, v26

    goto :goto_27

    .line 842
    .end local p6    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_3b
    move/from16 p6, v1

    .line 843
    .end local v1    # "invalid$iv":Z
    .restart local p6    # "invalid$iv":Z
    :goto_26
    const/4 v1, 0x0

    .line 556
    .local v1, "$i$a$-cache-NavHostKt$NavHost$finalEnter$1":I
    move/from16 p7, v1

    .end local v1    # "$i$a$-cache-NavHostKt$NavHost$finalEnter$1":I
    .local p7, "$i$a$-cache-NavHostKt$NavHost$finalEnter$1":I
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;

    move-object/from16 v17, v15

    move-object/from16 v15, v26

    .end local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v15, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v17, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    invoke-direct {v1, v13, v6, v15, v10}, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 843
    .end local p7    # "$i$a$-cache-NavHostKt$NavHost$finalEnter$1":I
    nop

    .line 844
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 845
    nop

    .line 842
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_27
    nop

    .line 841
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 556
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p5    # "$i$f$cache":I
    .end local p6    # "invalid$iv":Z
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "finalEnter":Lkotlin/jvm/functions/Function1;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 570
    const v1, 0x26f1af2f

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v12

    xor-int v2, v2, v18

    move-object/from16 v24, v6

    const/high16 v6, 0x800000

    .end local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    if-le v2, v6, :cond_3d

    move-object/from16 v6, p3

    .end local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v6, "popExitTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_28

    :cond_3c
    move-object/from16 v26, v15

    goto :goto_29

    .end local v6    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_3d
    move-object/from16 v6, p3

    .end local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_28
    and-int v2, v12, v18

    move-object/from16 v26, v15

    const/high16 v15, 0x800000

    .end local v15    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    if-ne v2, v15, :cond_3e

    :goto_29
    const/4 v2, 0x1

    goto :goto_2a

    :cond_3e
    const/4 v2, 0x0

    :goto_2a
    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v12

    const/high16 v15, 0x20000

    if-ne v2, v15, :cond_3f

    const/4 v2, 0x1

    goto :goto_2b

    :cond_3f
    const/4 v2, 0x0

    :goto_2b
    or-int/2addr v1, v2

    .local v1, "invalid$iv":Z
    move-object v2, v14

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 847
    .local v15, "$i$f$cache":I
    move/from16 p3, v15

    .end local v15    # "$i$f$cache":I
    .local p3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 848
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_41

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v1

    .end local v1    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_40

    goto :goto_2c

    .line 852
    :cond_40
    move-object/from16 p7, v15

    move-object/from16 v1, p7

    move-object/from16 v15, v25

    goto :goto_2d

    .line 848
    .end local p5    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_41
    move/from16 p5, v1

    .line 849
    .end local v1    # "invalid$iv":Z
    .restart local p5    # "invalid$iv":Z
    :goto_2c
    const/4 v1, 0x0

    .line 570
    .local v1, "$i$a$-cache-NavHostKt$NavHost$finalExit$1":I
    move/from16 p6, v1

    .end local v1    # "$i$a$-cache-NavHostKt$NavHost$finalExit$1":I
    .local p6, "$i$a$-cache-NavHostKt$NavHost$finalExit$1":I
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;

    move-object/from16 p7, v15

    move-object/from16 v15, v25

    .end local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v15, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local p7, "it$iv":Ljava/lang/Object;
    invoke-direct {v1, v13, v6, v15, v10}, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 849
    .end local p6    # "$i$a$-cache-NavHostKt$NavHost$finalExit$1":I
    nop

    .line 850
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 851
    nop

    .line 848
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_2d
    nop

    .line 847
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 570
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .local v2, "finalExit":Lkotlin/jvm/functions/Function1;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 586
    const v1, 0x26f20907

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v1, 0xe000000

    and-int/2addr v1, v12

    move-object/from16 p3, v6

    .end local v6    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local p3, "popExitTransition":Lkotlin/jvm/functions/Function1;
    const/high16 v6, 0x4000000

    if-ne v1, v6, :cond_42

    const/4 v1, 0x1

    goto :goto_2e

    :cond_42
    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    :goto_2e
    move-object v6, v14

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 853
    .local v16, "$i$f$cache":I
    move-object/from16 v25, v15

    .end local v15    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 854
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_44

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v1

    .end local v1    # "invalid$iv":Z
    .restart local p5    # "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_43

    goto :goto_2f

    .line 858
    :cond_43
    move-object/from16 p7, v15

    move-object/from16 v1, p7

    move-object/from16 v15, p2

    goto :goto_30

    .line 854
    .end local p5    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_44
    move/from16 p5, v1

    .line 855
    .end local v1    # "invalid$iv":Z
    .restart local p5    # "invalid$iv":Z
    :goto_2f
    const/4 v1, 0x0

    .line 586
    .local v1, "$i$a$-cache-NavHostKt$NavHost$finalSizeTransform$1":I
    move/from16 p6, v1

    .end local v1    # "$i$a$-cache-NavHostKt$NavHost$finalSizeTransform$1":I
    .local p6, "$i$a$-cache-NavHostKt$NavHost$finalSizeTransform$1":I
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$finalSizeTransform$1$1;

    move-object/from16 p7, v15

    move-object/from16 v15, p2

    .end local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v15, "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "it$iv":Ljava/lang/Object;
    invoke-direct {v1, v15}, Landroidx/navigation/compose/NavHostKt$NavHost$finalSizeTransform$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 855
    .end local p6    # "$i$a$-cache-NavHostKt$NavHost$finalSizeTransform$1":I
    nop

    .line 856
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 857
    nop

    .line 854
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_30
    nop

    .line 853
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 586
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 584
    move-object v6, v1

    .line 594
    .local v6, "finalSizeTransform":Lkotlin/jvm/functions/Function1;
    move-object/from16 p2, v15

    const/4 v1, 0x1

    .end local v15    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const v1, 0x26f2322c

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid$iv":Z
    move-object/from16 p5, v14

    .local p5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 859
    .restart local v16    # "$i$f$cache":I
    move/from16 v23, v12

    .end local v12    # "$dirty":I
    .restart local v23    # "$dirty":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 860
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_46

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v1

    .end local v1    # "invalid$iv":Z
    .local p6, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v12, v1, :cond_45

    goto :goto_31

    .line 864
    :cond_45
    move-object/from16 p7, v12

    move-object/from16 v1, p7

    move-object/from16 v12, p5

    goto :goto_32

    .line 860
    .end local p6    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_46
    move/from16 p6, v1

    .line 861
    .end local v1    # "invalid$iv":Z
    .restart local p6    # "invalid$iv":Z
    :goto_31
    const/4 v1, 0x0

    .line 594
    .local v1, "$i$a$-cache-NavHostKt$NavHost$27":I
    move/from16 p7, v1

    .end local v1    # "$i$a$-cache-NavHostKt$NavHost$27":I
    .local p7, "$i$a$-cache-NavHostKt$NavHost$27":I
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;

    invoke-direct {v1, v5, v13}, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 861
    .end local p7    # "$i$a$-cache-NavHostKt$NavHost$27":I
    nop

    .line 862
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 p7, v12

    move-object/from16 v12, p5

    .end local p5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p7, "it$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 863
    nop

    .line 860
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_32
    nop

    .line 859
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 594
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p6    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v12, 0x6

    invoke-static {v15, v1, v14, v12}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 600
    const v1, 0x26f24936

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object v12, v14

    .restart local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 865
    .local v15, "$i$f$cache":I
    move/from16 p5, v1

    .end local v1    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 866
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v15

    .end local v15    # "$i$f$cache":I
    .local p6, "$i$f$cache":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v1, v15, :cond_47

    .line 867
    const/4 v15, 0x0

    .line 604
    .local v15, "$i$a$-cache-NavHostKt$NavHost$transitionState$1":I
    move-object/from16 p7, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local p7    # "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v1, v4}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 867
    .end local v15    # "$i$a$-cache-NavHostKt$NavHost$transitionState$1":I
    nop

    .line 868
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 869
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_33

    .line 870
    .end local p7    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    :cond_47
    move-object/from16 p7, v1

    .line 866
    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local p7    # "it$iv":Ljava/lang/Object;
    :goto_33
    nop

    .line 865
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 600
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p5    # "invalid$iv":Z
    .end local p6    # "$i$f$cache":I
    move-object v12, v1

    check-cast v12, Landroidx/compose/animation/core/SeekableTransitionState;

    .local v12, "transitionState":Landroidx/compose/animation/core/SeekableTransitionState;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 607
    move-object v1, v12

    check-cast v1, Landroidx/compose/animation/core/TransitionState;

    sget v15, Landroidx/compose/animation/core/SeekableTransitionState;->$stable:I

    or-int/lit8 v15, v15, 0x30

    move-object/from16 p5, v7

    .end local v7    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .local p5, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    const-string v7, "entry"

    move-object/from16 p6, v5

    const/4 v5, 0x0

    .end local v5    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local p6, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    invoke-static {v1, v7, v14, v15, v5}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v15

    .line 609
    .local v15, "transition":Landroidx/compose/animation/core/Transition;
    invoke-static {v10}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const v1, -0x48a240c8

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "609@24531L159,609@24506L184"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 610
    invoke-static {v8}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v5, 0x26f286b9

    invoke-static {v14, v5, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .local v5, "invalid$iv":Z
    move-object v7, v14

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 871
    .local v16, "$i$f$cache":I
    move-object/from16 v18, v10

    .end local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .local v18, "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 872
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_49

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p7, v5

    .end local v5    # "invalid$iv":Z
    .local p7, "invalid$iv":Z
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v10, v5, :cond_48

    goto :goto_34

    .line 876
    :cond_48
    move-object/from16 p9, v10

    move-object/from16 v5, p9

    goto :goto_35

    .line 872
    .end local p7    # "invalid$iv":Z
    .restart local v5    # "invalid$iv":Z
    :cond_49
    move/from16 p7, v5

    .line 873
    .end local v5    # "invalid$iv":Z
    .restart local p7    # "invalid$iv":Z
    :goto_34
    const/4 v5, 0x0

    .line 610
    .local v5, "$i$a$-cache-NavHostKt$NavHost$28":I
    move/from16 p8, v5

    .end local v5    # "$i$a$-cache-NavHostKt$NavHost$28":I
    .local p8, "$i$a$-cache-NavHostKt$NavHost$28":I
    new-instance v5, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;

    move-object/from16 p9, v10

    const/4 v10, 0x0

    .end local v10    # "it$iv":Ljava/lang/Object;
    .local p9, "it$iv":Ljava/lang/Object;
    invoke-direct {v5, v12, v0, v8, v10}, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 873
    .end local p8    # "$i$a$-cache-NavHostKt$NavHost$28":I
    nop

    .line 874
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 875
    nop

    .line 872
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_35
    nop

    .line 871
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p9    # "it$iv":Ljava/lang/Object;
    nop

    .line 610
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p7    # "invalid$iv":Z
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v7, 0x0

    invoke-static {v1, v5, v14, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 609
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v35, v0

    const/4 v7, 0x0

    goto :goto_38

    .line 614
    .end local v18    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .local v10, "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    :cond_4a
    move-object/from16 v18, v10

    .end local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v18    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    const v1, -0x489e5c8b

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "614@24751L1532,614@24720L1563"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 615
    const v1, 0x26f2a796

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .local v1, "invalid$iv":Z
    move-object v5, v14

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 877
    .local v7, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 878
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_4c

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v35, v0

    .end local v0    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .local v35, "currentBackStack$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_4b

    goto :goto_36

    .line 882
    :cond_4b
    move/from16 p8, v7

    move-object v0, v10

    const/4 v7, 0x0

    goto :goto_37

    .line 878
    .end local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .restart local v0    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    :cond_4c
    move-object/from16 v35, v0

    .line 879
    .end local v0    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .restart local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    :goto_36
    const/4 v0, 0x0

    .line 615
    .local v0, "$i$a$-cache-NavHostKt$NavHost$29":I
    move/from16 p7, v0

    .end local v0    # "$i$a$-cache-NavHostKt$NavHost$29":I
    .local p7, "$i$a$-cache-NavHostKt$NavHost$29":I
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    move/from16 p8, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$cache":I
    .local p8, "$i$f$cache":I
    invoke-direct {v0, v12, v4, v15, v7}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 879
    .end local p7    # "$i$a$-cache-NavHostKt$NavHost$29":I
    nop

    .line 880
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 881
    nop

    .line 878
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_37
    nop

    .line 877
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 615
    .end local v1    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p8    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    invoke-static {v4, v0, v14, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 614
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 646
    :goto_38
    nop

    .line 647
    nop

    .line 648
    const v0, 0x26f37232

    invoke-static {v14, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v14

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 883
    .local v5, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 884
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_4e

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v10, v7, :cond_4d

    goto :goto_39

    .line 888
    :cond_4d
    move-object v7, v10

    goto :goto_3a

    .line 885
    :cond_4e
    :goto_39
    const/4 v7, 0x0

    .line 648
    .local v7, "$i$a$-cache-NavHostKt$NavHost$30":I
    new-instance v19, Landroidx/navigation/compose/NavHostKt$NavHost$30$1;

    move-object/from16 v27, v19

    move-object/from16 v28, v3

    move-object/from16 v29, v13

    move-object/from16 v30, v11

    move-object/from16 v31, v2

    move-object/from16 v32, v6

    move-object/from16 v33, p6

    move-object/from16 v34, v18

    invoke-direct/range {v27 .. v34}, Landroidx/navigation/compose/NavHostKt$NavHost$30$1;-><init>(Ljava/util/Map;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    check-cast v19, Lkotlin/jvm/functions/Function1;

    .line 885
    .end local v7    # "$i$a$-cache-NavHostKt$NavHost$30":I
    move-object/from16 v7, v19

    .line 886
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 887
    nop

    .line 884
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_3a
    nop

    .line 883
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 648
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v0, v7

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 672
    nop

    .line 646
    sget-object v1, Landroidx/navigation/compose/NavHostKt$NavHost$31;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$31;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 674
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$32;

    move-object/from16 v7, p5

    move-object/from16 p5, v6

    move-object/from16 v10, v18

    move-object/from16 v6, p6

    .end local v18    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .end local p6    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v6, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v7, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .local v10, "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .local p5, "finalSizeTransform":Lkotlin/jvm/functions/Function1;
    invoke-direct {v1, v7, v10, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$32;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    move-object/from16 p6, v2

    .end local v2    # "finalExit":Lkotlin/jvm/functions/Function1;
    .local p6, "finalExit":Lkotlin/jvm/functions/Function1;
    const/16 v2, 0x36

    move-object/from16 p7, v3

    .end local v3    # "zIndices":Ljava/util/Map;
    .local p7, "zIndices":Ljava/util/Map;
    const v3, 0x30ebd9dc

    move-object/from16 p8, v4

    const/4 v4, 0x1

    .end local v4    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local p8, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-static {v3, v4, v1, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v1, v23, 0x3

    and-int/lit8 v1, v1, 0x70

    const v2, 0x36000

    or-int/2addr v1, v2

    move/from16 v4, v23

    .end local v23    # "$dirty":I
    .local v4, "$dirty":I
    and-int/lit16 v2, v4, 0x1c00

    or-int v18, v1, v2

    .line 646
    const/16 v19, 0x0

    move-object v1, v15

    move-object/from16 v23, p6

    .end local p6    # "finalExit":Lkotlin/jvm/functions/Function1;
    .local v23, "finalExit":Lkotlin/jvm/functions/Function1;
    move-object/from16 v2, v21

    move-object/from16 v36, p7

    const/16 v27, 0x0

    .end local p7    # "zIndices":Ljava/util/Map;
    .local v36, "zIndices":Ljava/util/Map;
    move-object v3, v0

    move-object/from16 v29, p8

    move/from16 v28, v4

    .end local v4    # "$dirty":I
    .end local p8    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local v28, "$dirty":I
    .local v29, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    move-object/from16 v4, v22

    move-object/from16 v30, v6

    .end local v6    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v30, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v31, p3

    move-object/from16 v32, p4

    move-object/from16 v0, p5

    .end local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local p4    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local p5    # "finalSizeTransform":Lkotlin/jvm/functions/Function1;
    .local v0, "finalSizeTransform":Lkotlin/jvm/functions/Function1;
    .local v31, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v32, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v6, v16

    move-object/from16 v16, v7

    .end local v7    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .local v16, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    move-object v7, v14

    move-object/from16 v33, v8

    .end local v8    # "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    .local v33, "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    move/from16 v8, v18

    move-object/from16 p3, v0

    move-object v0, v9

    .end local v0    # "finalSizeTransform":Lkotlin/jvm/functions/Function1;
    .local p3, "finalSizeTransform":Lkotlin/jvm/functions/Function1;
    move/from16 v9, v19

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 700
    invoke-virtual {v15}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    const v3, 0x26f4bf2f

    invoke-static {v14, v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    move-object/from16 v9, v36

    .end local v36    # "zIndices":Ljava/util/Map;
    .local v9, "zIndices":Ljava/util/Map;
    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .local v0, "invalid$iv":Z
    move-object v3, v14

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 889
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 890
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_50

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_4f

    goto :goto_3b

    .line 894
    :cond_4f
    move-object v7, v5

    goto :goto_3c

    .line 891
    :cond_50
    :goto_3b
    const/4 v7, 0x0

    .line 700
    .local v7, "$i$a$-cache-NavHostKt$NavHost$33":I
    new-instance v8, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    const/16 v18, 0x0

    move-object/from16 p4, v8

    move-object/from16 p5, v15

    move-object/from16 p6, v9

    move-object/from16 p7, v30

    move-object/from16 p8, v13

    move-object/from16 p9, v18

    invoke-direct/range {p4 .. p9}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/util/Map;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 891
    .end local v7    # "$i$a$-cache-NavHostKt$NavHost$33":I
    move-object v7, v8

    .line 892
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 893
    nop

    .line 890
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_3c
    nop

    .line 889
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 700
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v7, v14, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3d

    .line 555
    .end local v9    # "zIndices":Ljava/util/Map;
    .end local v11    # "finalEnter":Lkotlin/jvm/functions/Function1;
    .end local v12    # "transitionState":Landroidx/compose/animation/core/SeekableTransitionState;
    .end local v16    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v17    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v28    # "$dirty":I
    .end local v29    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v30    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v31    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v32    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v33    # "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    .end local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .local v0, "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .local v3, "zIndices":Ljava/util/Map;
    .local v4, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local v5, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v6, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v7, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .restart local v8    # "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    .local v15, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .local v23, "$dirty":I
    .local p3, "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_51
    move-object/from16 v31, p3

    move-object/from16 v35, v0

    move-object v9, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v32, v6

    move-object/from16 v16, v7

    move-object/from16 v33, v8

    move-object/from16 v17, v15

    move/from16 v28, v23

    const/16 v27, 0x0

    .line 700
    .end local v0    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .end local v3    # "zIndices":Ljava/util/Map;
    .end local v4    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v6    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v7    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v8    # "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    .end local v15    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v23    # "$dirty":I
    .end local p3    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v9    # "zIndices":Ljava/util/Map;
    .restart local v16    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .restart local v17    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v28    # "$dirty":I
    .restart local v29    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .restart local v30    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .restart local v31    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v32    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .restart local v33    # "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    .restart local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    :goto_3d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    const-string v1, "dialog"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 895
    .local v2, "$i$f$get":I
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 711
    .end local v0    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$get":I
    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v1, :cond_52

    move-object v3, v0

    check-cast v3, Landroidx/navigation/compose/DialogNavigator;

    goto :goto_3e

    :cond_52
    move-object/from16 v3, v27

    :goto_3e
    if-nez v3, :cond_55

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_53
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_54

    new-instance v15, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;

    move-object/from16 v18, v35

    .end local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .local v18, "currentBackStack$delegate":Landroidx/compose/runtime/State;
    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    move-object/from16 v6, v25

    move-object/from16 v7, v24

    move-object/from16 v8, v31

    move-object/from16 v19, v9

    .end local v9    # "zIndices":Ljava/util/Map;
    .local v19, "zIndices":Ljava/util/Map;
    move-object/from16 v9, p2

    move-object/from16 v23, v10

    .end local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .local v23, "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_3f

    .end local v18    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .end local v19    # "zIndices":Ljava/util/Map;
    .end local v23    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v9    # "zIndices":Ljava/util/Map;
    .restart local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    :cond_54
    move-object/from16 v19, v9

    move-object/from16 v23, v10

    move-object/from16 v18, v35

    .line 712
    .end local v9    # "zIndices":Ljava/util/Map;
    .end local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .end local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .restart local v18    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .restart local v19    # "zIndices":Ljava/util/Map;
    .restart local v23    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    :goto_3f
    return-void

    .line 711
    .end local v18    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .end local v19    # "zIndices":Ljava/util/Map;
    .end local v23    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v9    # "zIndices":Ljava/util/Map;
    .restart local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    :cond_55
    move-object/from16 v19, v9

    move-object/from16 v23, v10

    move-object/from16 v18, v35

    .line 710
    .end local v9    # "zIndices":Ljava/util/Map;
    .end local v10    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .end local v35    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .restart local v18    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .restart local v19    # "zIndices":Ljava/util/Map;
    .restart local v23    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    move-object v0, v3

    .line 715
    .local v0, "dialogNavigator":Landroidx/navigation/compose/DialogNavigator;
    const/4 v1, 0x0

    invoke-static {v0, v14, v1}, Landroidx/navigation/compose/DialogHostKt;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 716
    .end local v0    # "dialogNavigator":Landroidx/navigation/compose/DialogNavigator;
    .end local v13    # "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    .end local v16    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v17    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v18    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .end local v19    # "zIndices":Ljava/util/Map;
    .end local v20    # "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v23    # "inPredictiveBack$delegate":Landroidx/compose/runtime/MutableState;
    .end local v29    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v30    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v32    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v33    # "progress$delegate":Landroidx/compose/runtime/MutableFloatState;
    :cond_56
    move-object/from16 v12, p2

    .end local p2    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v12, "sizeTransform":Lkotlin/jvm/functions/Function1;
    :goto_40
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_57

    new-instance v15, Landroidx/navigation/compose/NavHostKt$NavHost$34;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    move-object/from16 v6, v25

    move-object/from16 v7, v24

    move-object/from16 v8, v31

    move-object v9, v12

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$34;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_57
    return-void

    .line 495
    .end local v12    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .end local v24    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v25    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v26    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local v28    # "$dirty":I
    .end local v31    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v4, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .local v5, "$dirty":I
    .local v6, "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v7, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v9, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v10, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_58
    const/4 v0, 0x0

    .line 496
    .local v0, "$i$a$-checkNotNull-NavHostKt$NavHost$viewModelStoreOwner$1":I
    nop

    .line 495
    .end local v0    # "$i$a$-checkNotNull-NavHostKt$NavHost$viewModelStoreOwner$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/Object;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "route"    # Lkotlin/reflect/KClass;
    .param p5, "typeMap"    # Ljava/util/Map;
    .param p6, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p9, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p10, "sizeTransform"    # Lkotlin/jvm/functions/Function1;
    .param p11, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 355
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p11

    move/from16 v12, p13

    move/from16 v11, p15

    const v0, -0x57fa4371

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,10,4,1,8,11,2,3,6,7,9)357@14555L135,355@14515L352:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    move/from16 v2, p14

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v12, 0x180

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    and-int/lit8 v9, v11, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v12, 0xc00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v5, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v5, v12, 0x6000

    if-nez v5, :cond_e

    move-object/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v1, v1, v18

    goto :goto_9

    :cond_e
    move-object/from16 v5, p4

    :goto_9
    and-int/lit8 v18, v11, 0x20

    const/high16 v19, 0x30000

    if-eqz v18, :cond_f

    or-int v1, v1, v19

    move-object/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int v19, v12, v19

    if-nez v19, :cond_11

    move-object/from16 v6, p5

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_11
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v20, v11, 0x40

    const/high16 v21, 0x180000

    if-eqz v20, :cond_12

    or-int v1, v1, v21

    move-object/from16 v7, p6

    goto :goto_d

    :cond_12
    and-int v21, v12, v21

    if-nez v21, :cond_14

    move-object/from16 v7, p6

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x80000

    :goto_c
    or-int v1, v1, v22

    goto :goto_d

    :cond_14
    move-object/from16 v7, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v23, 0xc00000

    if-eqz v0, :cond_15

    or-int v1, v1, v23

    move-object/from16 v4, p7

    goto :goto_f

    :cond_15
    and-int v23, v12, v23

    if-nez v23, :cond_17

    move-object/from16 v4, p7

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v23, 0x400000

    :goto_e
    or-int v1, v1, v23

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    const/high16 v23, 0x6000000

    and-int v23, v12, v23

    if-nez v23, :cond_1a

    and-int/lit16 v4, v11, 0x100

    if-nez v4, :cond_18

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    const/high16 v23, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v4, p8

    :cond_19
    const/high16 v23, 0x2000000

    :goto_10
    or-int v1, v1, v23

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    const/high16 v23, 0x30000000

    and-int v23, v12, v23

    if-nez v23, :cond_1d

    and-int/lit16 v4, v11, 0x200

    if-nez v4, :cond_1b

    move-object/from16 v4, p9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/high16 v23, 0x20000000

    goto :goto_12

    :cond_1b
    move-object/from16 v4, p9

    :cond_1c
    const/high16 v23, 0x10000000

    :goto_12
    or-int v1, v1, v23

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p9

    :goto_13
    and-int/lit16 v4, v11, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v5, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v23, p14, 0x6

    if-nez v23, :cond_20

    move-object/from16 v5, p10

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v17, 0x4

    goto :goto_14

    :cond_1f
    const/16 v17, 0x2

    :goto_14
    or-int v2, v2, v17

    goto :goto_15

    :cond_20
    move-object/from16 v5, p10

    :goto_15
    and-int/lit16 v5, v11, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v2, v2, 0x30

    goto :goto_17

    :cond_21
    and-int/lit8 v5, p14, 0x30

    if-nez v5, :cond_23

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v19, 0x20

    goto :goto_16

    :cond_22
    const/16 v19, 0x10

    :goto_16
    or-int v2, v2, v19

    :cond_23
    :goto_17
    move v5, v2

    .end local v2    # "$dirty1":I
    .local v5, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v6, 0x12492492

    if-ne v2, v6, :cond_25

    and-int/lit8 v2, v5, 0x13

    const/16 v6, 0x12

    if-ne v2, v6, :cond_25

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_18

    .line 369
    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, p3

    move-object/from16 v28, p4

    move-object/from16 v27, p5

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move/from16 v26, v1

    move/from16 v25, v5

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v29, v10

    goto/16 :goto_25

    .line 355
    :cond_25
    :goto_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v12, 0x1

    const v6, -0x70000001

    const v17, -0xe000001

    if-eqz v2, :cond_29

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_19

    .line 353
    :cond_26
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_27

    and-int v1, v1, v17

    :cond_27
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_28

    and-int v0, v1, v6

    move-object/from16 v17, p3

    move-object/from16 v9, p4

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v8, p5

    move v7, v0

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_21

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_28
    move-object/from16 v17, p3

    move-object/from16 v9, p4

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v8, p5

    move v7, v1

    goto/16 :goto_21

    .line 355
    :cond_29
    :goto_19
    if-eqz v3, :cond_2a

    .line 326
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1a

    .line 355
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2a
    move-object v2, v8

    .line 326
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1a
    if-eqz v9, :cond_2b

    .line 327
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v3, "contentAlignment":Landroidx/compose/ui/Alignment;
    goto :goto_1b

    .line 326
    .end local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_2b
    move-object/from16 v3, p3

    .line 327
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_1b
    if-eqz v16, :cond_2c

    .line 328
    const/4 v8, 0x0

    .end local p4    # "route":Lkotlin/reflect/KClass;
    .local v8, "route":Lkotlin/reflect/KClass;
    goto :goto_1c

    .line 327
    .end local v8    # "route":Lkotlin/reflect/KClass;
    .restart local p4    # "route":Lkotlin/reflect/KClass;
    :cond_2c
    move-object/from16 v8, p4

    .line 328
    .end local p4    # "route":Lkotlin/reflect/KClass;
    .restart local v8    # "route":Lkotlin/reflect/KClass;
    :goto_1c
    if-eqz v18, :cond_2d

    .line 329
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .end local p5    # "typeMap":Ljava/util/Map;
    .local v9, "typeMap":Ljava/util/Map;
    goto :goto_1d

    .line 328
    .end local v9    # "typeMap":Ljava/util/Map;
    .restart local p5    # "typeMap":Ljava/util/Map;
    :cond_2d
    move-object/from16 v9, p5

    .line 329
    .end local p5    # "typeMap":Ljava/util/Map;
    .restart local v9    # "typeMap":Ljava/util/Map;
    :goto_1d
    if-eqz v20, :cond_2e

    .line 333
    sget-object v16, Landroidx/navigation/compose/NavHostKt$NavHost$15;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$15;

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .end local p6    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v7, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2e
    if-eqz v0, :cond_2f

    .line 339
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$16;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$16;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p7    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v0, "exitTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_1e

    .line 333
    .end local v0    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_2f
    move-object/from16 v0, p7

    .line 339
    .end local p7    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v0    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :goto_1e
    and-int/lit16 v6, v11, 0x100

    if-eqz v6, :cond_30

    .line 345
    move-object v6, v7

    .end local p8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v6, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v17

    goto :goto_1f

    .line 339
    .end local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_30
    move-object/from16 v6, p8

    .line 345
    .end local p8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_1f
    move-object/from16 p2, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    and-int/lit16 v2, v11, 0x200

    if-eqz v2, :cond_31

    .line 349
    move-object v2, v0

    const v16, -0x70000001

    .end local p9    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popExitTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v16

    goto :goto_20

    .line 345
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p9    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_31
    move-object/from16 v2, p9

    .line 349
    .end local p9    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_20
    if-eqz v4, :cond_32

    .line 353
    const/4 v4, 0x0

    move-object/from16 v16, p2

    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move-object/from16 v17, v3

    move-object/from16 v24, v4

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move v7, v1

    move-object/from16 v31, v9

    move-object v9, v8

    move-object/from16 v8, v31

    .end local p10    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v4, "sizeTransform":Lkotlin/jvm/functions/Function1;
    goto :goto_21

    .line 349
    .end local v4    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p10    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    :cond_32
    move-object/from16 v16, p2

    move-object/from16 v24, p10

    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move v7, v1

    move-object/from16 v31, v9

    move-object v9, v8

    move-object/from16 v8, v31

    .line 353
    .end local v0    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$dirty":I
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v7, "$dirty":I
    .local v8, "typeMap":Ljava/util/Map;
    .local v9, "route":Lkotlin/reflect/KClass;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v18, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v19, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v20, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v23, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v24, "sizeTransform":Lkotlin/jvm/functions/Function1;
    :goto_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 355
    const-string v0, "androidx.navigation.compose.NavHost (NavHost.kt:354)"

    const v1, -0x57fa4371

    invoke-static {v1, v7, v5, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 357
    :cond_33
    nop

    .line 358
    const v0, 0x26eda7a1

    const-string v1, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int/lit8 v1, v5, 0x70

    const/16 v2, 0x20

    if-ne v1, v2, :cond_34

    const/4 v1, 0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    :goto_22
    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 795
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 796
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_36

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_35

    goto :goto_23

    .line 802
    :cond_35
    move/from16 p2, v0

    move/from16 p3, v2

    move-object v0, v3

    goto :goto_24

    .line 797
    :cond_36
    :goto_23
    const/4 v6, 0x0

    .line 359
    .local v6, "$i$a$-cache-NavHostKt$NavHost$17":I
    move-object/from16 v21, v15

    check-cast v21, Landroidx/navigation/NavController;

    .local v21, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/16 v22, 0x0

    .line 798
    .local v22, "$i$f$createGraph":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v25, 0x0

    .line 799
    .local v25, "$i$f$navigation":I
    move/from16 p3, v2

    .end local v2    # "$i$f$cache":I
    .local p3, "$i$f$cache":I
    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v14, v9, v8}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {v13, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 798
    .end local v0    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v25    # "$i$f$navigation":I
    nop

    .line 359
    .end local v21    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v22    # "$i$f$createGraph":I
    nop

    .line 797
    .end local v6    # "$i$a$-cache-NavHostKt$NavHost$17":I
    nop

    .line 800
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 801
    nop

    .line 796
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_24
    nop

    .line 795
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 358
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "invalid$iv":Z
    .end local p3    # "$i$f$cache":I
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    and-int/lit8 v0, v7, 0xe

    and-int/lit16 v2, v7, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v7, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v7, 0x6

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v7, 0x6

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v7, 0x6

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    shr-int/lit8 v3, v7, 0x6

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, v5, 0x18

    const/high16 v3, 0xe000000

    and-int/2addr v2, v3

    or-int v21, v0, v2

    .line 356
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v25, v5

    .end local v5    # "$dirty1":I
    .local v25, "$dirty1":I
    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v26, v7

    .end local v7    # "$dirty":I
    .local v26, "$dirty":I
    move-object/from16 v7, v23

    move-object/from16 v27, v8

    .end local v8    # "typeMap":Ljava/util/Map;
    .local v27, "typeMap":Ljava/util/Map;
    move-object/from16 v8, v24

    move-object/from16 v28, v9

    .end local v9    # "route":Lkotlin/reflect/KClass;
    .local v28, "route":Lkotlin/reflect/KClass;
    move-object v9, v10

    move-object/from16 v29, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, v21

    move/from16 v11, v22

    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 369
    :cond_37
    :goto_25
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_38

    new-instance v21, Landroidx/navigation/compose/NavHostKt$NavHost$18;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v28

    move-object/from16 v6, v27

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object/from16 v30, v11

    move-object/from16 v11, v24

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/navigation/compose/NavHostKt$NavHost$18;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_38
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "route"    # Ljava/lang/String;
    .param p5, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p9, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports sizeTransform"
    .end annotation

    .line 143
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p9

    move/from16 v12, p11

    move/from16 v11, p12

    const v0, 0x1876b5e3

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,9,4,1,8,2,3,6,7)145@6005L126,143@5965L320:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v12, 0x180

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v5, v11, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_b

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    and-int/lit8 v7, v11, 0x10

    if-eqz v7, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v9, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v9, v12, 0x6000

    if-nez v9, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_e
    move-object/from16 v9, p4

    :goto_9
    and-int/lit8 v16, v11, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v1, v1, v17

    move-object/from16 v3, p5

    goto :goto_b

    :cond_f
    and-int v17, v12, v17

    if-nez v17, :cond_11

    move-object/from16 v3, p5

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_11
    move-object/from16 v3, p5

    :goto_b
    and-int/lit8 v17, v11, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v1, v1, v18

    move-object/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int v18, v12, v18

    if-nez v18, :cond_14

    move-object/from16 v8, p6

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v1, v1, v19

    goto :goto_d

    :cond_14
    move-object/from16 v8, p6

    :goto_d
    const/high16 v19, 0xc00000

    and-int v19, v12, v19

    if-nez v19, :cond_17

    and-int/lit16 v0, v11, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v20, 0x400000

    :goto_e
    or-int v1, v1, v20

    goto :goto_f

    :cond_17
    move-object/from16 v0, p7

    :goto_f
    const/high16 v20, 0x6000000

    and-int v20, v12, v20

    if-nez v20, :cond_1a

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v20, 0x2000000

    :goto_10
    or-int v1, v1, v20

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p8

    :goto_11
    and-int/lit16 v0, v11, 0x200

    const/high16 v20, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v20

    goto :goto_13

    :cond_1b
    and-int v0, v12, v20

    if-nez v0, :cond_1d

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v0, 0x10000000

    :goto_12
    or-int/2addr v1, v0

    :cond_1d
    :goto_13
    const v0, 0x12492493

    and-int/2addr v0, v1

    const v3, 0x12492492

    if-ne v0, v3, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    .line 156
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v21, p5

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move/from16 v25, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    move-object/from16 v26, v10

    goto/16 :goto_1d

    .line 143
    :cond_1f
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v3, -0xe000001

    const v21, -0x1c00001

    if-eqz v0, :cond_23

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_15

    .line 141
    :cond_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_21

    and-int v1, v1, v21

    :cond_21
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_22

    and-int v0, v1, v3

    move-object/from16 v21, p5

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move v8, v0

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_18

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_22
    move-object/from16 v21, p5

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move v8, v1

    goto :goto_18

    .line 143
    :cond_23
    :goto_15
    if-eqz v2, :cond_24

    .line 129
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v4, v0

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :cond_24
    if-eqz v5, :cond_25

    .line 130
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    move-object v6, v0

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v6, "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_25
    if-eqz v7, :cond_26

    .line 131
    const/4 v0, 0x0

    move-object v9, v0

    .end local p4    # "route":Ljava/lang/String;
    .local v9, "route":Ljava/lang/String;
    :cond_26
    if-eqz v16, :cond_27

    .line 132
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$3;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v0, "enterTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_16

    .line 131
    .end local v0    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_27
    move-object/from16 v0, p5

    .line 132
    .end local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v0    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :goto_16
    if-eqz v17, :cond_28

    .line 135
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$4;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$4;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v8, v2

    .end local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_28
    and-int/lit16 v2, v11, 0x80

    if-eqz v2, :cond_29

    .line 139
    move-object v2, v0

    .end local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v21

    goto :goto_17

    .line 135
    .end local v2    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_29
    move-object/from16 v2, p7

    .line 139
    .end local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_17
    and-int/lit16 v5, v11, 0x100

    if-eqz v5, :cond_2a

    .line 141
    move-object v5, v8

    .end local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v5, "popExitTransition":Lkotlin/jvm/functions/Function1;
    and-int/2addr v1, v3

    move-object/from16 v21, v0

    move-object/from16 v23, v2

    move-object/from16 v16, v4

    move-object/from16 v24, v5

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move v8, v1

    goto :goto_18

    .line 139
    .end local v5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_2a
    move-object/from16 v24, p8

    move-object/from16 v21, v0

    move-object/from16 v23, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move v8, v1

    .line 141
    .end local v0    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$dirty":I
    .end local v2    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v4    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "$dirty":I
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v21, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v22, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v23, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v24, "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 143
    const/4 v0, -0x1

    const-string v1, "androidx.navigation.compose.NavHost (NavHost.kt:142)"

    const v2, 0x1876b5e3

    invoke-static {v2, v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 145
    :cond_2b
    nop

    .line 146
    const v0, 0x26e97ad8

    const-string v1, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0xe000

    and-int/2addr v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x4000

    if-ne v0, v3, :cond_2c

    move v0, v2

    goto :goto_19

    :cond_2c
    move v0, v1

    :goto_19
    and-int/lit8 v3, v8, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2d

    move v3, v2

    goto :goto_1a

    :cond_2d
    move v3, v1

    :goto_1a
    or-int/2addr v0, v3

    const/high16 v3, 0x70000000

    and-int/2addr v3, v8

    const/high16 v4, 0x20000000

    if-ne v3, v4, :cond_2e

    move v1, v2

    :cond_2e
    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 771
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 772
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_30

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2f

    goto :goto_1b

    .line 778
    :cond_2f
    move/from16 p2, v0

    move/from16 p3, v2

    move-object v0, v3

    goto :goto_1c

    .line 773
    :cond_30
    :goto_1b
    const/4 v5, 0x0

    .line 147
    .local v5, "$i$a$-cache-NavHostKt$NavHost$5":I
    move-object v6, v13

    check-cast v6, Landroidx/navigation/NavController;

    .local v6, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/4 v7, 0x0

    .line 774
    .local v7, "$i$f$createGraph":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual {v6}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v18, 0x0

    .line 775
    .local v18, "$i$f$navigation":I
    move/from16 p3, v2

    .end local v2    # "$i$f$cache":I
    .local p3, "$i$f$cache":I
    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v14, v9}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 774
    .end local v0    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v18    # "$i$f$navigation":I
    nop

    .line 147
    .end local v6    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v7    # "$i$f$createGraph":I
    nop

    .line 773
    .end local v5    # "$i$a$-cache-NavHostKt$NavHost$5":I
    nop

    .line 776
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 777
    nop

    .line 772
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_1c
    nop

    .line 771
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 146
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "invalid$iv":Z
    .end local p3    # "$i$f$cache":I
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    and-int/lit8 v0, v8, 0xe

    and-int/lit16 v2, v8, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v8, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v2, v3

    or-int v18, v0, v2

    .line 144
    const/16 v19, 0x0

    const/16 v20, 0x100

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v25, v8

    .end local v8    # "$dirty":I
    .local v25, "$dirty":I
    move-object/from16 v8, v19

    move-object/from16 v19, v9

    .end local v9    # "route":Ljava/lang/String;
    .local v19, "route":Ljava/lang/String;
    move-object v9, v10

    move-object/from16 v26, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, v18

    move/from16 v11, v20

    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 156
    :cond_31
    :goto_1d
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_32

    new-instance v18, Landroidx/navigation/compose/NavHostKt$NavHost$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, p9

    move-object v13, v11

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt$NavHost$6;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_32
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 29
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "route"    # Ljava/lang/String;
    .param p5, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p9, "sizeTransform"    # Lkotlin/jvm/functions/Function1;
    .param p10, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 211
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p10

    move/from16 v12, p12

    move/from16 v11, p14

    const v0, 0x6daffdb6

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,10,4,1,8,2,3,6,7,9)213@8656L126,211@8616L343:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    move/from16 v2, p13

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    move-object/from16 v9, p3

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_b
    move-object/from16 v9, p3

    :goto_7
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v6, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_e

    move-object/from16 v6, p4

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v1, v1, v18

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v18, v11, 0x20

    const/high16 v19, 0x30000

    if-eqz v18, :cond_f

    or-int v1, v1, v19

    move-object/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v19, v12, v19

    if-nez v19, :cond_11

    move-object/from16 v4, p5

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_11
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v20, v11, 0x40

    const/high16 v21, 0x180000

    if-eqz v20, :cond_12

    or-int v1, v1, v21

    move-object/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v21, v12, v21

    if-nez v21, :cond_14

    move-object/from16 v0, p6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x80000

    :goto_c
    or-int v1, v1, v22

    goto :goto_d

    :cond_14
    move-object/from16 v0, p6

    :goto_d
    const/high16 v22, 0xc00000

    and-int v22, v12, v22

    if-nez v22, :cond_17

    and-int/lit16 v5, v11, 0x80

    if-nez v5, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v23, 0x400000

    :goto_e
    or-int v1, v1, v23

    goto :goto_f

    :cond_17
    move-object/from16 v5, p7

    :goto_f
    const/high16 v23, 0x6000000

    and-int v23, v12, v23

    if-nez v23, :cond_1a

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    const/high16 v23, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v23, 0x2000000

    :goto_10
    or-int v1, v1, v23

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p8

    :goto_11
    and-int/lit16 v0, v11, 0x200

    const/high16 v23, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v23

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1b
    and-int v23, v12, v23

    if-nez v23, :cond_1d

    move-object/from16 v4, p9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/high16 v23, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v23, 0x10000000

    :goto_12
    or-int v1, v1, v23

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p9

    :goto_13
    and-int/lit16 v4, v11, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v2, v2, 0x6

    goto :goto_15

    :cond_1e
    and-int/lit8 v4, p13, 0x6

    if-nez v4, :cond_20

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x4

    goto :goto_14

    :cond_1f
    const/4 v4, 0x2

    :goto_14
    or-int/2addr v2, v4

    :cond_20
    :goto_15
    move v4, v2

    .end local v2    # "$dirty1":I
    .local v4, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v5, 0x12492492

    if-ne v2, v5, :cond_22

    and-int/lit8 v2, v4, 0x3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_22

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_16

    .line 225
    :cond_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v20, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move/from16 v26, v1

    move/from16 v21, v4

    move-object/from16 v27, v6

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move-object/from16 v28, v10

    goto/16 :goto_23

    .line 211
    :cond_22
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v12, 0x1

    const v5, -0xe000001

    const v22, -0x1c00001

    if-eqz v2, :cond_26

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_17

    .line 209
    :cond_23
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_24

    and-int v1, v1, v22

    :cond_24
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_25

    and-int v0, v1, v5

    move-object/from16 v20, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move v8, v0

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move-object v9, v6

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1e

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_25
    move-object/from16 v20, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move v8, v1

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move-object v9, v6

    goto/16 :goto_1e

    .line 211
    :cond_26
    :goto_17
    if-eqz v3, :cond_27

    .line 183
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_18

    .line 211
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object v2, v7

    .line 183
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    if-eqz v8, :cond_28

    .line 184
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v3, "contentAlignment":Landroidx/compose/ui/Alignment;
    goto :goto_19

    .line 183
    .end local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_28
    move-object v3, v9

    .line 184
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_19
    if-eqz v16, :cond_29

    .line 185
    const/4 v6, 0x0

    .end local p4    # "route":Ljava/lang/String;
    .local v6, "route":Ljava/lang/String;
    :cond_29
    if-eqz v18, :cond_2a

    .line 189
    sget-object v7, Landroidx/navigation/compose/NavHostKt$NavHost$7;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$7;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .end local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v7, "enterTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_1a

    .line 185
    .end local v7    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2a
    move-object/from16 v7, p5

    .line 189
    .end local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :goto_1a
    if-eqz v20, :cond_2b

    .line 195
    sget-object v8, Landroidx/navigation/compose/NavHostKt$NavHost$8;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$8;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .end local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "exitTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_1b

    .line 189
    .end local v8    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_2b
    move-object/from16 v8, p6

    .line 195
    .end local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :goto_1b
    and-int/lit16 v9, v11, 0x80

    if-eqz v9, :cond_2c

    .line 201
    move-object v9, v7

    .end local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v9, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v22

    goto :goto_1c

    .line 195
    .end local v9    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2c
    move-object/from16 v9, p7

    .line 201
    .end local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v9    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_1c
    and-int/lit16 v5, v11, 0x100

    if-eqz v5, :cond_2d

    .line 205
    move-object v5, v8

    const v16, -0xe000001

    .end local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v5, "popExitTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v16

    goto :goto_1d

    .line 201
    .end local v5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_2d
    move-object/from16 v5, p8

    .line 205
    .end local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_1d
    if-eqz v0, :cond_2e

    .line 209
    const/4 v0, 0x0

    move-object/from16 v25, v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v24, v5

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move v8, v1

    move-object v9, v6

    .end local p9    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v0, "sizeTransform":Lkotlin/jvm/functions/Function1;
    goto :goto_1e

    .line 205
    .end local v0    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p9    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    :cond_2e
    move-object/from16 v25, p9

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v24, v5

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move v8, v1

    move-object v9, v6

    .line 209
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local v5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v6    # "route":Ljava/lang/String;
    .end local v7    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local p9    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v8, "$dirty":I
    .local v9, "route":Ljava/lang/String;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v20, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v22, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v23, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v24, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v25, "sizeTransform":Lkotlin/jvm/functions/Function1;
    :goto_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 211
    const-string v0, "androidx.navigation.compose.NavHost (NavHost.kt:210)"

    const v1, 0x6daffdb6

    invoke-static {v1, v8, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 213
    :cond_2f
    nop

    .line 214
    const v0, 0x26eac638

    const-string v1, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0xe000

    and-int/2addr v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x4000

    if-ne v0, v3, :cond_30

    move v0, v2

    goto :goto_1f

    :cond_30
    move v0, v1

    :goto_1f
    and-int/lit8 v3, v8, 0x70

    const/16 v5, 0x20

    if-ne v3, v5, :cond_31

    move v3, v2

    goto :goto_20

    :cond_31
    move v3, v1

    :goto_20
    or-int/2addr v0, v3

    and-int/lit8 v3, v4, 0xe

    const/4 v5, 0x4

    if-ne v3, v5, :cond_32

    move v1, v2

    :cond_32
    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 779
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 780
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_34

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_33

    goto :goto_21

    .line 786
    :cond_33
    move/from16 p2, v0

    move/from16 p3, v2

    move-object v0, v3

    goto :goto_22

    .line 781
    :cond_34
    :goto_21
    const/4 v6, 0x0

    .line 215
    .local v6, "$i$a$-cache-NavHostKt$NavHost$9":I
    move-object v7, v15

    check-cast v7, Landroidx/navigation/NavController;

    .local v7, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/16 v17, 0x0

    .line 782
    .local v17, "$i$f$createGraph":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual {v7}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v19, 0x0

    .line 783
    .local v19, "$i$f$navigation":I
    move/from16 p3, v2

    .end local v2    # "$i$f$cache":I
    .local p3, "$i$f$cache":I
    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v14, v9}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 782
    .end local v0    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v19    # "$i$f$navigation":I
    nop

    .line 215
    .end local v7    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v17    # "$i$f$createGraph":I
    nop

    .line 781
    .end local v6    # "$i$a$-cache-NavHostKt$NavHost$9":I
    nop

    .line 784
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 785
    nop

    .line 780
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 779
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 214
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "invalid$iv":Z
    .end local p3    # "$i$f$cache":I
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    and-int/lit8 v0, v8, 0xe

    and-int/lit16 v2, v8, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v8, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x3

    const/high16 v3, 0x1c00000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v2, v3

    or-int v17, v0, v2

    .line 212
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move/from16 v21, v4

    .end local v4    # "$dirty1":I
    .local v21, "$dirty1":I
    move-object/from16 v4, v20

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v26, v8

    .end local v8    # "$dirty":I
    .local v26, "$dirty":I
    move-object/from16 v8, v25

    move-object/from16 v27, v9

    .end local v9    # "route":Ljava/lang/String;
    .local v27, "route":Ljava/lang/String;
    move-object v9, v10

    move-object/from16 v28, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, v17

    move/from16 v11, v19

    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 225
    :cond_35
    :goto_23
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_36

    new-instance v17, Landroidx/navigation/compose/NavHostKt$NavHost$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v27

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v15, v11

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/navigation/compose/NavHostKt$NavHost$10;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_36
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "route"    # Ljava/lang/String;
    .param p4, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports AnimatedContent"
    .end annotation

    .line 91
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move/from16 v15, p6

    const v0, 0x8741dc0

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(2,4,1,3)93@3780L126,91@3740L190:NavHost.kt#opm8kd"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p7, 0x2

    const/16 v3, 0x20

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v15, 0x30

    if-nez v2, :cond_5

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v15, 0x180

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v5, p7, 0x8

    const/16 v6, 0x800

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v15, 0xc00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v6

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, p7, 0x10

    const/16 v9, 0x4000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move v8, v9

    goto :goto_8

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    :cond_e
    :goto_9
    move v10, v1

    .end local v1    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit16 v1, v10, 0x2493

    const/16 v8, 0x2492

    if-ne v1, v8, :cond_10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 99
    :cond_f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    move/from16 v20, v10

    move-object/from16 v17, v11

    goto/16 :goto_11

    .line 91
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 88
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_b

    .line 91
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move-object/from16 v16, v4

    .line 88
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_b
    if-eqz v5, :cond_12

    .line 89
    const/4 v1, 0x0

    move-object v8, v1

    .end local p3    # "route":Ljava/lang/String;
    .local v1, "route":Ljava/lang/String;
    goto :goto_c

    .line 88
    .end local v1    # "route":Ljava/lang/String;
    .restart local p3    # "route":Ljava/lang/String;
    :cond_12
    move-object v8, v7

    .line 89
    .end local p3    # "route":Ljava/lang/String;
    .local v8, "route":Ljava/lang/String;
    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 91
    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.NavHost (NavHost.kt:90)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 93
    :cond_13
    nop

    .line 94
    const v0, 0x26e864b8

    const-string v1, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v0, v10, 0x1c00

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v6, :cond_14

    move v0, v2

    goto :goto_d

    :cond_14
    move v0, v1

    :goto_d
    and-int/lit8 v4, v10, 0x70

    if-ne v4, v3, :cond_15

    move v3, v2

    goto :goto_e

    :cond_15
    move v3, v1

    :goto_e
    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v10

    if-ne v3, v9, :cond_16

    move v1, v2

    :cond_16
    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v11

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 763
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 764
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_18

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_17

    goto :goto_f

    .line 770
    :cond_17
    move/from16 p2, v0

    move-object v0, v3

    goto :goto_10

    .line 765
    :cond_18
    :goto_f
    const/4 v5, 0x0

    .line 95
    .local v5, "$i$a$-cache-NavHostKt$NavHost$1":I
    move-object v6, v12

    check-cast v6, Landroidx/navigation/NavController;

    .local v6, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/4 v7, 0x0

    .line 766
    .local v7, "$i$f$createGraph":I
    invoke-virtual {v6}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v9

    .local v9, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v17, 0x0

    .line 767
    .local v17, "$i$f$navigation":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v0, v9, v13, v8}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 766
    .end local v9    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v17    # "$i$f$navigation":I
    nop

    .line 95
    .end local v6    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v7    # "$i$f$createGraph":I
    nop

    .line 765
    .end local v5    # "$i$a$-cache-NavHostKt$NavHost$1":I
    nop

    .line 768
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 769
    nop

    .line 764
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_10
    nop

    .line 763
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 94
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 97
    and-int/lit8 v0, v10, 0xe

    and-int/lit16 v2, v10, 0x380

    or-int v17, v0, v2

    .line 92
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1f8

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v19, v8

    .end local v8    # "route":Ljava/lang/String;
    .local v19, "route":Ljava/lang/String;
    move-object v8, v9

    move-object v9, v11

    move/from16 v20, v10

    .end local v10    # "$dirty":I
    .local v20, "$dirty":I
    move/from16 v10, v17

    move-object/from16 v17, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, v18

    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 99
    :cond_19
    :goto_11
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1a

    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$2;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;II)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Lkotlin/reflect/KClass;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "route"    # Lkotlin/reflect/KClass;
    .param p5, "typeMap"    # Ljava/util/Map;
    .param p6, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p9, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p10, "sizeTransform"    # Lkotlin/jvm/functions/Function1;
    .param p11, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 283
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p11

    move/from16 v12, p13

    move/from16 v11, p15

    const v0, 0x2cbb3aae

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,10,4,1,8,11,2,3,6,7,9)285@11603L135,283@11563L352:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    move/from16 v2, p14

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v12, 0x180

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    and-int/lit8 v9, v11, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v12, 0xc00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v5, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v5, v12, 0x6000

    if-nez v5, :cond_e

    move-object/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v1, v1, v18

    goto :goto_9

    :cond_e
    move-object/from16 v5, p4

    :goto_9
    and-int/lit8 v18, v11, 0x20

    const/high16 v19, 0x30000

    if-eqz v18, :cond_f

    or-int v1, v1, v19

    move-object/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int v19, v12, v19

    if-nez v19, :cond_11

    move-object/from16 v6, p5

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_11
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v20, v11, 0x40

    const/high16 v21, 0x180000

    if-eqz v20, :cond_12

    or-int v1, v1, v21

    move-object/from16 v7, p6

    goto :goto_d

    :cond_12
    and-int v21, v12, v21

    if-nez v21, :cond_14

    move-object/from16 v7, p6

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x80000

    :goto_c
    or-int v1, v1, v22

    goto :goto_d

    :cond_14
    move-object/from16 v7, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v23, 0xc00000

    if-eqz v0, :cond_15

    or-int v1, v1, v23

    move-object/from16 v4, p7

    goto :goto_f

    :cond_15
    and-int v23, v12, v23

    if-nez v23, :cond_17

    move-object/from16 v4, p7

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v23, 0x400000

    :goto_e
    or-int v1, v1, v23

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    const/high16 v23, 0x6000000

    and-int v23, v12, v23

    if-nez v23, :cond_1a

    and-int/lit16 v4, v11, 0x100

    if-nez v4, :cond_18

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    const/high16 v23, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v4, p8

    :cond_19
    const/high16 v23, 0x2000000

    :goto_10
    or-int v1, v1, v23

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    const/high16 v23, 0x30000000

    and-int v23, v12, v23

    if-nez v23, :cond_1d

    and-int/lit16 v4, v11, 0x200

    if-nez v4, :cond_1b

    move-object/from16 v4, p9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/high16 v23, 0x20000000

    goto :goto_12

    :cond_1b
    move-object/from16 v4, p9

    :cond_1c
    const/high16 v23, 0x10000000

    :goto_12
    or-int v1, v1, v23

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p9

    :goto_13
    and-int/lit16 v4, v11, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v5, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v23, p14, 0x6

    if-nez v23, :cond_20

    move-object/from16 v5, p10

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v17, 0x4

    goto :goto_14

    :cond_1f
    const/16 v17, 0x2

    :goto_14
    or-int v2, v2, v17

    goto :goto_15

    :cond_20
    move-object/from16 v5, p10

    :goto_15
    and-int/lit16 v5, v11, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v2, v2, 0x30

    goto :goto_17

    :cond_21
    and-int/lit8 v5, p14, 0x30

    if-nez v5, :cond_23

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v19, 0x20

    goto :goto_16

    :cond_22
    const/16 v19, 0x10

    :goto_16
    or-int v2, v2, v19

    :cond_23
    :goto_17
    move v5, v2

    .end local v2    # "$dirty1":I
    .local v5, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v6, 0x12492492

    if-ne v2, v6, :cond_25

    and-int/lit8 v2, v5, 0x13

    const/16 v6, 0x12

    if-ne v2, v6, :cond_25

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_18

    .line 297
    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, p3

    move-object/from16 v28, p4

    move-object/from16 v27, p5

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move/from16 v26, v1

    move/from16 v25, v5

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v29, v10

    goto/16 :goto_25

    .line 283
    :cond_25
    :goto_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v12, 0x1

    const v6, -0x70000001

    const v17, -0xe000001

    if-eqz v2, :cond_29

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_19

    .line 281
    :cond_26
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_27

    and-int v1, v1, v17

    :cond_27
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_28

    and-int v0, v1, v6

    move-object/from16 v17, p3

    move-object/from16 v9, p4

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v8, p5

    move v7, v0

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_21

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_28
    move-object/from16 v17, p3

    move-object/from16 v9, p4

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v8, p5

    move v7, v1

    goto/16 :goto_21

    .line 283
    :cond_29
    :goto_19
    if-eqz v3, :cond_2a

    .line 254
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1a

    .line 283
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2a
    move-object v2, v8

    .line 254
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1a
    if-eqz v9, :cond_2b

    .line 255
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v3, "contentAlignment":Landroidx/compose/ui/Alignment;
    goto :goto_1b

    .line 254
    .end local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_2b
    move-object/from16 v3, p3

    .line 255
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_1b
    if-eqz v16, :cond_2c

    .line 256
    const/4 v8, 0x0

    .end local p4    # "route":Lkotlin/reflect/KClass;
    .local v8, "route":Lkotlin/reflect/KClass;
    goto :goto_1c

    .line 255
    .end local v8    # "route":Lkotlin/reflect/KClass;
    .restart local p4    # "route":Lkotlin/reflect/KClass;
    :cond_2c
    move-object/from16 v8, p4

    .line 256
    .end local p4    # "route":Lkotlin/reflect/KClass;
    .restart local v8    # "route":Lkotlin/reflect/KClass;
    :goto_1c
    if-eqz v18, :cond_2d

    .line 257
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .end local p5    # "typeMap":Ljava/util/Map;
    .local v9, "typeMap":Ljava/util/Map;
    goto :goto_1d

    .line 256
    .end local v9    # "typeMap":Ljava/util/Map;
    .restart local p5    # "typeMap":Ljava/util/Map;
    :cond_2d
    move-object/from16 v9, p5

    .line 257
    .end local p5    # "typeMap":Ljava/util/Map;
    .restart local v9    # "typeMap":Ljava/util/Map;
    :goto_1d
    if-eqz v20, :cond_2e

    .line 261
    sget-object v16, Landroidx/navigation/compose/NavHostKt$NavHost$11;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$11;

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .end local p6    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v7, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2e
    if-eqz v0, :cond_2f

    .line 267
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$12;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$12;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .end local p7    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v0, "exitTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_1e

    .line 261
    .end local v0    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_2f
    move-object/from16 v0, p7

    .line 267
    .end local p7    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v0    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :goto_1e
    and-int/lit16 v6, v11, 0x100

    if-eqz v6, :cond_30

    .line 273
    move-object v6, v7

    .end local p8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v6, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v17

    goto :goto_1f

    .line 267
    .end local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_30
    move-object/from16 v6, p8

    .line 273
    .end local p8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_1f
    move-object/from16 p2, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    and-int/lit16 v2, v11, 0x200

    if-eqz v2, :cond_31

    .line 277
    move-object v2, v0

    const v16, -0x70000001

    .end local p9    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popExitTransition":Lkotlin/jvm/functions/Function1;
    and-int v1, v1, v16

    goto :goto_20

    .line 273
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p9    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_31
    move-object/from16 v2, p9

    .line 277
    .end local p9    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_20
    if-eqz v4, :cond_32

    .line 281
    const/4 v4, 0x0

    move-object/from16 v16, p2

    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move-object/from16 v17, v3

    move-object/from16 v24, v4

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move v7, v1

    move-object/from16 v31, v9

    move-object v9, v8

    move-object/from16 v8, v31

    .end local p10    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v4, "sizeTransform":Lkotlin/jvm/functions/Function1;
    goto :goto_21

    .line 277
    .end local v4    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .restart local p10    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    :cond_32
    move-object/from16 v16, p2

    move-object/from16 v24, p10

    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move v7, v1

    move-object/from16 v31, v9

    move-object v9, v8

    move-object/from16 v8, v31

    .line 281
    .end local v0    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$dirty":I
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local v6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "sizeTransform":Lkotlin/jvm/functions/Function1;
    .local v7, "$dirty":I
    .local v8, "typeMap":Ljava/util/Map;
    .local v9, "route":Lkotlin/reflect/KClass;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v18, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v19, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v20, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v23, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v24, "sizeTransform":Lkotlin/jvm/functions/Function1;
    :goto_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 283
    const-string v0, "androidx.navigation.compose.NavHost (NavHost.kt:282)"

    const v1, 0x2cbb3aae

    invoke-static {v1, v7, v5, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 285
    :cond_33
    nop

    .line 286
    const v0, 0x26ec36a1

    const-string v1, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int/lit8 v1, v5, 0x70

    const/16 v2, 0x20

    if-ne v1, v2, :cond_34

    const/4 v1, 0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    :goto_22
    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 787
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 788
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_36

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_35

    goto :goto_23

    .line 794
    :cond_35
    move/from16 p2, v0

    move/from16 p3, v2

    move-object v0, v3

    goto :goto_24

    .line 789
    :cond_36
    :goto_23
    const/4 v6, 0x0

    .line 287
    .local v6, "$i$a$-cache-NavHostKt$NavHost$13":I
    move-object/from16 v21, v15

    check-cast v21, Landroidx/navigation/NavController;

    .local v21, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/16 v22, 0x0

    .line 790
    .local v22, "$i$f$createGraph":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v25, 0x0

    .line 791
    .local v25, "$i$f$navigation":I
    move/from16 p3, v2

    .end local v2    # "$i$f$cache":I
    .local p3, "$i$f$cache":I
    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v14, v9, v8}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {v13, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 790
    .end local v0    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v25    # "$i$f$navigation":I
    nop

    .line 287
    .end local v21    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v22    # "$i$f$createGraph":I
    nop

    .line 789
    .end local v6    # "$i$a$-cache-NavHostKt$NavHost$13":I
    nop

    .line 792
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 793
    nop

    .line 788
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_24
    nop

    .line 787
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 286
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "invalid$iv":Z
    .end local p3    # "$i$f$cache":I
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    and-int/lit8 v0, v7, 0xe

    and-int/lit16 v2, v7, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v7, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v7, 0x6

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v7, 0x6

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v7, 0x6

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    shr-int/lit8 v3, v7, 0x6

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, v5, 0x18

    const/high16 v3, 0xe000000

    and-int/2addr v2, v3

    or-int v21, v0, v2

    .line 284
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v25, v5

    .end local v5    # "$dirty1":I
    .local v25, "$dirty1":I
    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v26, v7

    .end local v7    # "$dirty":I
    .local v26, "$dirty":I
    move-object/from16 v7, v23

    move-object/from16 v27, v8

    .end local v8    # "typeMap":Ljava/util/Map;
    .local v27, "typeMap":Ljava/util/Map;
    move-object/from16 v8, v24

    move-object/from16 v28, v9

    .end local v9    # "route":Lkotlin/reflect/KClass;
    .local v28, "route":Lkotlin/reflect/KClass;
    move-object v9, v10

    move-object/from16 v29, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, v21

    move/from16 v11, v22

    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 297
    :cond_37
    :goto_25
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_38

    new-instance v21, Landroidx/navigation/compose/NavHostKt$NavHost$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v28

    move-object/from16 v6, v27

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object/from16 v30, v11

    move-object/from16 v11, v24

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/navigation/compose/NavHostKt$NavHost$14;-><init>(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_38
    return-void
.end method

.method private static final NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$inPredictiveBack$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 513
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 900
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 513
    return v0
.end method

.method private static final NavHost$lambda$12(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$inPredictiveBack$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 513
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 901
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 902
    nop

    .line 513
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private static final NavHost$lambda$15(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$allVisibleEntries$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 903
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 540
    return-object v0
.end method

.method private static final NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$visibleEntries$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 904
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 543
    return-object v0
.end method

.method private static final NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$currentBackStack$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 510
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 896
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 510
    return-object v0
.end method

.method private static final NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 4
    .param p0, "$progress$delegate"    # Landroidx/compose/runtime/MutableFloatState;

    .line 512
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 897
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    .line 512
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final NavHost$lambda$9(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 4
    .param p0, "$progress$delegate"    # Landroidx/compose/runtime/MutableFloatState;
    .param p1, "value"    # F

    .line 512
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    const/4 v3, 0x0

    .line 898
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 899
    nop

    .line 512
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public static final synthetic access$NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z
    .locals 1
    .param p0, "$inPredictiveBack$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$NavHost$lambda$12(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$inPredictiveBack$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$12(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$NavHost$lambda$15(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 1
    .param p0, "$allVisibleEntries$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$15(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 1
    .param p0, "$visibleEntries$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 1
    .param p0, "$currentBackStack$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 1
    .param p0, "$progress$delegate"    # Landroidx/compose/runtime/MutableFloatState;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$NavHost$lambda$9(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0
    .param p0, "$progress$delegate"    # Landroidx/compose/runtime/MutableFloatState;
    .param p1, "value"    # F

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$9(Landroidx/compose/runtime/MutableFloatState;F)V

    return-void
.end method

.method public static final synthetic access$createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createSizeTransform(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/SizeTransform;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createSizeTransform(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/SizeTransform;

    move-result-object v0

    return-object v0
.end method

.method private static final createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 2
    .param p0, "$this$createEnterTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .line 721
    nop

    .line 722
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 723
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 724
    :cond_1
    nop

    .line 725
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 2
    .param p0, "$this$createExitTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .line 730
    nop

    .line 731
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 732
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 733
    :cond_1
    nop

    .line 734
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 2
    .param p0, "$this$createPopEnterTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .line 739
    nop

    .line 740
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 741
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 742
    :cond_1
    nop

    .line 743
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 2
    .param p0, "$this$createPopExitTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .line 748
    nop

    .line 749
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 750
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 751
    :cond_1
    nop

    .line 752
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createSizeTransform(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/SizeTransform;
    .locals 2
    .param p0, "$this$createSizeTransform"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/SizeTransform;"
        }
    .end annotation

    .line 757
    nop

    .line 758
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getSizeTransform$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/SizeTransform;

    goto :goto_0

    .line 759
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getSizeTransform$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/SizeTransform;

    goto :goto_0

    .line 760
    :cond_1
    nop

    .line 761
    :cond_2
    :goto_0
    return-object v1
.end method
