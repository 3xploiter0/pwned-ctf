.class Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;
.super Ljava/lang/Object;
.source "TaskDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->deleteCompletedTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$400(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 181
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 184
    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 185
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    iget-object v2, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    iget-object v2, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$400(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 185
    return-object v1

    .line 187
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 188
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$8;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$400(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 191
    throw v1
.end method
