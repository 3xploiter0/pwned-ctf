.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTaskItem$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->CompletedTaskItem(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTaskItem$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n*L\n1#1,495:1\n149#2:496\n149#2:497\n149#2:530\n149#2:567\n99#3,3:498\n102#3:529\n106#3:575\n79#4,6:501\n86#4,4:516\n90#4,2:526\n79#4,6:538\n86#4,4:553\n90#4,2:563\n94#4:570\n94#4:574\n368#5,9:507\n377#5:528\n368#5,9:544\n377#5:565\n378#5,2:568\n378#5,2:572\n4034#6,6:520\n4034#6,6:557\n86#7:531\n83#7,6:532\n89#7:566\n93#7:571\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTaskItem$2\n*L\n373#1:496\n374#1:497\n381#1:530\n392#1:567\n370#1:498,3\n370#1:529\n370#1:575\n370#1:501,6\n370#1:516,4\n370#1:526,2\n383#1:538,6\n383#1:553,4\n383#1:563,2\n383#1:570\n370#1:574\n370#1:507,9\n370#1:528\n383#1:544,9\n383#1:565\n383#1:568,2\n370#1:572,2\n370#1:520,6\n383#1:557,6\n383#1:531\n383#1:532,6\n383#1:566\n383#1:571\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $task:Lcom/ctfzonelabs/todo/data/Task;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/data/Task;)V
    .locals 1

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTaskItem$2;->$task:Lcom/ctfzonelabs/todo/data/Task;

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

    .line 369
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTaskItem$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 74
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Card"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C369@13108L1360:TodoScreen.kt#73otoh"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 370
    and-int/lit8 v2, v1, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 370
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.ctfzonelabs.todo.ui.screens.CompletedTaskItem.<anonymous> (TodoScreen.kt:369)"

    const v5, 0x6ffea317

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 371
    :cond_2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 372
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 373
    const/16 v4, 0x10

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 496
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 373
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 374
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v5, 0xc

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 497
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 374
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 375
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 370
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$CompletedTaskItem$2;->$task:Lcom/ctfzonelabs/todo/data/Task;

    const/16 v8, 0x1b6

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v4, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v5, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v8, "$changed$iv":I
    const/4 v9, 0x0

    .line 498
    .local v9, "$i$f$Row":I
    const v10, 0x2952b718

    const-string v11, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo"

    invoke-static {v0, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 499
    shr-int/lit8 v10, v8, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v8, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v4, v5, v0, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v8, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 500
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    .line 501
    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    const-string v14, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v0, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 502
    const/4 v15, 0x0

    invoke-static {v0, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 503
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 504
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 506
    .local v15, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    shl-int/lit8 v1, v11, 0x6

    and-int/lit16 v1, v1, 0x380

    move-object/from16 v20, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v20, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x6

    or-int/2addr v1, v2

    .line 505
    move-object/from16 v21, v19

    .local v1, "$changed$iv$iv$iv":I
    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 507
    .local v19, "$i$f$ReusableComposeNode":I
    const v2, -0x2942ffcf

    const-string v3, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 508
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 509
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 510
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 513
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 515
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 516
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v25, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 517
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 519
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v24, 0x0

    .line 520
    .local v24, "$i$f$set-impl":I
    move-object/from16 v26, v0

    .local v26, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 521
    .local v27, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v28

    if-nez v28, :cond_6

    move-object/from16 v28, v4

    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v28, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v5

    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v29, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v5, v26

    goto :goto_3

    .end local v28    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v29    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :cond_6
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    .line 522
    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v28    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v29    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v26

    .end local v26    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 523
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    :goto_3
    nop

    .line 520
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 525
    nop

    .line 526
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$i$f$set-impl":I
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 527
    nop

    .line 515
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 528
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 529
    .local v4, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v5, -0x184f2606

    move/from16 v21, v0

    .end local v0    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const-string v0, "C101@5126L9:Row.kt#2w3rfo"

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v5, v8, 0x6

    and-int/lit8 v5, v5, 0x70

    const/16 v22, 0x6

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed":I
    move-object/from16 v30, v0

    check-cast v30, Landroidx/compose/foundation/layout/RowScope;

    .local v30, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v2

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 377
    .local v24, "$i$a$-Row-TodoScreenKt$CompletedTaskItem$2$1":I
    move/from16 v26, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v26, "$changed$iv$iv$iv":I
    const v1, 0x56067b9a

    move/from16 v27, v4

    .end local v4    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v27, "$i$a$-Layout-RowKt$Row$1$iv":I
    const-string v4, "C379@13508L11,376@13358L232,382@13603L855:TodoScreen.kt#73otoh"

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 378
    sget-object v1, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v1}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material/icons/filled/CheckCircleKt;->getCheckCircle(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v31

    .line 380
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/16 v18, 0x0

    or-int/lit8 v4, v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v34

    .line 381
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v4, 0x18

    .local v4, "$this$dp$iv":I
    const/16 v32, 0x0

    .line 530
    .local v32, "$i$f$getDp":I
    move/from16 v39, v5

    .end local v5    # "$changed":I
    .local v39, "$changed":I
    int-to-float v5, v4

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 381
    .end local v4    # "$this$dp$iv":I
    .end local v32    # "$i$f$getDp":I
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v33

    .line 378
    nop

    .line 379
    nop

    .line 381
    nop

    .line 380
    nop

    .line 377
    const-string v32, "Completed"

    const/16 v37, 0x1b0

    const/16 v38, 0x0

    move-object/from16 v36, v0

    invoke-static/range {v31 .. v38}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 383
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v31, v1

    check-cast v31, Landroidx/compose/ui/Modifier;

    const/16 v34, 0x2

    const/16 v35, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .line 531
    .local v5, "$i$f$Column":I
    move/from16 v31, v5

    .end local v5    # "$i$f$Column":I
    .local v31, "$i$f$Column":I
    const v5, -0x1cd0f17e

    const-string v6, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 532
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v5

    .line 533
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    .line 536
    .local v6, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v32, v4, 0x3

    and-int/lit8 v32, v32, 0xe

    shr-int/lit8 v33, v4, 0x3

    and-int/lit8 v33, v33, 0x70

    move/from16 v34, v8

    .end local v8    # "$changed$iv":I
    .local v34, "$changed$iv":I
    or-int v8, v32, v33

    invoke-static {v5, v6, v0, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v32, v4, 0x3

    and-int/lit8 v32, v32, 0x70

    .line 537
    nop

    .local v32, "$changed$iv$iv":I
    const/16 v33, 0x0

    .line 538
    .local v33, "$i$f$Layout":I
    move-object/from16 v35, v5

    const v5, -0x4ee9b9da

    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v35, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v0, v5, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 539
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 540
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 541
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v17, v6

    .end local v6    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v17, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 543
    .local v6, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v36

    move-object/from16 v37, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v37, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v32, 0x6

    and-int/lit16 v1, v1, 0x380

    const/16 v22, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 542
    nop

    .local v1, "$changed$iv$iv$iv":I
    move-object/from16 v38, v36

    .local v38, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v36, 0x0

    .line 544
    .local v36, "$i$f$ReusableComposeNode":I
    move/from16 v40, v9

    const v9, -0x2942ffcf

    .end local v9    # "$i$f$Row":I
    .local v40, "$i$f$Row":I
    invoke-static {v0, v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 545
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 546
    :cond_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 547
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 548
    move-object/from16 v3, v38

    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 550
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v3, v38

    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 552
    :goto_4
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 553
    .local v23, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v38, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v41, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v41, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v9, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 554
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 556
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v38, 0x0

    .line 557
    .local v38, "$i$f$set-impl":I
    move-object/from16 v42, v9

    .local v42, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v43, 0x0

    .line 558
    .local v43, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v44

    if-nez v44, :cond_a

    move-object/from16 v44, v5

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v44, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v45, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v45, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v8, v42

    goto :goto_6

    .end local v44    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v45    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_a
    move-object/from16 v44, v5

    move-object/from16 v45, v8

    .line 559
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v44    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v45    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v8, v42

    .end local v42    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 560
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 562
    :goto_6
    nop

    .line 557
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v43    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 562
    nop

    .line 563
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v38    # "$i$f$set-impl":I
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 564
    nop

    .line 552
    .end local v9    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 565
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v5, v0

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 566
    .local v8, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v9, -0x16ef5699

    move/from16 v23, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v23, "$changed$iv$iv$iv":I
    const-string v1, "C88@4444L9:Column.kt#2w3rfo"

    invoke-static {v5, v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x70

    const/16 v22, 0x6

    or-int/lit8 v9, v9, 0x6

    .local v9, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v38, v5

    .local v38, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v67, v38

    const/16 v42, 0x0

    .line 384
    .local v42, "$i$a$-Column-TodoScreenKt$CompletedTaskItem$2$1$1":I
    move-object/from16 v43, v1

    .end local v1    # "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v43, "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x2c11bce9

    move/from16 v71, v3

    .end local v3    # "$changed$iv":I
    .local v71, "$changed$iv":I
    const-string v3, "C385@13747L10,388@13932L11,383@13660L330:TodoScreen.kt#73otoh"

    move/from16 v72, v4

    move-object/from16 v4, v38

    .end local v38    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v72, "$changed$iv":I
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 385
    invoke-virtual {v7}, Lcom/ctfzonelabs/todo/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v46

    .line 386
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/16 v18, 0x0

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v66

    .line 387
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v53

    .line 388
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v57

    .line 389
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/16 v18, 0x0

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v58

    const/16 v64, 0xe

    const/16 v65, 0x0

    const v60, 0x3f19999a    # 0.6f

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-static/range {v58 .. v65}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v48

    .line 385
    nop

    .line 389
    nop

    .line 387
    nop

    .line 388
    nop

    .line 386
    nop

    .line 384
    const/16 v47, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/high16 v68, 0x6030000

    const/16 v69, 0x0

    const v70, 0xfeda

    invoke-static/range {v46 .. v70}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const v1, 0x56067e23

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "391@14064L40,394@14226L10,396@14364L11,392@14125L301"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v7}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 392
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x4

    .local v3, "$this$dp$iv":I
    const/16 v38, 0x0

    .line 567
    .local v38, "$i$f$getDp":I
    move-object/from16 v73, v6

    .end local v6    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v73, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    int-to-float v6, v3

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 392
    .end local v3    # "$this$dp$iv":I
    .end local v38    # "$i$f$getDp":I
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v4, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 394
    invoke-virtual {v7}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v46

    .line 395
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v6, 0x0

    or-int/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v66

    .line 396
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v57

    .line 397
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    or-int/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v47

    const/16 v53, 0xe

    const/16 v54, 0x0

    const/high16 v49, 0x3f000000    # 0.5f

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-static/range {v47 .. v54}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v48

    .line 394
    nop

    .line 397
    nop

    .line 396
    nop

    .line 395
    nop

    .line 393
    const/16 v47, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v55, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/high16 v68, 0x6000000

    const/16 v69, 0x0

    const v70, 0xfefa

    move-object/from16 v67, v4

    invoke-static/range {v46 .. v70}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_7

    .line 391
    .end local v73    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .restart local v6    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    :cond_b
    move-object/from16 v73, v6

    .line 393
    .end local v6    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .restart local v73    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 384
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 400
    nop

    .line 566
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v9    # "$changed":I
    .end local v42    # "$i$a$-Column-TodoScreenKt$CompletedTaskItem$2$1$1":I
    .end local v43    # "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 565
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v71    # "$changed$iv":I
    nop

    .line 568
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 544
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 569
    nop

    .line 538
    .end local v23    # "$changed$iv$iv$iv":I
    .end local v36    # "$i$f$ReusableComposeNode":I
    .end local v41    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 570
    nop

    .line 531
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v32    # "$changed$iv$iv":I
    .end local v33    # "$i$f$Layout":I
    .end local v44    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v73    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 571
    nop

    .line 377
    .end local v17    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v31    # "$i$f$Column":I
    .end local v35    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v45    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v72    # "$changed$iv":I
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 401
    nop

    .line 529
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-Row-TodoScreenKt$CompletedTaskItem$2$1":I
    .end local v30    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .end local v39    # "$changed":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 528
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed$iv":I
    .end local v27    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 572
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 507
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 573
    nop

    .line 501
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v26    # "$changed$iv$iv$iv":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 574
    nop

    .line 498
    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v15    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v16    # "compositeKeyHash$iv$iv":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 575
    nop

    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v28    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v29    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v34    # "$changed$iv":I
    .end local v40    # "$i$f$Row":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 402
    :cond_c
    :goto_8
    return-void
.end method
