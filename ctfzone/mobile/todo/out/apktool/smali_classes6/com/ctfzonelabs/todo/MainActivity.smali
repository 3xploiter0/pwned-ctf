.class public final Lcom/ctfzonelabs/todo/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/ctfzonelabs/todo/data/TaskDatabase;->Companion:Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;

    invoke-virtual {p0}, Lcom/ctfzonelabs/todo/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getApplicationContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/ctfzonelabs/todo/data/TaskDatabase;

    move-result-object v0

    .line 25
    .local v0, "database":Lcom/ctfzonelabs/todo/data/TaskDatabase;
    new-instance v1, Lcom/ctfzonelabs/todo/data/TaskRepository;

    invoke-virtual {v0}, Lcom/ctfzonelabs/todo/data/TaskDatabase;->taskDao()Lcom/ctfzonelabs/todo/data/TaskDao;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/ctfzonelabs/todo/data/TaskRepository;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao;)V

    .line 26
    .local v1, "repository":Lcom/ctfzonelabs/todo/data/TaskRepository;
    new-instance v3, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;

    invoke-direct {v3, v1}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;-><init>(Lcom/ctfzonelabs/todo/data/TaskRepository;)V

    .line 28
    .local v3, "viewModelFactory":Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;
    move-object v4, p0

    check-cast v4, Landroidx/activity/ComponentActivity;

    new-instance v5, Lcom/ctfzonelabs/todo/MainActivity$onCreate$1;

    invoke-direct {v5, v3}, Lcom/ctfzonelabs/todo/MainActivity$onCreate$1;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;)V

    const v6, -0x6160c6b8

    const/4 v7, 0x1

    invoke-static {v6, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, v5, v7, v2}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 39
    return-void
.end method
