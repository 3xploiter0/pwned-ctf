.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,495:1\n71#2:496\n68#2,6:497\n74#2:531\n78#2:535\n79#3,6:503\n86#3,4:518\n90#3,2:528\n94#3:534\n368#4,9:509\n377#4:530\n378#4,2:532\n36#4,2:536\n36#4,2:544\n4034#5,6:522\n1225#6,6:538\n1225#6,6:546\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3\n*L\n100#1:496\n100#1:497,6\n100#1:531\n100#1:535\n100#1:503,6\n100#1:518,4\n100#1:528,2\n100#1:534\n100#1:509,9\n100#1:530\n100#1:532,2\n146#1:536,2\n157#1:544,2\n100#1:522,6\n146#1:538,6\n157#1:546,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "invoke",
        "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V"
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

.field final synthetic $showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/ctfzonelabs/todo/data/Task;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    iput-object p3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$completedTasks$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$activeTasks$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 99
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 43
    .param p1, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "paddingValues"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "C106@4691L11,107@4757L11,99@4427L1663,156@6548L26,154@6452L136:TodoScreen.kt#73otoh"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v3, 0xe

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    or-int/2addr v4, v5

    .line 100
    :cond_1
    and-int/lit8 v5, v4, 0x5b

    const/16 v7, 0x12

    if-ne v5, v7, :cond_3

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, v4

    goto/16 :goto_9

    .line 100
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    const-string v7, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous> (TodoScreen.kt:99)"

    const v8, 0xc8d48cd

    invoke-static {v8, v3, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 101
    :cond_4
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 102
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v7, v9, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 103
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 105
    sget-object v11, Landroidx/compose/ui/graphics/Brush;->Companion:Landroidx/compose/ui/graphics/Brush$Companion;

    .line 107
    new-array v5, v6, [Landroidx/compose/ui/graphics/Color;

    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v8, 0x0

    or-int/2addr v7, v8

    invoke-virtual {v6, v2, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    aput-object v6, v5, v8

    .line 108
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    or-int/2addr v7, v8

    invoke-virtual {v6, v2, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v12

    const/16 v18, 0xe

    const/16 v19, 0x0

    const v14, 0x3e99999a    # 0.3f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    aput-object v6, v5, v9

    .line 107
    nop

    .line 106
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 105
    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/graphics/Brush$Companion;->verticalGradient-8A-3gB4$default(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFIILjava/lang/Object;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v11

    .line 104
    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/BackgroundKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 100
    iget-object v6, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$completedTasks$delegate:Landroidx/compose/runtime/State;

    iget-object v10, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    iget-object v11, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$activeTasks$delegate:Landroidx/compose/runtime/State;

    const/4 v12, 0x0

    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v12, "$changed$iv":I
    const/4 v13, 0x0

    .line 496
    .local v13, "$i$f$Box":I
    const v14, 0x2bb5b5d7

    const-string v15, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v2, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 497
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v14

    .line 498
    .local v14, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v15, 0x0

    .line 501
    .local v15, "propagateMinConstraints$iv":Z
    invoke-static {v14, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v17, v12, 0x3

    and-int/lit8 v17, v17, 0x70

    .line 502
    nop

    .local v17, "$changed$iv$iv":I
    const/16 v18, 0x0

    .line 503
    .local v18, "$i$f$Layout":I
    const v8, -0x4ee9b9da

    const-string v1, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v2, v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 504
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v8

    .line 505
    .local v8, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 506
    .local v1, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v2, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 508
    .local v3, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    move/from16 v21, v4

    .end local v4    # "$dirty":I
    .local v21, "$dirty":I
    shl-int/lit8 v4, v17, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    .line 507
    nop

    .local v4, "$changed$iv$iv$iv":I
    move-object/from16 v22, v20

    .local v22, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v20, 0x0

    .line 509
    .local v20, "$i$f$ReusableComposeNode":I
    move-object/from16 v23, v5

    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v23, "modifier$iv":Landroidx/compose/ui/Modifier;
    const v5, -0x2942ffcf

    move/from16 v24, v13

    .end local v13    # "$i$f$Box":I
    .local v24, "$i$f$Box":I
    const-string v13, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v2, v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 510
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 511
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 512
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 513
    move-object/from16 v5, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 515
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_6
    move-object/from16 v5, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 517
    :goto_2
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .local v13, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 518
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v26, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v13, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 519
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v13, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 521
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v25, 0x0

    .line 522
    .local v25, "$i$f$set-impl":I
    move-object/from16 v27, v13

    .local v27, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 523
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_8

    move-object/from16 v29, v1

    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v9

    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v30, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v9, v27

    goto :goto_4

    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v30    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_8
    move-object/from16 v29, v1

    move-object/from16 v30, v9

    .line 524
    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v30    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v9, v27

    .end local v27    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 525
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 527
    :goto_4
    nop

    .line 522
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 527
    nop

    .line 528
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v25    # "$i$f$set-impl":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v13, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 529
    nop

    .line 517
    .end local v13    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 530
    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v5, p2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 531
    .local v9, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v13, -0x7ff519f7    # -1.000876E-39f

    move/from16 v22, v1

    .end local v1    # "$changed$iv":I
    .local v22, "$changed$iv":I
    const-string v1, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v5, v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v13, v12, 0x6

    and-int/lit8 v13, v13, 0x70

    or-int/lit8 v13, v13, 0x6

    .local v13, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v25, v5

    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 113
    .local v27, "$i$a$-Box-TodoScreenKt$TodoScreen$3$1":I
    move-object/from16 v28, v3

    .end local v3    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v28, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const v3, -0x1bba5280

    move/from16 v41, v4

    .end local v4    # "$changed$iv$iv$iv":I
    .local v41, "$changed$iv$iv$iv":I
    const-string v4, "C112@4893L998:TodoScreen.kt#73otoh"

    move/from16 v42, v8

    move-object/from16 v8, v25

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    .local v42, "compositeKeyHash$iv$iv":I
    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 114
    invoke-static {v6}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 113
    sget-object v3, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$1;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$1;

    move-object/from16 v33, v3

    check-cast v33, Lkotlin/jvm/functions/Function1;

    .line 120
    nop

    .line 121
    new-instance v3, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;

    invoke-direct {v3, v7, v10, v11}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$1$2;-><init>(Landroidx/compose/runtime/State;Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/State;)V

    const v4, -0x31ac96ea

    const/4 v7, 0x1

    invoke-static {v8, v4, v7, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Lkotlin/jvm/functions/Function4;

    .line 113
    const/16 v32, 0x0

    const/16 v34, 0x0

    const-string v35, "screen_transition"

    const/16 v36, 0x0

    const v39, 0x186180

    const/16 v40, 0x2a

    move-object/from16 v38, v8

    invoke-static/range {v31 .. v40}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    const v3, -0x17b07dad

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "137@5973L93"

    invoke-static {v8, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 137
    invoke-static {v11}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$12(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v6}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 139
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 138
    const/4 v4, 0x0

    invoke-static {v3, v8, v4, v4}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->EmptyState(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 113
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 142
    nop

    .line 531
    .end local v1    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "$changed":I
    .end local v27    # "$i$a$-Box-TodoScreenKt$TodoScreen$3$1":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 530
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v22    # "$changed$iv":I
    nop

    .line 532
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 509
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 533
    nop

    .line 503
    .end local v20    # "$i$f$ReusableComposeNode":I
    .end local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v41    # "$changed$iv$iv$iv":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 534
    nop

    .line 496
    .end local v17    # "$changed$iv$iv":I
    .end local v18    # "$i$f$Layout":I
    .end local v28    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v42    # "compositeKeyHash$iv$iv":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 535
    nop

    .end local v12    # "$changed$iv":I
    .end local v14    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v15    # "propagateMinConstraints$iv":Z
    .end local v23    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v24    # "$i$f$Box":I
    .end local v30    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const v1, -0x17b07cea

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "145@6180L29,144@6137L261"

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 144
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    const v4, 0x44faf204

    if-eqz v1, :cond_c

    .line 146
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    .local v1, "key1$iv":Ljava/lang/Object;
    iget-object v5, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x6

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 536
    .local v7, "$i$f$remember":I
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 537
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid$iv$iv":Z
    move-object/from16 v9, p2

    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 538
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 539
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v8, :cond_b

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_a

    goto :goto_5

    .line 543
    :cond_a
    move-object v5, v11

    goto :goto_6

    .line 540
    :cond_b
    :goto_5
    const/4 v13, 0x0

    .line 146
    .local v13, "$i$a$-remember-TodoScreenKt$TodoScreen$3$2":I
    new-instance v14, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$2$1;

    invoke-direct {v14, v5}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 540
    .end local v13    # "$i$a$-remember-TodoScreenKt$TodoScreen$3$2":I
    move-object v5, v14

    .line 541
    .local v5, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 542
    nop

    .line 539
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 538
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 537
    .end local v8    # "invalid$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    nop

    .line 536
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 537
    nop

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$remember":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 145
    new-instance v1, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$3;

    iget-object v6, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    iget-object v7, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showAddTaskDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v6, v7}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$3;-><init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    invoke-static {v5, v1, v2, v6}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->AddTaskDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 154
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$10(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 156
    iget-object v1, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$viewModel:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-virtual {v1}, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;->getSecretFlag()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v5, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    .local v5, "key1$iv":Ljava/lang/Object;
    iget-object v6, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v7, 0x6

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .line 544
    .local v8, "$i$f$remember":I
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 545
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv":Z
    move-object/from16 v4, p2

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 546
    .local v9, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 547
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v3, :cond_e

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_d

    goto :goto_7

    .line 551
    :cond_d
    move-object v6, v10

    goto :goto_8

    .line 548
    :cond_e
    :goto_7
    const/4 v12, 0x0

    .line 157
    .local v12, "$i$a$-remember-TodoScreenKt$TodoScreen$3$4":I
    new-instance v13, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$4$1;

    invoke-direct {v13, v6}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$3$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 548
    .end local v12    # "$i$a$-remember-TodoScreenKt$TodoScreen$3$4":I
    move-object v6, v13

    .line 549
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 550
    nop

    .line 547
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 546
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 545
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    nop

    .line 544
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 545
    nop

    .end local v5    # "key1$iv":Ljava/lang/Object;
    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$f$remember":I
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 155
    const/4 v3, 0x0

    invoke-static {v1, v6, v2, v3}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->SecretFlagDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 160
    :cond_10
    :goto_9
    return-void
.end method
