.class Lcom/ctfzonelabs/todo/data/TaskDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 43
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 54
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 60
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    :goto_1
    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->isCompleted()Z

    move-result v0

    .line 65
    .local v0, "_tmp":I
    const/4 v1, 0x4

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 66
    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getCreatedAt()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 67
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

    .line 43
    check-cast p2, Lcom/ctfzonelabs/todo/data/Task;

    invoke-virtual {p0, p1, p2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ctfzonelabs/todo/data/Task;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "INSERT OR REPLACE INTO `tasks` (`id`,`title`,`description`,`isCompleted`,`createdAt`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
