.class public final Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TaskViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0008J\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0008R\u001d\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/ctfzonelabs/todo/data/TaskRepository;",
        "(Lcom/ctfzonelabs/todo/data/TaskRepository;)V",
        "activeTasks",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/ctfzonelabs/todo/data/Task;",
        "getActiveTasks",
        "()Lkotlinx/coroutines/flow/Flow;",
        "completedTasks",
        "getCompletedTasks",
        "addTask",
        "",
        "title",
        "",
        "description",
        "deleteCompletedTasks",
        "deleteTask",
        "task",
        "getSecretFlag",
        "toggleTaskCompletion",
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
.field private final activeTasks:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private final completedTasks:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/ctfzonelabs/todo/data/TaskRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/ctfzonelabs/todo/data/TaskRepository;)V
    .locals 1
    .param p1, "repository"    # Lcom/ctfzonelabs/todo/data/TaskRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->repository:Lcom/ctfzonelabs/todo/data/TaskRepository;

    .line 13
    iget-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->repository:Lcom/ctfzonelabs/todo/data/TaskRepository;

    invoke-virtual {v0}, Lcom/ctfzonelabs/todo/data/TaskRepository;->getActiveTasks()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->activeTasks:Lkotlinx/coroutines/flow/Flow;

    .line 14
    iget-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->repository:Lcom/ctfzonelabs/todo/data/TaskRepository;

    invoke-virtual {v0}, Lcom/ctfzonelabs/todo/data/TaskRepository;->getCompletedTasks()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->completedTasks:Lkotlinx/coroutines/flow/Flow;

    .line 11
    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;)Lcom/ctfzonelabs/todo/data/TaskRepository;
    .locals 1
    .param p0, "$this"    # Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    .line 11
    iget-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->repository:Lcom/ctfzonelabs/todo/data/TaskRepository;

    return-object v0
.end method

.method public static synthetic addTask$default(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 16
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->addTask(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$addTask$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$addTask$1;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 22
    :cond_0
    return-void
.end method

.method public final deleteCompletedTasks()V
    .locals 7

    .line 37
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$deleteCompletedTasks$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$deleteCompletedTasks$1;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 40
    return-void
.end method

.method public final deleteTask(Lcom/ctfzonelabs/todo/data/Task;)V
    .locals 7
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$deleteTask$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$deleteTask$1;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 34
    return-void
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

    .line 13
    iget-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->activeTasks:Lkotlinx/coroutines/flow/Flow;

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

    .line 14
    iget-object v0, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->completedTasks:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getSecretFlag()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "urchinsec{r3v3rs1ng_4ndr0id_APK_rgrdless}"

    return-object v0
.end method

.method public final toggleTaskCompletion(Lcom/ctfzonelabs/todo/data/Task;)V
    .locals 7
    .param p1, "task"    # Lcom/ctfzonelabs/todo/data/Task;

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$toggleTaskCompletion$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel$toggleTaskCompletion$1;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 28
    return-void
.end method
