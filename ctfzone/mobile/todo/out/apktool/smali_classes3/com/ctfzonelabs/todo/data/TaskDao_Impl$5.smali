.class Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;
.super Ljava/lang/Object;
.source "TaskDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->insertTask(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

.field final synthetic val$task:Lcom/ctfzonelabs/todo/data/Task;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Lcom/ctfzonelabs/todo/data/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->val$task:Lcom/ctfzonelabs/todo/data/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$100(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->val$task:Lcom/ctfzonelabs/todo/data/Task;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 128
    .local v0, "_result":Ljava/lang/Long;
    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    nop

    .line 131
    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
    return-object v0

    .line 131
    .end local v0    # "_result":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 132
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
