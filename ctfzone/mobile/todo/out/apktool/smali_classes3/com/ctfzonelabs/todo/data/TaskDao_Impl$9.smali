.class Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;
.super Ljava/lang/Object;
.source "TaskDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->getActiveTasks()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/ctfzonelabs/todo/data/Task;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 200
    invoke-virtual {p0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 206
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "_cursorIndexOfId":I
    const-string v3, "title"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "_cursorIndexOfTitle":I
    const-string v5, "description"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 209
    .local v5, "_cursorIndexOfDescription":I
    const-string v6, "isCompleted"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 210
    .local v6, "_cursorIndexOfIsCompleted":I
    const-string v7, "createdAt"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 211
    .local v7, "_cursorIndexOfCreatedAt":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ctfzonelabs/todo/data/Task;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 217
    .local v11, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 218
    const/4 v9, 0x0

    .local v9, "_tmpTitle":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v9    # "_tmpTitle":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 223
    .restart local v9    # "_tmpTitle":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 224
    const/4 v10, 0x0

    move-object/from16 v18, v10

    .local v10, "_tmpDescription":Ljava/lang/String;
    goto :goto_2

    .line 226
    .end local v10    # "_tmpDescription":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v10

    .line 230
    .local v18, "_tmpDescription":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v19, v10

    .line 231
    .local v19, "_tmp":I
    if-eqz v19, :cond_2

    const/4 v10, 0x1

    move v15, v10

    goto :goto_3

    :cond_2
    move v15, v4

    .line 233
    .local v15, "_tmpIsCompleted":Z
    :goto_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 234
    .local v16, "_tmpCreatedAt":J
    new-instance v20, Lcom/ctfzonelabs/todo/data/Task;

    move-object/from16 v10, v20

    move-object v13, v9

    move-object/from16 v14, v18

    invoke-direct/range {v10 .. v17}, Lcom/ctfzonelabs/todo/data/Task;-><init>(JLjava/lang/String;Ljava/lang/String;ZJ)V

    move-object/from16 v10, v20

    .line 235
    .local v10, "_item":Lcom/ctfzonelabs/todo/data/Task;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    nop

    .end local v9    # "_tmpTitle":Ljava/lang/String;
    .end local v10    # "_item":Lcom/ctfzonelabs/todo/data/Task;
    .end local v11    # "_tmpId":J
    .end local v15    # "_tmpIsCompleted":Z
    .end local v16    # "_tmpCreatedAt":J
    .end local v18    # "_tmpDescription":Ljava/lang/String;
    .end local v19    # "_tmp":I
    goto :goto_0

    .line 237
    :cond_3
    nop

    .line 239
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 237
    return-object v8

    .line 239
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfTitle":I
    .end local v5    # "_cursorIndexOfDescription":I
    .end local v6    # "_cursorIndexOfIsCompleted":I
    .end local v7    # "_cursorIndexOfCreatedAt":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ctfzonelabs/todo/data/Task;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 240
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 246
    return-void
.end method
