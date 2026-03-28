.class public Landroidx/navigation/NavGraph;
.super Landroidx/navigation/NavDestination;
.source "NavGraph.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavGraph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestination;",
        "Ljava/lang/Iterable<",
        "Landroidx/navigation/NavDestination;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 SparseArray.kt\nandroidx/collection/SparseArrayKt\n*L\n1#1,617:1\n232#2,3:618\n1603#3,9:621\n1855#3:630\n1856#3:632\n1612#3:633\n1#4:631\n1#4:634\n179#5,2:635\n1224#5,2:638\n22#6:637\n62#6,4:640\n*S KotlinDebug\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n*L\n61#1:618,3\n85#1:621,9\n85#1:630\n85#1:632\n85#1:633\n85#1:631\n262#1:635,2\n501#1:638,2\n499#1:637\n506#1:640,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 J2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00010\u0002:\u0001JB\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u001f\u0010\"\u001a\u00020\u001e2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010#\"\u00020\u0001\u00a2\u0006\u0002\u0010$J\u0016\u0010\"\u001a\u00020\u001e2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%J\u0006\u0010&\u001a\u00020\u001eJ\u0013\u0010\'\u001a\u00020(2\u0008\u0010\u001f\u001a\u0004\u0018\u00010)H\u0096\u0002J\u0013\u0010*\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010+\u0018\u0001H\u0086\u0008J\u001d\u0010*\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010+2\u0008\u0010,\u001a\u0004\u0018\u0001H+\u00a2\u0006\u0002\u0010-J\u0012\u0010*\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0001\u0010.\u001a\u00020\u0011J\u001a\u0010*\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u00072\u0006\u0010/\u001a\u00020(H\u0007J\u0012\u0010*\u001a\u0004\u0018\u00010\u00012\u0008\u0010,\u001a\u0004\u0018\u00010\u0007J&\u00100\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0001\u0010.\u001a\u00020\u00112\u0008\u00101\u001a\u0004\u0018\u00010\u00012\u0006\u00102\u001a\u00020(H\u0007J\u0008\u00103\u001a\u00020\u0011H\u0007J\u0008\u00104\u001a\u00020\u0011H\u0016J\u000f\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000106H\u0086\u0002J\u0012\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020:H\u0017J*\u0010;\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020:2\u0006\u00102\u001a\u00020(2\u0006\u0010<\u001a\u00020(2\u0006\u00101\u001a\u00020\u0001H\u0007J\u0018\u0010=\u001a\u00020\u001e2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0016J\u000e\u0010B\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u0015\u0010C\u001a\u00020\u001e\"\n\u0008\u0000\u0010+\u0018\u0001*\u00020)H\u0086\u0008J\u001d\u0010C\u001a\u00020\u001e\"\u0008\u0008\u0000\u0010+*\u00020)2\u0006\u0010\u0018\u001a\u0002H+\u00a2\u0006\u0002\u0010DJ\u000e\u0010C\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010C\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0007J0\u0010C\u001a\u00020\u001e\"\u0004\u0008\u0000\u0010+2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u0002H+0F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070HH\u0007J\u0008\u0010I\u001a\u00020\u0007H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000b8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118G@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R(\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\t\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006K"
    }
    d2 = {
        "Landroidx/navigation/NavGraph;",
        "Landroidx/navigation/NavDestination;",
        "",
        "navGraphNavigator",
        "Landroidx/navigation/Navigator;",
        "(Landroidx/navigation/Navigator;)V",
        "displayName",
        "",
        "getDisplayName",
        "()Ljava/lang/String;",
        "nodes",
        "Landroidx/collection/SparseArrayCompat;",
        "getNodes",
        "()Landroidx/collection/SparseArrayCompat;",
        "startDestDisplayName",
        "getStartDestDisplayName",
        "startDestId",
        "",
        "startDestIdName",
        "startDestinationId",
        "getStartDestinationId",
        "()I",
        "setStartDestinationId",
        "(I)V",
        "startDestRoute",
        "startDestinationRoute",
        "getStartDestinationRoute",
        "setStartDestinationRoute",
        "(Ljava/lang/String;)V",
        "addAll",
        "",
        "other",
        "addDestination",
        "node",
        "addDestinations",
        "",
        "([Landroidx/navigation/NavDestination;)V",
        "",
        "clear",
        "equals",
        "",
        "",
        "findNode",
        "T",
        "route",
        "(Ljava/lang/Object;)Landroidx/navigation/NavDestination;",
        "resId",
        "searchParents",
        "findNodeComprehensive",
        "lastVisited",
        "searchChildren",
        "getStartDestination",
        "hashCode",
        "iterator",
        "",
        "matchDeepLink",
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        "navDeepLinkRequest",
        "Landroidx/navigation/NavDeepLinkRequest;",
        "matchDeepLinkComprehensive",
        "searchParent",
        "onInflate",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "remove",
        "setStartDestination",
        "(Ljava/lang/Object;)V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "parseRoute",
        "Lkotlin/Function1;",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/navigation/NavGraph$Companion;


# instance fields
.field private final nodes:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private startDestId:I

.field private startDestIdName:Ljava/lang/String;

.field private startDestinationRoute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavGraph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .locals 4
    .param p1, "navGraphNavigator"    # Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavGraph;",
            ">;)V"
        }
    .end annotation

    const-string v0, "navGraphNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 53
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .line 50
    return-void
