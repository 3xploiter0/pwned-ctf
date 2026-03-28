.class public final Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;
.super Ljava/lang/Object;
.source "TaskViewModel.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0002H\u0006\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\tH\u0016\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "repository",
        "Lcom/ctfzonelabs/todo/data/TaskRepository;",
        "(Lcom/ctfzonelabs/todo/data/TaskRepository;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final repository:Lcom/ctfzonelabs/todo/data/TaskRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/ctfzonelabs/todo/data/TaskRepository;)V
    .locals 1
    .param p1, "repository"    # Lcom/ctfzonelabs/todo/data/TaskRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;->repository:Lcom/ctfzonelabs/todo/data/TaskRepository;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .param p1, "modelClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-class v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;->repository:Lcom/ctfzonelabs/todo/data/TaskRepository;

    invoke-direct {v0, v1}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;-><init>(Lcom/ctfzonelabs/todo/data/TaskRepository;)V

    check-cast v0, Landroidx/lifecycle/ViewModel;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown ViewModel class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
