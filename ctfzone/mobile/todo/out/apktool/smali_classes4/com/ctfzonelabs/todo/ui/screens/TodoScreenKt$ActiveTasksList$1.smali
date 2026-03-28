.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->ActiveTasksList(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1\n+ 2 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,495:1\n143#2,12:496\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1\n*L\n205#1:496,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $onDeleteTask:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onTaskClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->$tasks:Ljava/util/List;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->$onTaskClick:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->$onDeleteTask:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 200
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 11
    .param p1, "$this$LazyColumn"    # Landroidx/compose/foundation/lazy/LazyListScope;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    nop

    .line 206
    iget-object v0, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->$tasks:Ljava/util/List;

    .line 205
    sget-object v1, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$1;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .local v1, "key$iv":Lkotlin/jvm/functions/Function1;
    iget-object v2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->$onTaskClick:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1;->$onDeleteTask:Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    .line 496
    .local v0, "items$iv":Ljava/util/List;
    .local v4, "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    nop

    .line 499
    sget-object v5, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$1;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 496
    .local v5, "contentType$iv":Lkotlin/jvm/functions/Function1;
    const/4 v6, 0x0

    .line 501
    .local v6, "$i$f$items":I
    nop

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 503
    if-eqz v1, :cond_0

    .line 501
    new-instance v8, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$2;

    invoke-direct {v8, v1, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 503
    :cond_0
    const/4 v8, 0x0

    .line 501
    :goto_0
    new-instance v9, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$3;

    invoke-direct {v9, v5, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 505
    new-instance v10, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$4;

    invoke-direct {v10, v0, v2, v3}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$ActiveTasksList$1$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const v2, -0x25b7f321

    const/4 v3, 0x1

    invoke-static {v2, v3, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function4;

    .line 501
    invoke-interface {v4, v7, v8, v9, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 507
    nop

    .line 215
    .end local v0    # "items$iv":Ljava/util/List;
    .end local v1    # "key$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    .end local v5    # "contentType$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "$i$f$items":I
    return-void
.end method
