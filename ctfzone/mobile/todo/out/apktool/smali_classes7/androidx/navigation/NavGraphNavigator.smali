.class public Landroidx/navigation/NavGraphNavigator;
.super Landroidx/navigation/Navigator;
.source "NavGraphNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphNavigator.kt\nandroidx/navigation/NavGraphNavigator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J*\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/navigation/NavGraphNavigator;",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavGraph;",
        "navigatorProvider",
        "Landroidx/navigation/NavigatorProvider;",
        "(Landroidx/navigation/NavigatorProvider;)V",
        "backStack",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Landroidx/navigation/NavBackStackEntry;",
        "getBackStack",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "createDestination",
        "navigate",
        "",
        "entry",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "entries",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final navigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 1
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    const-string v0, "navigatorProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method

.method private final navigate(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 10
    .param p1, "entry"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 66
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 68
    .local v0, "destination":Landroidx/navigation/NavGraph;
    const/4 v1, 0x0

    .local v1, "args":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v2

    .line 70
    .local v2, "startId":I
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationRoute()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "startRoute":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_7

    .line 75
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v0, v3, v4}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object v4

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination;

    .line 75
    :goto_2
    nop

    .line 74
    nop

    .line 80
    .local v4, "startDestination":Landroidx/navigation/NavDestination;
    if-eqz v4, :cond_6

    .line 86
    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 87
    invoke-virtual {v4, v3}, Landroidx/navigation/NavDestination;->matchDeepLink(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 88
    .local v5, "matchingArgs":Landroid/os/Bundle;
    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 89
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 92
    if-eqz v1, :cond_4

    move-object v7, v1

    .line 112
    .local v7, "it":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 92
    .local v8, "$i$a$-let-NavGraphNavigator$navigate$3":I
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 93
    .end local v7    # "it":Landroid/os/Bundle;
    .end local v8    # "$i$a$-let-NavGraphNavigator$navigate$3":I
    :cond_4
    move-object v1, v6

    .line 98
    .end local v5    # "matchingArgs":Landroid/os/Bundle;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v5, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 99
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    .line 97
    nop

    .line 102
    .local v5, "navigator":Landroidx/navigation/Navigator;
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v6

    .line 103
    nop

    .line 106
    invoke-virtual {v4, v1}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 102
    invoke-virtual {v6, v4, v7}, Landroidx/navigation/NavigatorState;->createBackStackEntry(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v6

    .line 101
    nop

    .line 108
    .local v6, "startDestinationEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7, p2, p3}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 109
    return-void

    .line 80
    .end local v5    # "navigator":Landroidx/navigation/Navigator;
    .end local v6    # "startDestinationEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_6
    const/4 v5, 0x0

    .line 81
    .local v5, "$i$a$-requireNotNull-NavGraphNavigator$navigate$2":I
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "dest":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "navigation destination "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a direct child of this NavGraph"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    .end local v4    # "startDestination":Landroidx/navigation/NavDestination;
    .end local v5    # "$i$a$-requireNotNull-NavGraphNavigator$navigate$2":I
    .end local v6    # "dest":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 72
    .local v4, "$i$a$-check-NavGraphNavigator$navigate$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no start destination defined via app:startDestination for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .end local v4    # "$i$a$-check-NavGraphNavigator$navigate$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->createDestination()Landroidx/navigation/NavGraph;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public createDestination()Landroidx/navigation/NavGraph;
    .locals 2

    .line 45
    new-instance v0, Landroidx/navigation/NavGraph;

    move-object v1, p0

    check-cast v1, Landroidx/navigation/Navigator;

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final getBackStack()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 2
    .param p1, "entries"    # Ljava/util/List;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 57
    .local v1, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-direct {p0, v1, p2, p3}, Landroidx/navigation/NavGraphNavigator;->navigate(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .end local v1    # "entry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