.end method

.method public static final findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;
    .locals 1
    .param p0, "$this$findStartDestination"    # Landroidx/navigation/NavGraph;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 521
    return-object v0
.end method

.method private final setStartDestinationId(I)V
    .locals 3
    .param p1, "startDestId"    # I

    .line 364
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0, v1}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    .line 370
    :cond_1
    iput p1, p0, Landroidx/navigation/NavGraph;->startDestId:I

    .line 371
    iput-object v1, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    .line 372
    return-void

    .line 364
    :cond_2
    const/4 v0, 0x0

    .line 365
    .local v0, "$i$a$-require-NavGraph$startDestinationId$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot use the same id as the graph "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .end local v0    # "$i$a$-require-NavGraph$startDestinationId$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final setStartDestinationRoute(Ljava/lang/String;)V
    .locals 3
    .param p1, "startDestRoute"    # Ljava/lang/String;

    .line 451
    nop

    .line 452
    if-nez p1, :cond_0

    .line 453
    const/4 v0, 0x0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "internalRoute":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 451
    .end local v0    # "internalRoute":Ljava/lang/String;
    :goto_0
    iput v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    .line 464
    iput-object p1, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    .line 465
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    .line 459
    .local v0, "$i$a$-require-NavGraph$startDestinationRoute$2":I
    nop

    .line 458
    .end local v0    # "$i$a$-require-NavGraph$startDestinationRoute$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an empty start destination route"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_2
    const/4 v0, 0x0

    .line 456
    .local v0, "$i$a$-require-NavGraph$startDestinationRoute$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot use the same route as the graph "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .end local v0    # "$i$a$-require-NavGraph$startDestinationRoute$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final addAll(Landroidx/navigation/NavGraph;)V
    .locals 2
    .param p1, "other"    # Landroidx/navigation/NavGraph;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 315
    .local v1, "destination":Landroidx/navigation/NavDestination;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 316
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .end local v1    # "destination":Landroidx/navigation/NavDestination;
    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public final addDestination(Landroidx/navigation/NavDestination;)V
    .locals 6
    .param p1, "node"    # Landroidx/navigation/NavDestination;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    .line 124
    .local v0, "id":I
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "innerRoute":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_a

    .line 129
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Destination "

    if-eqz v4, :cond_3

    .line 130
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-require-NavGraph$addDestination$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot have the same route as graph "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .end local v2    # "$i$a$-require-NavGraph$addDestination$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v4

    if-eq v0, v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eqz v4, :cond_9

    .line 135
    iget-object v4, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination;

    .line 136
    .local v4, "existingDestination":Landroidx/navigation/NavDestination;
    if-ne v4, p1, :cond_5

    .line 137
    return-void

    .line 139
    :cond_5
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v5

    if-nez v5, :cond_6

    move v2, v3

    :cond_6
    if-eqz v2, :cond_8

    .line 143
    if-eqz v4, :cond_7

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 146
    :cond_7
    invoke-virtual {p1, p0}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 147
    iget-object v2, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 139
    :cond_8
    const/4 v2, 0x0

    .line 140
    .local v2, "$i$a$-check-NavGraph$addDestination$4":I
    nop

    .line 141
    nop

    .line 139
    .end local v2    # "$i$a$-check-NavGraph$addDestination$4":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 634
    .end local v4    # "existingDestination":Landroidx/navigation/NavDestination;
    :cond_9
    const/4 v2, 0x0

    .line 134
    .local v2, "$i$a$-require-NavGraph$addDestination$3":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot have the same id as graph "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-NavGraph$addDestination$3":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_a
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$a$-require-NavGraph$addDestination$1":I
    nop

    .line 127
    nop

    .line 125
    .end local v2    # "$i$a$-require-NavGraph$addDestination$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final addDestinations(Ljava/util/Collection;)V
    .locals 2
    .param p1, "nodes"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 161
    .local v1, "node":Landroidx/navigation/NavDestination;
    if-nez v1, :cond_0

    .line 162
    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .end local v1    # "node":Landroidx/navigation/NavDestination;
    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method public final varargs addDestinations([Landroidx/navigation/NavDestination;)V
    .locals 3
    .param p1, "nodes"    # [Landroidx/navigation/NavDestination;

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 179
    .local v2, "node":Landroidx/navigation/NavDestination;
    invoke-virtual {p0, v2}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 178
    .end local v2    # "node":Landroidx/navigation/NavDestination;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 335
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .line 496
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 497
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    instance-of v2, p1, Landroidx/navigation/NavGraph;

    if-nez v2, :cond_1

    goto :goto_2

    .line 498
    :cond_1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 499
    iget-object v2, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .local v2, "$this$size$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v3, 0x0

    .line 637
    .local v3, "$i$f$getSize":I
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    .line 499
    .end local v2    # "$this$size$iv":Landroidx/collection/SparseArrayCompat;
    .end local v3    # "$i$f$getSize":I
    move-object v3, p1

    check-cast v3, Landroidx/navigation/NavGraph;

    iget-object v3, v3, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .local v3, "$this$size$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v4, 0x0

    .line 637
    .local v4, "$i$f$getSize":I
    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    .line 499
    .end local v3    # "$this$size$iv":Landroidx/collection/SparseArrayCompat;
    .end local v4    # "$i$f$getSize":I
    if-ne v2, v3, :cond_4

    .line 500
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v2

    move-object v3, p1

    check-cast v3, Landroidx/navigation/NavGraph;

    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 501
    iget-object v2, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v2}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .local v2, "$this$all$iv":Lkotlin/sequences/Sequence;
    const/4 v3, 0x0

    .line 638
    .local v3, "$i$f$all":I
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavDestination;

    .local v6, "it":Landroidx/navigation/NavDestination;
    const/4 v7, 0x0

    .line 501
    .local v7, "$i$a$-all-NavGraph$equals$1":I
    move-object v8, p1

    check-cast v8, Landroidx/navigation/NavGraph;

    iget-object v8, v8, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 638
    .end local v6    # "it":Landroidx/navigation/NavDestination;
    .end local v7    # "$i$a$-all-NavGraph$equals$1":I
    if-nez v6, :cond_2

    move v2, v1

    goto :goto_0

    .line 639
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v2, v0

    .line 501
    .end local v2    # "$this$all$iv":Lkotlin/sequences/Sequence;
    .end local v3    # "$i$f$all":I
    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 498
    :goto_1
    return v0

    .line 497
    :cond_5
    :goto_2
    return v1
