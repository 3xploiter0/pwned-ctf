.class Lcom/ctfzonelabs/todo/data/TaskDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "TaskDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/data/TaskDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/ctfzonelabs/todo/data/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/data/TaskDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ctfzonelabs/todo/data/TaskDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$3;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ctfzonelabs/todo/data/Task;)V
    .locals 4
    .param p1, "statement"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "entity"    # Lcom/ctfzonelabs/todo/data/Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 94
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :goto_0
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 99
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_1
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->isCompleted()Z

    move-result v0

    .line 104
    .local v0, "_tmp":I
    const/4 v1, 0x4

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 105
    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getCreatedAt()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 106
    const/4 v1, 0x6

    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getId()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 107
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 82
    check-cast p2, Lcom/ctfzonelabs/todo/data/Task;

    invoke-virtual {p0, p1, p2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ctfzonelabs/todo/data/Task;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "UPDATE OR ABORT `tasks` SET `id` = ?,`title` = ?,`description` = ?,`isCompleted` = ?,`createdAt` = ? WHERE `id` = ?"

    return-object v0
.end method
