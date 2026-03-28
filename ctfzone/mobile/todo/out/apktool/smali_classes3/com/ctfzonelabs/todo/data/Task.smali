.class public final Lcom/ctfzonelabs/todo/data/Task;
.super Ljava/lang/Object;
.source "Task.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/data/Task;",
        "",
        "id",
        "",
        "title",
        "",
        "description",
        "isCompleted",
        "",
        "createdAt",
        "(JLjava/lang/String;Ljava/lang/String;ZJ)V",
        "getCreatedAt",
        "()J",
        "getDescription",
        "()Ljava/lang/String;",
        "getId",
        "()Z",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final createdAt:J

.field private final description:Ljava/lang/String;

.field private final id:J

.field private final isCompleted:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "isCompleted"    # Z
    .param p6, "createdAt"    # J

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    .line 10
    iput-object p3, p0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    .line 13
    iput-wide p6, p0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    .line 7
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 9
    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    .line 7
    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    .line 11
    const-string v0, ""

    move-object v6, v0

    goto :goto_1

    .line 7
    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    .line 12
    const/4 v0, 0x0

    move v7, v0

    goto :goto_2

    .line 7
    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_3

    .line 7
    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/ctfzonelabs/todo/data/Task;-><init>(JLjava/lang/String;Ljava/lang/String;ZJ)V

    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/ctfzonelabs/todo/data/Task;JLjava/lang/String;Ljava/lang/String;ZJILjava/lang/Object;)Lcom/ctfzonelabs/todo/data/Task;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    goto :goto_4

    :cond_4
    move-wide v6, p6

    :goto_4
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move p5, v5

    move-wide p6, v6

    invoke-virtual/range {p0 .. p7}, Lcom/ctfzonelabs/todo/data/Task;->copy(JLjava/lang/String;Ljava/lang/String;ZJ)Lcom/ctfzonelabs/todo/data/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;ZJ)Lcom/ctfzonelabs/todo/data/Task;
    .locals 11

    const-string v0, "title"

    move-object v9, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object v10, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ctfzonelabs/todo/data/Task;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/ctfzonelabs/todo/data/Task;-><init>(JLjava/lang/String;Ljava/lang/String;ZJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ctfzonelabs/todo/data/Task;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/ctfzonelabs/todo/data/Task;

    iget-wide v3, p0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    iget-wide v5, v1, Lcom/ctfzonelabs/todo/data/Task;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    iget-object v4, v1, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    iget-boolean v4, v1, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    iget-wide v5, v1, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCreatedAt()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    return-wide v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isCompleted()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ctfzonelabs/todo/data/Task;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ctfzonelabs/todo/data/Task;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ctfzonelabs/todo/data/Task;->isCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ctfzonelabs/todo/data/Task;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
