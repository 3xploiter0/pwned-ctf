.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->CompletedTasksList(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2\n+ 2 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,495:1\n143#2,12:496\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2\n*L\n251#1:496,12\n*E\n"
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
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;->$tasks:Ljava/util/List;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;->$onTaskClick:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 246
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 11
    .param p1, "$this$LazyColumn"    # Landroidx/compose/foundation/lazy/LazyListScope;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    nop

    .line 252
    iget-object v0, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;->$tasks:Ljava/util/List;

    .line 251
    sget-object v1, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$1;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .local v1, "key$iv":Lkotlin/jvm/functions/Function1;
    iget-object v2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;->$onTaskClick:Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    .line 496
    .local v0, "items$iv":Ljava/util/List;
    .local v3, "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    nop

    .line 499
    sget-object v4, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$1;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 496
    .local v4, "contentType$iv":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 501
    .local v5, "$i$f$items":I
    nop

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 503
    if-eqz v1, :cond_0

    .line 501
    new-instance v7, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$2;

    invoke-direct {v7, v1, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 503
    :cond_0
    const/4 v7, 0x0

    .line 501
    :goto_0
    new-instance v8, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$3;

    invoke-direct {v8, v4, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 505
    new-instance v9, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;

    invoke-direct {v9, v0, v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    const v2, -0x25b7f321

    const/4 v10, 0x1

    invoke-static {v2, v10, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function4;

    .line 501
    invoke-interface {v3, v6, v7, v8, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 507
    nop

    .line 260
    .end local v0    # "items$iv":Ljava/util/List;
    .end local v1    # "key$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    .end local v4    # "contentType$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$f$items":I
    return-void
.end method
