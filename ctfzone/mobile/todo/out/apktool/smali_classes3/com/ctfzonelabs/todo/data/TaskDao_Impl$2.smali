.class Lcom/ctfzonelabs/todo/data/TaskDao_Impl$2;
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

    .line 69
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$2;->this$0:Lcom/ctfzonelabs/todo/data/TaskDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ctfzonelabs/todo/data/Task;)V
    .locals 3
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

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/ctfzonelabs/todo/data/Task;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
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

    .line 69
    check-cast p2, Lcom/ctfzonelabs/todo/data/Task;

    invoke-virtual {p0, p1, p2}, Lcom/ctfzonelabs/todo/data/TaskDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ctfzonelabs/todo/data/Task;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "DELETE FROM `tasks` WHERE `id` = ?"

    return-object v0
.end method
