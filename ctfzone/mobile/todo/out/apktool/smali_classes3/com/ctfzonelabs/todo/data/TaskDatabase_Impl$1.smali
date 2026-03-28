.class Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "TaskDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "version"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 35
    const-string v0, "CREATE TABLE IF NOT EXISTS `tasks` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `isCompleted` INTEGER NOT NULL, `createdAt` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'723a2e875ff813d2fe13ec0f8d55e174\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 42
    const-string v0, "DROP TABLE IF EXISTS `tasks`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;->access$000(Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 46
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 47
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;->access$100(Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 56
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 57
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;

    invoke-static {v0, p1}, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;->access$202(Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 64
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;

    invoke-static {v0, p1}, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;->access$300(Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 65
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl$1;->this$0:Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;->access$400(Lcom/ctfzonelabs/todo/data/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 68
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 69
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 80
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 76
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 16
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    .local v0, "_columnsTasks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "id"

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "id"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "title"

    const-string v11, "TEXT"

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "description"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "isCompleted"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "isCompleted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "createdAt"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "createdAt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 93
    .local v1, "_foreignKeysTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 94
    .local v3, "_indicesTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "tasks"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 95
    .local v4, "_infoTasks":Landroidx/room/util/TableInfo;
    move-object/from16 v6, p1

    invoke-static {v6, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v5

    .line 96
    .local v5, "_existingTasks":Landroidx/room/util/TableInfo;
    invoke-virtual {v4, v5}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 97
    new-instance v7, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tasks(com.ctfzonelabs.todo.data.Task).\n Expected:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n Found:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v7

    .line 101
    :cond_0
    new-instance v2, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method
