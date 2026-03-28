.class public abstract Lcom/ctfzonelabs/todo/data/TaskDatabase;
.super Landroidx/room/RoomDatabase;
.source "TaskDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/ctfzonelabs/todo/data/TaskDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "taskDao",
        "Lcom/ctfzonelabs/todo/data/TaskDao;",
        "Companion",
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

.field public static final Companion:Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;

.field private static volatile INSTANCE:Lcom/ctfzonelabs/todo/data/TaskDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ctfzonelabs/todo/data/TaskDatabase;->Companion:Lcom/ctfzonelabs/todo/data/TaskDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/ctfzonelabs/todo/data/TaskDatabase;
    .locals 1

    .line 8
    sget-object v0, Lcom/ctfzonelabs/todo/data/TaskDatabase;->INSTANCE:Lcom/ctfzonelabs/todo/data/TaskDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/ctfzonelabs/todo/data/TaskDatabase;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/ctfzonelabs/todo/data/TaskDatabase;

    .line 8
    sput-object p0, Lcom/ctfzonelabs/todo/data/TaskDatabase;->INSTANCE:Lcom/ctfzonelabs/todo/data/TaskDatabase;

    return-void
.end method


# virtual methods
.method public abstract taskDao()Lcom/ctfzonelabs/todo/data/TaskDao;
.end method