.end method

.method public final synthetic findNode()Landroidx/navigation/NavDestination;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/navigation/NavDestination;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    .local v0, "$i$f$findNode":I
    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.simple"

    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    return-object v1
.end method

.method public final findNode(I)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1, "resId"    # I

    .line 191
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavDestination;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public final findNode(Ljava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 3
    .param p1, "route"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/navigation/NavDestination;"
        }
    .end annotation

    .line 257
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 634
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 257
    .local v1, "$i$a$-let-NavGraph$findNode$1":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v2}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-NavGraph$findNode$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1, "route"    # Ljava/lang/String;

    .line 235
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .locals 10
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "searchParents"    # Z

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .local v0, "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 635
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavDestination;

    .local v5, "it":Landroidx/navigation/NavDestination;
    const/4 v6, 0x0

    .line 265
    .local v6, "$i$a$-firstOrNull-NavGraph$findNode$destination$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, p1, v9, v8, v4}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v9, 0x1

    .line 635
    .end local v5    # "it":Landroidx/navigation/NavDestination;
    .end local v6    # "$i$a$-firstOrNull-NavGraph$findNode$destination$1":I
    :cond_2
    if-eqz v9, :cond_0

    goto :goto_0

    .line 636
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object v3, v4

    .line 262
    .end local v0    # "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 261
    move-object v0, v3

    .line 270
    .local v0, "destination":Landroidx/navigation/NavDestination;
    if-nez v0, :cond_4

    .line 271
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v4

    goto :goto_1

    .line 270
    :cond_4
    move-object v4, v0

    :cond_5
    :goto_1
    return-object v4
