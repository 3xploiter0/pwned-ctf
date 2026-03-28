.class public final Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;
.super Ljava/lang/Object;
.source "TaskDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctfzonelabs/todo/data/TaskDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/ctfzonelabs/todo/data/TaskDatabase;",
        "getDatabase",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDatabase(Landroid/content/Context;)Lcom/ctfzonelabs/todo/data/TaskDatabase;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/ctfzonelabs/todo/data/TaskDatabase;->access$getINSTANCE$cp()Lcom/ctfzonelabs/todo/data/TaskDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-synchronized-TaskDatabase$Companion$getDatabase$1":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/ctfzonelabs/todo/data/TaskDatabase;

    .line 21
    const-string v3, "task_database"

    .line 18
    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/ctfzonelabs/todo/data/TaskDatabase;

    .line 18
    nop

    .line 23
    .local v1, "instance":Lcom/ctfzonelabs/todo/data/TaskDatabase;
    sget-object v2, Lcom/ctfzonelabs/todo/data/TaskDatabase;->Companion:Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/data/TaskDatabase;->access$setINSTANCE$cp(Lcom/ctfzonelabs/todo/data/TaskDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    nop

    .line 17
    .end local v0    # "$i$a$-synchronized-TaskDatabase$Companion$getDatabase$1":I
    .end local v1    # "instance":Lcom/ctfzonelabs/todo/data/TaskDatabase;
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method
