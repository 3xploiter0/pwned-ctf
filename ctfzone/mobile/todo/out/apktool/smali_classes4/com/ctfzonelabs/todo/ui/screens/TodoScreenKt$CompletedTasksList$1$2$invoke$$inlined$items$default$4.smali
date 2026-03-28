.class public final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2\n*L\n1#1,433:1\n255#2,5:434\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V",
        "androidx/compose/foundation/lazy/LazyDslKt$items$4"
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
.field final synthetic $items:Ljava/util/List;

.field final synthetic $onTaskClick$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;->$onTaskClick$inlined:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 152
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p1, "$this$items"    # Landroidx/compose/foundation/lazy/LazyItemScope;
    .param p2, "it"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "C152@7074L22:LazyDsl.kt#428nma"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v0, p4

    .local v0, "$dirty":I
    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    .line 153
    :cond_3
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-ne v1, v2, :cond_5

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)"

    const v3, -0x25b7f321

    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v2, v0, 0xe

    .local v2, "$changed":I
    check-cast v1, Lcom/ctfzonelabs/todo/data/Task;

    .local v1, "task":Lcom/ctfzonelabs/todo/data/Task;
    move-object v3, p1

    .local v3, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object v4, p3

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 434
    .local v5, "$i$a$-items$default-TodoScreenKt$CompletedTasksList$1$2$2":I
    const v6, 0x30ba6b28

    const-string v7, "C*254@9139L121:TodoScreen.kt#73otoh"

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 435
    nop

    .line 434
    new-instance v6, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$2$1;

    iget-object v7, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$invoke$$inlined$items$default$4;->$onTaskClick$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {v6, v7, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTasksList$1$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/ctfzonelabs/todo/data/Task;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    sget v7, Lcom/ctfzonelabs/todo/data/Task;->$stable:I

    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0xe

    or-int/2addr v7, v8

    invoke-static {v1, v6, v4, v7}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->CompletedTaskItem(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 438
    nop

    .line 153
    .end local v1    # "task":Lcom/ctfzonelabs/todo/data/Task;
    .end local v2    # "$changed":I
    .end local v3    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-items$default-TodoScreenKt$CompletedTasksList$1$2$2":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 154
    :cond_7
    :goto_3
    return-void
.end method
