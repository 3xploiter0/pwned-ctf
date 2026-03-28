.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3;
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
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,495:1\n149#2:496\n86#3:497\n82#3,7:498\n89#3:533\n93#3:553\n79#4,6:505\n86#4,4:520\n90#4,2:530\n94#4:552\n368#5,9:511\n377#5:532\n36#5,2:534\n36#5,2:542\n378#5,2:550\n4034#6,6:524\n1225#7,6:536\n1225#7,6:544\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3\n*L\n450#1:496\n449#1:497\n449#1:498,7\n449#1:533\n449#1:553\n449#1:505,6\n449#1:520,4\n449#1:530,2\n449#1:552\n449#1:511,9\n449#1:532\n454#1:534,2\n464#1:542,2\n449#1:550,2\n449#1:524,6\n454#1:536,6\n464#1:544,6\n*E\n"
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
.field final synthetic $description$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
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
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3;->$title$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3;->$description$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 448
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 124
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C448@15878L1024:TodoScreen.kt#73otoh"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 449
    and-int/lit8 v3, v2, 0xb

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 449
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "com.ctfzonelabs.todo.ui.screens.AddTaskDialog.<anonymous> (TodoScreen.kt:448)"

    const v5, -0x6458990a

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 450
    :cond_2
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v4, 0x10

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 496
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 450
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 449
    iget-object v4, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3;->$title$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3;->$description$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v6, 0x30

    .local v3, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 497
    .local v7, "$i$f$Column":I
    const v8, -0x1cd0f17e

    const-string v9, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    invoke-static {v1, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 498
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 500
    .local v8, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v9

    .line 503
    .local v9, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v3, v9, v1, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 504
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    .line 505
    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    const-string v14, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v1, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 506
    const/4 v13, 0x0

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 507
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 508
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v1, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 510
    .local v13, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    shl-int/lit8 v0, v11, 0x6

    and-int/lit16 v0, v0, 0x380

    const/16 v18, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 509
    move-object/from16 v19, v17

    .local v0, "$changed$iv$iv$iv":I
    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 511
    .local v17, "$i$f$ReusableComposeNode":I
    const v2, -0x2942ffcf

    move-object/from16 v20, v3

    .end local v3    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v20, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const-string v3, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 512
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 513
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 514
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 515
    move-object/from16 v2, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 517
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 519
    :goto_1
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 520
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 521
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 523
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 524
    .local v21, "$i$f$set-impl":I
    move-object/from16 v22, v3

    .local v22, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 525
    .local v23, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v24, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v24, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move/from16 v25, v7

    .end local v7    # "$i$f$Column":I
    .local v25, "$i$f$Column":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v7, v22

    goto :goto_3

    .end local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$Column":I
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v7    # "$i$f$Column":I
    :cond_6
    move-object/from16 v24, v2

    move/from16 v25, v7

    .line 526
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$Column":I
    .restart local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "$i$f$Column":I
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v7, v22

    .end local v22    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 527
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 529
    :goto_3
    nop

    .line 524
    .end local v7    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 529
    nop

    .line 530
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 531
    nop

    .line 519
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 532
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v2, p1

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 533
    .local v3, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v7, -0x16ef5699

    move/from16 v19, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v19, "$changed$iv$iv$iv":I
    const-string v0, "C88@4444L9:Column.kt#2w3rfo"

    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    .local v7, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v21, v2

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v112, v21

    const/16 v22, 0x0

    .line 452
    .local v22, "$i$a$-Column-TodoScreenKt$AddTaskDialog$3$1":I
    move-object/from16 v23, v0

    .end local v0    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    .local v23, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x6c0ff64f

    move/from16 v120, v1

    .end local v1    # "$changed$iv":I
    .local v120, "$changed$iv":I
    const-string v1, "C458@16359L11,457@16292L108,453@16074L14,451@15984L434,468@16829L11,467@16762L108,463@16531L20,461@16435L453:TodoScreen.kt#73otoh"

    move/from16 v121, v3

    move-object/from16 v3, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v121, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 453
    invoke-static {v4}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$AddTaskDialog$lambda$22(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    .line 456
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move/from16 v21, v6

    .end local v6    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const/4 v6, 0x0

    move/from16 v122, v7

    .end local v7    # "$changed":I
    .local v122, "$changed":I
    const/4 v7, 0x1

    move-object/from16 v123, v8

    .end local v8    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v123, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v8, 0x0

    invoke-static {v1, v8, v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 458
    sget-object v26, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 459
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v8, 0x0

    or-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v48

    .line 458
    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v104, 0x0

    const-wide/16 v106, 0x0

    const-wide/16 v108, 0x0

    const-wide/16 v110, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0xc00

    const v118, 0x7ffff7ff

    const/16 v119, 0xfff

    invoke-virtual/range {v26 .. v119}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v48

    .line 453
    nop

    .line 454
    move/from16 v6, v18

    .restart local v6    # "$changed$iv":I
    const/4 v7, 0x0

    .line 534
    .local v7, "$i$f$remember":I
    const v8, 0x44faf204

    move/from16 v26, v6

    .end local v6    # "$changed$iv":I
    .local v26, "$changed$iv":I
    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v3, v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 535
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid$iv$iv":Z
    move-object/from16 v27, v3

    .local v27, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 536
    .local v28, "$i$f$cache":I
    move/from16 v29, v7

    .end local v7    # "$i$f$remember":I
    .local v29, "$i$f$remember":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 537
    .local v30, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v8, :cond_8

    sget-object v31, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v32, v8

    .end local v8    # "invalid$iv$iv":Z
    .local v32, "invalid$iv$iv":Z
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_7

    goto :goto_4

    .line 541
    :cond_7
    move-object v4, v7

    move-object/from16 v31, v4

    move-object/from16 v7, v27

    goto :goto_5

    .line 537
    .end local v32    # "invalid$iv$iv":Z
    .restart local v8    # "invalid$iv$iv":Z
    :cond_8
    move/from16 v32, v8

    .line 538
    .end local v8    # "invalid$iv$iv":Z
    .restart local v32    # "invalid$iv$iv":Z
    :goto_4
    const/4 v8, 0x0

    .line 454
    .local v8, "$i$a$-remember-TodoScreenKt$AddTaskDialog$3$1$1":I
    move-object/from16 v31, v7

    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .local v31, "it$iv$iv":Ljava/lang/Object;
    new-instance v7, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3$1$1$1;

    invoke-direct {v7, v4}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 538
    .end local v8    # "$i$a$-remember-TodoScreenKt$AddTaskDialog$3$1$1":I
    move-object v4, v7

    .line 539
    .local v4, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v7, v27

    .end local v27    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 540
    nop

    .line 537
    .end local v4    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 536
    .end local v30    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v31    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 535
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$f$cache":I
    .end local v32    # "invalid$iv$iv":Z
    nop

    .line 534
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 535
    nop

    .end local v26    # "$changed$iv":I
    .end local v29    # "$i$f$remember":I
    move-object/from16 v27, v4

    check-cast v27, Lkotlin/jvm/functions/Function1;

    .line 456
    sget-object v4, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;

    invoke-virtual {v4}, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->getLambda-9$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v32

    .line 457
    nop

    .line 458
    nop

    .line 452
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const v50, 0x180180

    const/high16 v51, 0xc00000

    const/16 v52, 0x0

    const v53, 0x3dffb8

    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move-object/from16 v49, v3

    invoke-static/range {v26 .. v53}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 463
    invoke-static {v5}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$AddTaskDialog$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    .line 466
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v8, v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 468
    sget-object v26, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 469
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v8, 0x0

    or-int/2addr v7, v8

    invoke-virtual {v4, v3, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v48

    .line 468
    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    const-wide/16 v100, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v104, 0x0

    const-wide/16 v106, 0x0

    const-wide/16 v108, 0x0

    const-wide/16 v110, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0xc00

    const v118, 0x7ffff7ff

    const/16 v119, 0xfff

    move-object/from16 v112, v3

    invoke-virtual/range {v26 .. v119}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v48

    .line 463
    nop

    .line 464
    move/from16 v4, v18

    .local v4, "$changed$iv":I
    const/4 v7, 0x0

    .line 542
    .local v7, "$i$f$remember":I
    const v8, 0x44faf204

    invoke-static {v3, v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 543
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object v8, v3

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 544
    .local v16, "$i$f$cache":I
    nop

    .end local v4    # "$changed$iv":I
    .local v18, "$changed$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 545
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_a

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v6

    .end local v6    # "invalid$iv$iv":Z
    .local v28, "invalid$iv$iv":Z
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_9

    goto :goto_6

    .line 549
    :cond_9
    move-object/from16 v27, v4

    goto :goto_7

    .line 545
    .end local v28    # "invalid$iv$iv":Z
    .restart local v6    # "invalid$iv$iv":Z
    :cond_a
    move/from16 v28, v6

    .line 546
    .end local v6    # "invalid$iv$iv":Z
    .restart local v28    # "invalid$iv$iv":Z
    :goto_6
    const/4 v6, 0x0

    .line 464
    .local v6, "$i$a$-remember-TodoScreenKt$AddTaskDialog$3$1$2":I
    move-object/from16 v27, v4

    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .local v27, "it$iv$iv":Ljava/lang/Object;
    new-instance v4, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3$1$2$1;

    invoke-direct {v4, v5}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$AddTaskDialog$3$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 546
    .end local v6    # "$i$a$-remember-TodoScreenKt$AddTaskDialog$3$1$2":I
    nop

    .line 547
    .local v4, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 548
    nop

    .line 545
    .end local v4    # "value$iv$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 544
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v27    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 543
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local v28    # "invalid$iv$iv":Z
    nop

    .line 542
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 543
    nop

    .end local v7    # "$i$f$remember":I
    .end local v18    # "$changed$iv":I
    move-object/from16 v27, v4

    check-cast v27, Lkotlin/jvm/functions/Function1;

    .line 466
    sget-object v4, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;

    invoke-virtual {v4}, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->getLambda-10$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v32

    .line 467
    nop

    .line 468
    nop

    .line 462
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const v50, 0x180180

    const/high16 v51, 0x6000000

    const/16 v52, 0x0

    const v53, 0x3bffb8

    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move-object/from16 v49, v3

    invoke-static/range {v26 .. v53}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 452
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 472
    nop

    .line 533
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-Column-TodoScreenKt$AddTaskDialog$3$1":I
    .end local v23    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v122    # "$changed":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 532
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v120    # "$changed$iv":I
    .end local v121    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 550
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 511
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 551
    nop

    .line 505
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v19    # "$changed$iv$iv$iv":I
    .end local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 552
    nop

    .line 497
    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v13    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 553
    nop

    .end local v9    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v21    # "$changed$iv":I
    .end local v25    # "$i$f$Column":I
    .end local v123    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 473
    :cond_b
    :goto_8
    return-void
.end method
