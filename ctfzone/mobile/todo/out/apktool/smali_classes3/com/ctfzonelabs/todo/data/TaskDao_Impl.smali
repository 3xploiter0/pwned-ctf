.class public final Lcom/ctfzonelabs/todo/data/TaskDao_Impl;
.super Ljava/lang/Object;
.source "TaskDao_Impl.java"

# interfaces
.implements Lcom/ctfzonelabs/todo/data/TaskDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfTask:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfTask:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteCompletedTasks:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfTask:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    new-instance v0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$1;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__insertionAdapterOfTask:Landroidx/room/EntityInsertionAdapter;

    .line 69
    new-instance v0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$2;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__deletionAdapterOfTask:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 82
    new-instance v0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$3;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__updateAdapterOfTask:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 109
    new-instance v0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$4;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__preparedStmtOfDeleteCompletedTasks:Landroidx/room/SharedSQLiteStatement;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    .line 30
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    .line 30
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__insertionAdapterOfTask:Landroidx/room/EntityInsertionAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    .line 30
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__deletionAdapterOfTask:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    .line 30
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__updateAdapterOfTask:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 1
    .param p0, "x0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    .line 30
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__preparedStmtOfDeleteCompletedTasks:Landroidx/room/SharedSQLiteStatement;

    return-object v0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteCompletedTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 175
    .local p1, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;

    invoke-direct {v1, p0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deleteTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "task",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 139
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$6;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Lcom/ctfzonelabs/todo/data/Task;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActiveTasks()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation

    .line 198
    const-string v0, "SELECT * FROM tasks WHERE isCompleted = 0 ORDER BY createdAt DESC"

    .line 199
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM tasks WHERE isCompleted = 0 ORDER BY createdAt DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 200
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "tasks"

    aput-object v5, v4, v2

    new-instance v5, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;

    invoke-direct {v5, p0, v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v2, v4, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getAllTasks()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation

    .line 306
    const-string v0, "SELECT * FROM tasks ORDER BY createdAt DESC"

    .line 307
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM tasks ORDER BY createdAt DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 308
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "tasks"

    aput-object v5, v4, v2

    new-instance v5, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$11;

    invoke-direct {v5, p0, v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$11;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v2, v4, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getCompletedTasks()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation

    .line 252
    const-string v0, "SELECT * FROM tasks WHERE isCompleted = 1 ORDER BY createdAt DESC"

    .line 253
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM tasks WHERE isCompleted = 1 ORDER BY createdAt DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 254
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "tasks"

    aput-object v5, v4, v2

    new-instance v5, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$10;

    invoke-direct {v5, p0, v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$10;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v2, v4, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public insertTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "task",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Lcom/ctfzonelabs/todo/data/Task;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "task",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 157
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$7;-><init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Lcom/ctfzonelabs/todo/data/Task;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