.end method

.method public final findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 8
    .param p1, "resId"    # I
    .param p2, "lastVisited"    # Landroidx/navigation/NavDestination;
    .param p3, "searchChildren"    # Z

    .line 205
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 206
    .local v0, "destination":Landroidx/navigation/NavDestination;
    if-eqz v0, :cond_0

    return-object v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 212
    iget-object v2, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v2}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    .local v3, "child":Landroidx/navigation/NavDestination;
    const/4 v4, 0x0

    .line 213
    .local v4, "$i$a$-firstNotNullOfOrNull-NavGraph$findNodeComprehensive$1":I
    instance-of v5, v3, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_2

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 214
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavGraph;

    move-object v6, p0

    check-cast v6, Landroidx/navigation/NavDestination;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v5

    goto :goto_0

    .line 215
    :cond_2
    move-object v5, v1

    .line 212
    .end local v3    # "child":Landroidx/navigation/NavDestination;
    .end local v4    # "$i$a$-firstNotNullOfOrNull-NavGraph$findNodeComprehensive$1":I
    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    move-object v5, v1

    .line 211
    :goto_1
    move-object v0, v5

    .line 221
    :cond_4
    if-nez v0, :cond_6

    .line 222
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 223
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p0

    check-cast v2, Landroidx/navigation/NavDestination;

    invoke-virtual {v1, p1, v2, p3}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_2

    .line 224
    :cond_5
    goto :goto_2

    .line 221
    :cond_6
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/navigation/NavDestination;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "the root navigation"

    :goto_0
    return-object v0
.end method

.method public final getNodes()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public final getStartDestDisplayName()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    .line 473
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getStartDestination()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use getStartDestinationId instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "startDestinationId"
            imports = {}
        .end subannotation
    .end annotation

    .line 354
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    return v0
.end method

.method public final getStartDestinationId()I
    .locals 1

    .line 362
    iget v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    return v0
.end method

