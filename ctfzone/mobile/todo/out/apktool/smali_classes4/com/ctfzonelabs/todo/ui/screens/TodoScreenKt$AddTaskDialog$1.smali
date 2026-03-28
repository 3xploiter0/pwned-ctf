.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->AddTaskDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,495:1\n68#2,5:496\n1225#3,6:501\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1\n*L\n476#1:496,5\n476#1:501,6\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $description$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onAddTask:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $title$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$title$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$onAddTask:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$description$delegate:Landroidx/compose/runtime/MutableState;

    iput p4, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$$dirty:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 474
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    const-string v1, "C475@16986L141,474@16952L284:TodoScreen.kt#73otoh"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 475
    and-int/lit8 v1, v15, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 475
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.ctfzonelabs.todo.ui.screens.AddTaskDialog.<anonymous> (TodoScreen.kt:474)"

    const v3, 0x4d38bb1b    # 1.9370437E8f

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 476
    :cond_2
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$title$delegate:Landroidx/compose/runtime/MutableState;

    .local v1, "key1$iv":Ljava/lang/Object;
    iget-object v2, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$onAddTask:Lkotlin/jvm/functions/Function2;

    .local v2, "key2$iv":Ljava/lang/Object;
    iget-object v3, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$description$delegate:Landroidx/compose/runtime/MutableState;

    .local v3, "key3$iv":Ljava/lang/Object;
    iget-object v4, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$onAddTask:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$title$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$description$delegate:Landroidx/compose/runtime/MutableState;

    iget v7, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$$dirty:I

    and-int/lit8 v7, v7, 0x70

    or-int/lit16 v7, v7, 0x186

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .line 496
    .local v8, "$i$f$remember":I
    const v9, 0x607fb4c4

    const-string v10, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v14, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 498
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 499
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .line 498
    or-int/2addr v9, v10

    .line 500
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .line 498
    or-int/2addr v9, v10

    .line 497
    nop

    .local v9, "invalid$iv$iv":Z
    move-object/from16 v10, p1

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 501
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 502
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v9, :cond_4

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v17, v1

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .local v17, "key1$iv":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v12, v1, :cond_3

    goto :goto_1

    .line 506
    :cond_3
    move-object v1, v12

    goto :goto_2

    .line 502
    .end local v17    # "key1$iv":Ljava/lang/Object;
    .restart local v1    # "key1$iv":Ljava/lang/Object;
    :cond_4
    move-object/from16 v17, v1

    .line 503
    .end local v1    # "key1$iv":Ljava/lang/Object;
    .restart local v17    # "key1$iv":Ljava/lang/Object;
    :goto_1
    const/4 v1, 0x0

    .line 476
    .local v1, "$i$a$-remember-TodoScreenKt$AddTaskDialog$1$1":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-remember-TodoScreenKt$AddTaskDialog$1$1":I
    .local v16, "$i$a$-remember-TodoScreenKt$AddTaskDialog$1$1":I
    new-instance v1, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1$1$1;

    invoke-direct {v1, v4, v5, v6}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 503
    .end local v16    # "$i$a$-remember-TodoScreenKt$AddTaskDialog$1$1":I
    nop

    .line 504
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 505
    nop

    .line 502
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 501
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 497
    .end local v9    # "invalid$iv$iv":Z
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    nop

    .line 496
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 497
    nop

    .end local v2    # "key2$iv":Ljava/lang/Object;
    .end local v3    # "key3$iv":Ljava/lang/Object;
    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$f$remember":I
    .end local v17    # "key1$iv":Ljava/lang/Object;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 481
    iget-object v2, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$1;->$title$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$AddTaskDialog$lambda$22(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    sget-object v2, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;

    invoke-virtual {v2}, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->getLambda-6$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 475
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fa

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 485
    :cond_5
    :goto_3
    return-void
.end method
