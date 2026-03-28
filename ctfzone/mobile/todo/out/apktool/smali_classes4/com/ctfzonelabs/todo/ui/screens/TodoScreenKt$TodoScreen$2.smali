.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->TodoScreen(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,495:1\n36#2,2:496\n1225#3,6:498\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2\n*L\n87#1:496,2\n87#1:498,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;->$showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 84
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    const-string v1, "C86@3941L28,87@4022L11,88@4092L11,85@3889L480:TodoScreen.kt#73otoh"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 85
    and-int/lit8 v1, v15, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 85
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous> (TodoScreen.kt:84)"

    const v3, -0x26e5216b

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;->$showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 87
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    .local v1, "key1$iv":Ljava/lang/Object;
    iget-object v2, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x6

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .line 496
    .local v4, "$i$f$remember":I
    const v5, 0x44faf204

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 497
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid$iv$iv":Z
    move-object/from16 v6, p1

    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 498
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 499
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v5, :cond_4

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_3

    goto :goto_1

    .line 503
    :cond_3
    move-object v2, v8

    goto :goto_2

    .line 500
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 87
    .local v10, "$i$a$-remember-TodoScreenKt$TodoScreen$2$1":I
    new-instance v11, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2$1$1;

    invoke-direct {v11, v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 500
    .end local v10    # "$i$a$-remember-TodoScreenKt$TodoScreen$2$1":I
    move-object v2, v11

    .line 501
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 502
    nop

    .line 499
    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 498
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 497
    .end local v5    # "invalid$iv$iv":Z
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    nop

    .line 496
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 497
    nop

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$remember":I
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 88
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v4

    .line 89
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v6

    sget-object v2, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;

    invoke-virtual {v2}, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .line 86
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0xc00000

    const/16 v13, 0x66

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 98
    :cond_6
    :goto_3
    return-void
.end method
