.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,495:1\n149#2:496\n149#2:538\n50#3,3:497\n368#3,9:515\n377#3:536\n378#3,2:539\n1225#4,6:500\n99#5,3:506\n102#5:537\n106#5:542\n79#6,6:509\n86#6,4:524\n90#6,2:534\n94#6:541\n4034#7,6:528\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1\n*L\n47#1:496\n59#1:538\n48#1:497,3\n45#1:515,9\n45#1:536\n45#1:539,2\n48#1:500,6\n45#1:506,3\n45#1:537\n45#1:542\n45#1:509,6\n45#1:524,4\n45#1:534,2\n45#1:541\n45#1:528,6\n*E\n"
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
.field final synthetic $secretTapCount$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
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


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 44
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 49
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C47@2044L262,44@1836L1143:TodoScreen.kt#73otoh"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 45
    and-int/lit8 v3, v2, 0xb

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "com.ctfzonelabs.todo.ui.screens.TodoScreen.<anonymous>.<anonymous> (TodoScreen.kt:44)"

    const v5, -0x45becd44

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 46
    :cond_2
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    .line 47
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v5, 0xc

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 496
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 47
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    .line 48
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/Modifier;

    iget-object v5, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    .local v5, "key1$iv":Ljava/lang/Object;
    iget-object v7, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    .local v7, "key2$iv":Ljava/lang/Object;
    iget-object v8, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v10, 0x36

    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .line 497
    .local v11, "$i$f$remember":I
    const v12, 0x1e7b2b64

    const-string v13, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 499
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    .line 498
    move-object/from16 v13, p1

    .local v12, "invalid$iv$iv":Z
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 500
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 501
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v12, :cond_4

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v15, v2, :cond_3

    goto :goto_1

    .line 505
    :cond_3
    move-object v2, v15

    goto :goto_2

    .line 502
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-remember-TodoScreenKt$TodoScreen$1$1$1":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-remember-TodoScreenKt$TodoScreen$1$1$1":I
    .local v17, "$i$a$-remember-TodoScreenKt$TodoScreen$1$1$1":I
    new-instance v2, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;

    invoke-direct {v2, v8, v9}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 502
    .end local v17    # "$i$a$-remember-TodoScreenKt$TodoScreen$1$1$1":I
    nop

    .line 503
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 504
    nop

    .line 501
    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 500
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 498
    .end local v12    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    nop

    .line 497
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 498
    nop

    .end local v5    # "key1$iv":Ljava/lang/Object;
    .end local v7    # "key2$iv":Ljava/lang/Object;
    .end local v10    # "$changed$iv":I
    .end local v11    # "$i$f$remember":I
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 48
    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 45
    iget-object v5, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->$showCompletedTasks$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v6, 0x1b0

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 506
    .local v7, "$i$f$Row":I
    const v8, 0x2952b718

    const-string v9, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo"

    invoke-static {v1, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 507
    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    shr-int/lit8 v8, v6, 0x3

    and-int/lit8 v8, v8, 0xe

    shr-int/lit8 v9, v6, 0x3

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v8, v9

    invoke-static {v4, v3, v1, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v4, v6, 0x3

    and-int/lit8 v4, v4, 0x70

    .line 508
    nop

    .local v4, "$changed$iv$iv":I
    const/4 v8, 0x0

    .line 509
    .local v8, "$i$f$Layout":I
    const v9, -0x4ee9b9da

    const-string v10, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 510
    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v10

    .line 511
    .local v10, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 512
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 514
    .local v2, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    shl-int/lit8 v13, v4, 0x6

    and-int/lit16 v13, v13, 0x380

    or-int/lit8 v13, v13, 0x6

    .line 513
    nop

    .local v12, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "$changed$iv$iv$iv":I
    const/4 v14, 0x0

    .line 515
    .local v14, "$i$f$ReusableComposeNode":I
    const v15, -0x2942ffcf

    const-string v9, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v1, v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 516
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 517
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 518
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 519
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 521
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 523
    :goto_3
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 524
    .local v15, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 527
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 528
    .local v17, "$i$f$set-impl":I
    move-object/from16 v18, v9

    .local v18, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 529
    .local v19, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v20

    if-nez v20, :cond_8

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v20, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v3, v18

    goto :goto_5

    .end local v20    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_8
    move-object/from16 v20, v3

    .line 530
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v20    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v18

    .end local v18    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 531
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 533
    :goto_5
    nop

    .line 528
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 533
    nop

    .line 534
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 535
    nop

    .line 523
    .end local v9    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 536
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v1, p1

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 537
    .local v3, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v9, -0x184f2606

    const-string v15, "C101@5126L9:Row.kt#2w3rfo"

    invoke-static {v1, v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v9, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v15, v6, 0x6

    and-int/lit8 v15, v15, 0x70

    or-int/lit8 v15, v15, 0x6

    .local v15, "$changed":I
    check-cast v9, Landroidx/compose/foundation/layout/RowScope;

    .local v9, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v17, v1

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 56
    .local v18, "$i$a$-Row-TodoScreenKt$TodoScreen$1$1$2":I
    move/from16 v19, v0

    .end local v0    # "$changed$iv":I
    .local v19, "$changed$iv":I
    const v0, 0x6c512937

    move-object/from16 v46, v2

    .end local v2    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v46, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const-string v2, "C56@2400L45,59@2643L11,55@2355L345,61@2725L232:TodoScreen.kt#73otoh"

    move/from16 v47, v3

    move-object/from16 v3, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v47, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 57
    sget v0, Lcom/ctfzonelabs/todo/R$drawable;->ic_todo_logo:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v21

    .line 58
    nop

    .line 59
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x20

    .local v2, "$this$dp$iv":I
    const/16 v17, 0x0

    .line 538
    .local v17, "$i$f$getDp":I
    move/from16 v48, v4

    .end local v4    # "$changed$iv$iv":I
    .local v48, "$changed$iv$iv":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 59
    .end local v2    # "$this$dp$iv":I
    .end local v17    # "$i$f$getDp":I
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v23

    .line 60
    sget-object v24, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v4, 0x0

    or-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v25

    const/16 v28, 0x2

    const/16 v29, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v29}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v27

    .line 56
    const-string v22, "Todo Logo"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x1b8

    const/16 v30, 0x38

    move-object/from16 v28, v3

    invoke-static/range {v21 .. v30}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 63
    invoke-static {v5}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Completed Tasks"

    goto :goto_6

    :cond_9
    const-string v0, "My Todo List"

    :goto_6
    move-object/from16 v21, v0

    .line 64
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v28

    .line 65
    const/16 v0, 0x18

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v25

    .line 63
    nop

    .line 65
    nop

    .line 64
    nop

    .line 62
    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v43, 0x30c00

    const/16 v44, 0x0

    const v45, 0x1ffd6

    move-object/from16 v42, v3

    invoke-static/range {v21 .. v45}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 56
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 67
    nop

    .line 537
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v9    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .end local v15    # "$changed":I
    .end local v18    # "$i$a$-Row-TodoScreenKt$TodoScreen$1$1$2":I
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 536
    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$changed$iv":I
    .end local v47    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 539
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 515
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 540
    nop

    .line 509
    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$changed$iv$iv$iv":I
    .end local v14    # "$i$f$ReusableComposeNode":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 541
    nop

    .line 506
    .end local v8    # "$i$f$Layout":I
    .end local v10    # "compositeKeyHash$iv$iv":I
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v46    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v48    # "$changed$iv$iv":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 542
    nop

    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$Row":I
    .end local v20    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 68
    :cond_a
    :goto_7
    return-void
.end method
