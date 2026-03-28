.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "Ljava/lang/Boolean;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "showCompleted",
        "",
        "invoke",
        "(Landroidx/compose/animation/AnimatedContentScope;ZLandroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $activeTasks$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $completedTasks$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;",
            "Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$completedTasks$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    iput-object p3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$activeTasks$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 121
    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->invoke(Landroidx/compose/animation/AnimatedContentScope;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedContentScope;ZLandroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p1, "$this$AnimatedContent"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "showCompleted"    # Z
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const-string v0, "$this$AnimatedContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C:TodoScreen.kt#73otoh"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const v0, -0x31ac96ea

    const/4 v1, -0x1

    const-string v2, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous>.<anonymous>.<anonymous> (TodoScreen.kt:121)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    if-eqz p2, :cond_1

    const v1, 0x6c5134cc

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "122@5342L242"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$completedTasks$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$13(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$1;

    iget-object v3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-direct {v2, v3}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$1;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$2;

    iget-object v4, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-direct {v3, v4}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$2;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2, v3, p3, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->CompletedTasksList(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 122
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_0

    .line 128
    :cond_1
    const v1, 0x6c5135ec

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "128@5630L229"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$activeTasks$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$12(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$3;

    iget-object v3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-direct {v2, v3}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$3;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$4;

    iget-object v4, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-direct {v3, v4}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2$4;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2, v3, p3, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->ActiveTasksList(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 128
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 135
    :cond_2
    return-void
.end method