.method public final getStartDestinationRoute()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 505
    const/4 v0, 0x0

    .local v0, "result":I
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    .line 506
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .local v1, "$this$forEach$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v2, 0x0

    .line 640
    .local v2, "$i$f$forEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 641
    invoke-virtual {v1, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    .local v5, "key":I
    invoke-virtual {v1, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    .local v6, "value":Landroidx/navigation/NavDestination;
    const/4 v7, 0x0

    .line 507
    .local v7, "$i$a$-forEach-NavGraph$hashCode$1":I
    mul-int/lit8 v8, v0, 0x1f

    add-int/2addr v8, v5

    .line 508
    .end local v0    # "result":I
    .local v8, "result":I
    mul-int/lit8 v0, v8, 0x1f

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->hashCode()I

    move-result v9

    add-int/2addr v0, v9

    .line 509
    .end local v8    # "result":I
    .restart local v0    # "result":I
    nop

    .line 641
    .end local v5    # "key":I
    .end local v6    # "value":Landroidx/navigation/NavDestination;
    .end local v7    # "$i$a$-forEach-NavGraph$hashCode$1":I
    nop

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 643
    .end local v3    # "index$iv":I
    :cond_0
    nop

    .line 510
    .end local v1    # "$this$forEach$iv":Landroidx/collection/SparseArrayCompat;
    .end local v2    # "$i$f$forEach":I
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Landroidx/navigation/NavGraph$iterator$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph$iterator$1;-><init>(Landroidx/navigation/NavGraph;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 3
    .param p1, "navDeepLinkRequest"    # Landroidx/navigation/NavDeepLinkRequest;

    const-string v0, "navDeepLinkRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 104
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public final matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 19
    .param p1, "navDeepLinkRequest"    # Landroidx/navigation/NavDeepLinkRequest;
    .param p2, "searchChildren"    # Z
    .param p3, "searchParent"    # Z
    .param p4, "lastVisited"    # Landroidx/navigation/NavDestination;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "navDeepLinkRequest"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "lastVisited"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super/range {p0 .. p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    .line 84
    .local v3, "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v1, :cond_3

    .line 85
    move-object/from16 v5, p0

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 621
    .local v6, "$i$f$mapNotNull":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 629
    .local v9, "$i$f$mapNotNullTo":I
    move-object v10, v8

    .local v10, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 630
    .local v11, "$i$f$forEach":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 629
    .local v15, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v4, v14

    check-cast v4, Landroidx/navigation/NavDestination;

    .local v4, "child":Landroidx/navigation/NavDestination;
    const/16 v17, 0x0

    .line 86
    .local v17, "$i$a$-mapNotNull-NavGraph$matchDeepLinkComprehensive$bestChildMatch$1":I
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v4, v0}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v18

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    .line 629
    .end local v4    # "child":Landroidx/navigation/NavDestination;
    .end local v17    # "$i$a$-mapNotNull-NavGraph$matchDeepLinkComprehensive$bestChildMatch$1":I
    :goto_1
    if-eqz v18, :cond_1

    move-object/from16 v4, v18

    .line 631
    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 629
    .local v17, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v17    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v13    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 632
    :cond_2
    nop

    .line 633
    .end local v10    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapNotNullTo":I
    move-object v4, v7

    check-cast v4, Ljava/util/List;

    .line 621
    nop

    .end local v5    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNull":I
    check-cast v4, Ljava/lang/Iterable;

    .line 88
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination$DeepLinkMatch;

    goto :goto_2

    .line 89
    :cond_3
    const/4 v4, 0x0

    .line 84
    :goto_2
    nop

    .line 83
    nop

    .line 94
    .local v4, "bestChildMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .local v5, "it":Landroidx/navigation/NavGraph;
    const/4 v7, 0x0

    .line 95
    .local v7, "$i$a$-let-NavGraph$matchDeepLinkComprehensive$bestParentMatch$1":I
    if-eqz p3, :cond_4

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 96
    move-object/from16 v8, p0

    check-cast v8, Landroidx/navigation/NavDestination;

    invoke-virtual {v5, v0, v1, v6, v8}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_3

    .line 97
    :cond_4
    const/16 v16, 0x0

    .line 94
    .end local v5    # "it":Landroidx/navigation/NavGraph;
    .end local v7    # "$i$a$-let-NavGraph$matchDeepLinkComprehensive$bestParentMatch$1":I
    :goto_3
    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    .line 93
    :goto_4
    move-object/from16 v5, v16

    .line 99
    .local v5, "bestParentMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    const/4 v7, 0x3

    new-array v7, v7, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v6

    const/4 v6, 0x2

    aput-object v5, v7, v6

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination$DeepLinkMatch;

    return-object v6
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/common/R$styleable;->NavGraphNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.resources.obtain\u2026leable.NavGraphNavigator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 618
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "it":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 62
    .local v3, "$i$a$-use-NavGraph$onInflate$1":I
    sget v4, Landroidx/navigation/common/R$styleable;->NavGraphNavigator_startDestination:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/navigation/NavGraph;->setStartDestinationId(I)V

    .line 63
    sget-object v4, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget v5, p0, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-virtual {v4, p1, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    .line 64
    nop

    .end local v2    # "it":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-NavGraph$onInflate$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 618
    nop

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 619
    .local v3, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 620
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 618
    nop

    .line 65
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    return-void
.end method

.method public final remove(Landroidx/navigation/NavDestination;)V
    .locals 3
    .param p1, "node"    # Landroidx/navigation/NavDestination;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 327
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 328
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 329
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public final synthetic setStartDestination()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 406
    .local v0, "$i$f$setStartDestination":I
    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.simple"

    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v2, Landroidx/navigation/NavGraph$setStartDestination$1;->INSTANCE:Landroidx/navigation/NavGraph$setStartDestination$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1, v2}, Landroidx/navigation/NavGraph;->setStartDestination(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function1;)V

    .line 407
    return-void
.end method

.method public final setStartDestination(I)V
    .locals 0
    .param p1, "startDestId"    # I

    .line 382
    invoke-direct {p0, p1}, Landroidx/navigation/NavGraph;->setStartDestinationId(I)V

    .line 383
    return-void
.end method

.method public final setStartDestination(Ljava/lang/Object;)V
    .locals 2
    .param p1, "startDestRoute"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "startDestRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    new-instance v1, Landroidx/navigation/NavGraph$setStartDestination$2;

    invoke-direct {v1, p1}, Landroidx/navigation/NavGraph$setStartDestination$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function1;)V

    .line 423
    return-void
.end method

.method public final setStartDestination(Ljava/lang/String;)V
    .locals 1
    .param p1, "startDestRoute"    # Ljava/lang/String;

    const-string v0, "startDestRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p1}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public final setStartDestination(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "serializer"    # Lkotlinx/serialization/KSerializer;
    .param p2, "parseRoute"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavDestination;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseRoute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v0

    .line 433
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 434
    .local v1, "startDest":Landroidx/navigation/NavDestination;
    if-eqz v1, :cond_0

    .line 440
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    .line 442
    iput v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    .line 443
    return-void

    .line 434
    :cond_0
    const/4 v2, 0x0

    .line 435
    .local v2, "$i$a$-checkNotNull-NavGraph$setStartDestination$3":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find startDestination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from NavGraph. Ensure the starting NavDestination was added with route from KClass."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    nop

    .line 434
    .end local v2    # "$i$a$-checkNotNull-NavGraph$setStartDestination$3":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v1, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 480
    .local v1, "startDestination":Landroidx/navigation/NavDestination;
    :cond_0
    const-string v2, " startDestination="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    if-nez v1, :cond_3

    .line 482
    nop

    .line 483
    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 484
    :cond_1
    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 485
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 488
    :cond_3
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sb.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
