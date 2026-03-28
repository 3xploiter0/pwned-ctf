.class public final Lcom/ctfzonelabs/todo/data/TaskRepository;
.super Ljava/lang/Object;
.source "TaskRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u0019\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000e0\rJ\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000e0\rJ\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000e0\rJ\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0019\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/data/TaskRepository;",
        "",
        "taskDao",
        "Lcom/ctfzonelabs/todo/data/TaskDao;",
        "(Lcom/ctfzonelabs/todo/data/TaskDao;)V",
        "deleteCompletedTasks",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteTask",
        "task",
        "Lcom/ctfzonelabs/todo/data/Task;",
        "(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActiveTasks",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getAllTasks",
        "getCompletedTasks",
        "insertTask",
        "",
        "updateTask",
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


# instance fields
.field private final taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/ctfzonelabs/todo/data/TaskRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/ctfzonelabs/todo/data/TaskDao;)V
    .locals 1
    .param p1, "taskDao"    # Lcom/ctfzonelabs/todo/data/TaskDao;

    const-string v0, "taskDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    return-void
.end method


# virtual methods
.method public final deleteCompletedTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
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

    .line 13
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0, p1}, Lcom/ctfzonelabs/todo/data/TaskDao;->deleteCompletedTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final deleteTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
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

    .line 12
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0, p1, p2}, Lcom/ctfzonelabs/todo/data/TaskDao;->deleteTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final getActiveTasks()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0}, Lcom/ctfzonelabs/todo/data/TaskDao;->getActiveTasks()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public final getAllTasks()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0}, Lcom/ctfzonelabs/todo/data/TaskDao;->getAllTasks()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public final getCompletedTasks()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0}, Lcom/ctfzonelabs/todo/data/TaskDao;->getCompletedTasks()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public final insertTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
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

    .line 10
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0, p1, p2}, Lcom/ctfzonelabs/todo/data/TaskDao;->insertTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final updateTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
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

    .line 11
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskRepository;->taskDao:Lcom/ctfzonelabs/todo/data/TaskDao;

    invoke-interface {v0, p1, p2}, Lcom/ctfzonelabs/todo/data/TaskDao;->updateTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
