.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->TaskItem(Lcom/ctfzonelabs/todo/data/Task;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTodoScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n*L\n1#1,495:1\n149#2:496\n149#2:529\n149#2:606\n149#2:615\n99#3,3:497\n102#3:528\n99#3,3:530\n102#3:561\n106#3:614\n106#3:619\n79#4,6:500\n86#4,4:515\n90#4,2:525\n79#4,6:533\n86#4,4:548\n90#4,2:558\n79#4,6:577\n86#4,4:592\n90#4,2:602\n94#4:609\n94#4:613\n94#4:618\n368#5,9:506\n377#5:527\n368#5,9:539\n377#5:560\n36#5,2:562\n368#5,9:583\n377#5:604\n378#5,2:607\n378#5,2:611\n378#5,2:616\n4034#6,6:519\n4034#6,6:552\n4034#6,6:596\n1225#7,6:564\n86#8:570\n83#8,6:571\n89#8:605\n93#8:610\n*S KotlinDebug\n*F\n+ 1 TodoScreen.kt\ncom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2\n*L\n307#1:496\n314#1:529\n331#1:606\n342#1:615\n304#1:497,3\n304#1:528\n311#1:530,3\n311#1:561\n311#1:614\n304#1:619\n304#1:500,6\n304#1:515,4\n304#1:525,2\n311#1:533,6\n311#1:548,4\n311#1:558,2\n323#1:577,6\n323#1:592,4\n323#1:602,2\n323#1:609\n311#1:613\n304#1:618\n304#1:506,9\n304#1:527\n311#1:539,9\n311#1:560\n318#1:562,2\n323#1:583,9\n323#1:604\n323#1:607,2\n311#1:611,2\n304#1:616,2\n304#1:519,6\n311#1:552,6\n323#1:596,6\n318#1:564,6\n323#1:570\n323#1:571,6\n323#1:605\n323#1:610\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDelete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $task:Lcom/ctfzonelabs/todo/data/Task;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;ILcom/ctfzonelabs/todo/data/Task;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I",
            "Lcom/ctfzonelabs/todo/data/Task;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$onDelete:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$$dirty:I

    iput-object p3, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$task:Lcom/ctfzonelabs/todo/data/Task;

    iput-object p4, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$onClick:Lkotlin/jvm/functions/Function0;

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

    .line 303
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 96
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C303@10701L1941:TodoScreen.kt#73otoh"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 304
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_d

    .line 304
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.ctfzonelabs.todo.ui.screens.TaskItem.<anonymous> (TodoScreen.kt:303)"

    const v6, 0x1454e836

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 305
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 306
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 307
    const/16 v5, 0x10

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 496
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 307
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 308
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 309
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v6

    .line 304
    iget-object v7, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$onDelete:Lkotlin/jvm/functions/Function0;

    iget v8, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$$dirty:I

    iget-object v9, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$task:Lcom/ctfzonelabs/todo/data/Task;

    iget-object v10, v0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2;->$onClick:Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x1b6

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v6, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v11, "$changed$iv":I
    move/from16 v16, v11

    .end local v11    # "$changed$iv":I
    .local v5, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .line 497
    .local v17, "$i$f$Row":I
    const v11, 0x2952b718

    const-string v12, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo"

    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 498
    shr-int/lit8 v13, v16, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v16, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v5, v6, v1, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .local v15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v13, v16, 0x3

    and-int/lit8 v13, v13, 0x70

    .line 499
    move/from16 v18, v13

    .local v18, "$changed$iv$iv":I
    const/16 v19, 0x0

    .line 500
    .local v19, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    const-string v14, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v1, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 501
    const/4 v13, 0x0

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v21

    .line 502
    .local v21, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 503
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 505
    .local v11, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v24

    shl-int/lit8 v0, v18, 0x6

    and-int/lit16 v0, v0, 0x380

    const/4 v2, 0x6

    or-int/2addr v0, v2

    .line 504
    move-object/from16 v25, v24

    .local v0, "$changed$iv$iv$iv":I
    .local v25, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v24, 0x0

    .line 506
    .local v24, "$i$f$ReusableComposeNode":I
    const v2, -0x2942ffcf

    move-object/from16 v27, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v27, "modifier$iv":Landroidx/compose/ui/Modifier;
    const-string v3, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 507
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 508
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 509
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 510
    move-object/from16 v2, v25

    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 512
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v25

    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 514
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 515
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v29, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v30, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 516
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 518
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v29, 0x0

    .line 519
    .local v29, "$i$f$set-impl":I
    move-object/from16 v31, v1

    .local v31, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 520
    .local v32, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v33

    if-nez v33, :cond_6

    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v33, v5

    .end local v5    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v33, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v5, v31

    goto :goto_3

    .end local v33    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v5    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_6
    move-object/from16 v33, v5

    .line 521
    .end local v5    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v33    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v31

    .end local v31    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 522
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 524
    :goto_3
    nop

    .line 519
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 524
    nop

    .line 525
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v29    # "$i$f$set-impl":I
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 526
    nop

    .line 514
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 527
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 528
    .local v4, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v5, -0x184f2606

    move/from16 v25, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v25, "$changed$iv$iv$iv":I
    const-string v0, "C101@5126L9:Row.kt#2w3rfo"

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v29, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v31, v16, 0x6

    and-int/lit8 v31, v31, 0x70

    const/16 v26, 0x6

    or-int/lit8 v31, v31, 0x6

    .local v31, "$changed":I
    check-cast v29, Landroidx/compose/foundation/layout/RowScope;

    .local v29, "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v32, v2

    .local v32, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v40, 0x0

    .line 311
    .local v40, "$i$a$-Row-TodoScreenKt$TaskItem$2$1":I
    const v5, 0x378652c1

    move/from16 v42, v1

    .end local v1    # "$changed$iv":I
    .local v42, "$changed$iv":I
    const-string v1, "C310@10948L1287,339@12248L384:TodoScreen.kt#73otoh"

    move-object/from16 v43, v15

    move-object/from16 v15, v32

    .end local v32    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    .local v43, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v15, v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 312
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v35, v1

    check-cast v35, Landroidx/compose/ui/Modifier;

    const/16 v38, 0x2

    const/16 v39, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    const/16 v37, 0x0

    move-object/from16 v34, v29

    invoke-static/range {v34 .. v39}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 313
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 314
    move/from16 v32, v4

    .end local v4    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v32, "$i$a$-Layout-RowKt$Row$1$iv":I
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    move-object/from16 v34, v6

    .end local v6    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v34, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v6, 0xc

    .local v6, "$this$dp$iv":I
    const/16 v35, 0x0

    .line 529
    .local v35, "$i$f$getDp":I
    move-object/from16 v36, v11

    .end local v11    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v36, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    int-to-float v11, v6

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 314
    .end local v6    # "$this$dp$iv":I
    .end local v35    # "$i$f$getDp":I
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    .line 311
    const/16 v6, 0x1b0

    .local v6, "$changed$iv":I
    const/4 v11, 0x0

    .line 530
    .local v11, "$i$f$Row":I
    move/from16 v35, v11

    const v11, 0x2952b718

    .end local v11    # "$i$f$Row":I
    .local v35, "$i$f$Row":I
    invoke-static {v15, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 531
    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    shr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v6, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v4, v5, v15, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v5, v6, 0x3

    and-int/lit8 v5, v5, 0x70

    .line 532
    nop

    .local v5, "$changed$iv$iv":I
    const/4 v11, 0x0

    .line 533
    .local v11, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-static {v15, v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 534
    const/4 v12, 0x0

    invoke-static {v15, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v23

    .line 535
    .local v23, "compositeKeyHash$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 536
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 538
    .local v1, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v37, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v37

    move/from16 v38, v11

    .end local v11    # "$i$f$Layout":I
    .local v38, "$i$f$Layout":I
    shl-int/lit8 v11, v5, 0x6

    and-int/lit16 v11, v11, 0x380

    const/16 v26, 0x6

    or-int/lit8 v11, v11, 0x6

    .line 537
    nop

    .local v11, "$changed$iv$iv$iv":I
    move-object/from16 v39, v37

    .local v39, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v37, 0x0

    .line 539
    .local v37, "$i$f$ReusableComposeNode":I
    move/from16 v44, v5

    const v5, -0x2942ffcf

    .end local v5    # "$changed$iv$iv":I
    .local v44, "$changed$iv$iv":I
    invoke-static {v15, v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 540
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 541
    :cond_7
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 542
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 543
    move-object/from16 v5, v39

    .end local v39    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 545
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v39    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v5, v39

    .end local v39    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 547
    :goto_4
    move-object/from16 v39, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v39    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 548
    .local v45, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v46, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v47, v13

    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v47, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v46 .. v46}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v5, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 549
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v5, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 551
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    .local v13, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v46, 0x0

    .line 552
    .local v46, "$i$f$set-impl":I
    move-object/from16 v48, v5

    .local v48, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 553
    .local v49, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v50

    if-nez v50, :cond_a

    move-object/from16 v50, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v50, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v51, v12

    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v12, v48

    goto :goto_6

    .end local v50    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_a
    move-object/from16 v50, v4

    move-object/from16 v51, v12

    .line 554
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v50    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v12, v48

    .end local v48    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 555
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v13}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 557
    :goto_6
    nop

    .line 552
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 557
    nop

    .line 558
    .end local v13    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v46    # "$i$f$set-impl":I
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 559
    nop

    .line 547
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v45    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 560
    shr-int/lit8 v4, v11, 0x6

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v5, v15

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 561
    .local v12, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v13, -0x184f2606

    invoke-static {v5, v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v13, v6, 0x6

    and-int/lit8 v13, v13, 0x70

    const/16 v26, 0x6

    or-int/lit8 v13, v13, 0x6

    .local v13, "$changed":I
    move-object/from16 v52, v0

    check-cast v52, Landroidx/compose/foundation/layout/RowScope;

    .local v52, "$this$invoke_u24lambda_u243_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v5

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 316
    .local v41, "$i$a$-Row-TodoScreenKt$TaskItem$2$1$1":I
    move-object/from16 v45, v1

    .end local v1    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v45, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const v1, -0x7b07bdc5

    move/from16 v46, v4

    .end local v4    # "$changed$iv":I
    .local v46, "$changed$iv":I
    const-string v4, "C317@11261L13,319@11383L11,318@11322L102,315@11165L277,322@11459L762:TodoScreen.kt#73otoh"

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 317
    invoke-virtual {v9}, Lcom/ctfzonelabs/todo/data/Task;->isCompleted()Z

    move-result v1

    shr-int/lit8 v4, v8, 0x3

    and-int/lit8 v4, v4, 0xe

    .line 318
    nop

    .restart local v4    # "$changed$iv":I
    const/16 v48, 0x0

    .line 562
    .local v48, "$i$f$remember":I
    move/from16 v49, v4

    .end local v4    # "$changed$iv":I
    .local v49, "$changed$iv":I
    const v4, 0x44faf204

    move/from16 v69, v6

    .end local v6    # "$changed$iv":I
    .local v69, "$changed$iv":I
    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 563
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv$iv":Z
    move-object v6, v0

    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v53, 0x0

    .line 564
    .local v53, "$i$f$cache":I
    move/from16 v70, v11

    .end local v11    # "$changed$iv$iv$iv":I
    .local v70, "$changed$iv$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/16 v54, 0x0

    .line 565
    .local v54, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_c

    sget-object v55, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v56, v4

    .end local v4    # "invalid$iv$iv":Z
    .local v56, "invalid$iv$iv":Z
    invoke-virtual/range {v55 .. v55}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v11, v4, :cond_b

    goto :goto_7

    .line 569
    :cond_b
    move-object v4, v11

    goto :goto_8

    .line 565
    .end local v56    # "invalid$iv$iv":Z
    .restart local v4    # "invalid$iv$iv":Z
    :cond_c
    move/from16 v56, v4

    .line 566
    .end local v4    # "invalid$iv$iv":Z
    .restart local v56    # "invalid$iv$iv":Z
    :goto_7
    const/4 v4, 0x0

    .line 318
    .local v4, "$i$a$-remember-TodoScreenKt$TaskItem$2$1$1$1":I
    move/from16 v55, v4

    .end local v4    # "$i$a$-remember-TodoScreenKt$TaskItem$2$1$1$1":I
    .local v55, "$i$a$-remember-TodoScreenKt$TaskItem$2$1$1$1":I
    new-instance v4, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2$1$1$1$1;

    invoke-direct {v4, v10}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TaskItem$2$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 566
    .end local v55    # "$i$a$-remember-TodoScreenKt$TaskItem$2$1$1$1":I
    nop

    .line 567
    .local v4, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 568
    nop

    .line 565
    .end local v4    # "value$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 564
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v54    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 563
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v53    # "$i$f$cache":I
    .end local v56    # "invalid$iv$iv":Z
    nop

    .line 562
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 563
    nop

    .end local v48    # "$i$f$remember":I
    .end local v49    # "$changed$iv":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 319
    sget-object v53, Landroidx/compose/material3/CheckboxDefaults;->INSTANCE:Landroidx/compose/material3/CheckboxDefaults;

    .line 320
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v10, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v11, 0x0

    or-int/2addr v10, v11

    invoke-virtual {v6, v0, v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v54

    sget v6, Landroidx/compose/material3/CheckboxDefaults;->$stable:I

    or-int/2addr v6, v11

    shl-int/lit8 v67, v6, 0x12

    .line 319
    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const/16 v68, 0x3e

    move-object/from16 v66, v0

    invoke-virtual/range {v53 .. v68}, Landroidx/compose/material3/CheckboxDefaults;->colors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CheckboxColors;

    move-result-object v57

    .line 316
    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x2c

    move/from16 v53, v1

    move-object/from16 v54, v4

    move-object/from16 v59, v0

    invoke-static/range {v53 .. v61}, Landroidx/compose/material3/CheckboxKt;->Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 323
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v53, v1

    check-cast v53, Landroidx/compose/ui/Modifier;

    const/16 v56, 0x2

    const/16 v57, 0x0

    const/high16 v54, 0x3f800000    # 1.0f

    const/16 v55, 0x0

    invoke-static/range {v52 .. v57}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v6, 0x0

    .line 570
    .local v6, "$i$f$Column":I
    const v10, -0x1cd0f17e

    const-string v11, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    invoke-static {v0, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 571
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v10

    .line 572
    .local v10, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v11

    .line 575
    .local v11, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v48, v4, 0x3

    and-int/lit8 v48, v48, 0xe

    shr-int/lit8 v49, v4, 0x3

    and-int/lit8 v49, v49, 0x70

    move/from16 v53, v6

    .end local v6    # "$i$f$Column":I
    .local v53, "$i$f$Column":I
    or-int v6, v48, v49

    invoke-static {v10, v11, v0, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v48, v4, 0x3

    and-int/lit8 v48, v48, 0x70

    .line 576
    nop

    .local v48, "$changed$iv$iv":I
    const/16 v49, 0x0

    .line 577
    .local v49, "$i$f$Layout":I
    move-object/from16 v54, v10

    const v10, -0x4ee9b9da

    .end local v10    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v54, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v0, v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 578
    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 579
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 580
    .local v10, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v20, v11

    .end local v11    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v20, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 582
    .local v11, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v55, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v55 .. v55}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v55

    move-object/from16 v56, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v56, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v48, 0x6

    and-int/lit16 v1, v1, 0x380

    const/16 v26, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 581
    move-object/from16 v57, v55

    .local v1, "$changed$iv$iv$iv":I
    .local v57, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v55, 0x0

    .line 583
    .local v55, "$i$f$ReusableComposeNode":I
    move/from16 v58, v12

    const v12, -0x2942ffcf

    .end local v12    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v58, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v0, v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 584
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 585
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 586
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 587
    move-object/from16 v3, v57

    .end local v57    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 589
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v57    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_e
    move-object/from16 v3, v57

    .end local v57    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 591
    :goto_9
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .local v12, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 592
    .local v28, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v57, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v59, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v59, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v57 .. v57}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 593
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 595
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v57, 0x0

    .line 596
    .local v57, "$i$f$set-impl":I
    move-object/from16 v60, v12

    .local v60, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v61, 0x0

    .line 597
    .local v61, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v62

    if-nez v62, :cond_10

    move-object/from16 v62, v6

    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v62, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v63, v10

    .end local v10    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v63, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v10, v60

    goto :goto_b

    .end local v62    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v63    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v10    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_10
    move-object/from16 v62, v6

    move-object/from16 v63, v10

    .line 598
    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v10    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v62    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v63    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v10, v60

    .end local v60    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 599
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 601
    :goto_b
    nop

    .line 596
    .end local v10    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v61    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 601
    nop

    .line 602
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v57    # "$i$f$set-impl":I
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 603
    nop

    .line 591
    .end local v12    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 604
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v6, v0

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 605
    .local v10, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v12, -0x16ef5699

    move/from16 v28, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v28, "$changed$iv$iv$iv":I
    const-string v1, "C88@4444L9:Column.kt#2w3rfo"

    invoke-static {v6, v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v12, v4, 0x6

    and-int/lit8 v12, v12, 0x70

    const/16 v26, 0x6

    or-int/lit8 v12, v12, 0x6

    .local v12, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$invoke_u24lambda_u243_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v57, v6

    .local v57, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v92, v57

    const/16 v60, 0x0

    .line 324
    .local v60, "$i$a$-Column-TodoScreenKt$TaskItem$2$1$1$2":I
    move-object/from16 v61, v1

    .end local v1    # "$this$invoke_u24lambda_u243_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .local v61, "$this$invoke_u24lambda_u243_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x15c48bf

    move/from16 v64, v3

    .end local v3    # "$changed$iv":I
    .local v64, "$changed$iv":I
    const-string v3, "C325@11615L10,327@11743L11,323@11520L266:TodoScreen.kt#73otoh"

    move/from16 v65, v4

    move-object/from16 v4, v57

    .end local v57    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v65, "$changed$iv":I
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 325
    invoke-virtual {v9}, Lcom/ctfzonelabs/todo/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v71

    .line 326
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/16 v22, 0x0

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v91

    .line 327
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v78

    .line 328
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v73

    .line 325
    nop

    .line 328
    nop

    .line 327
    nop

    .line 326
    nop

    .line 324
    const/16 v72, 0x0

    const-wide/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const-wide/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const-wide/16 v84, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/high16 v93, 0x30000

    const/16 v94, 0x0

    const v95, 0xffda

    invoke-static/range {v71 .. v95}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const v1, -0x7b07bb43

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "330@11868L40,333@12042L10,334@12115L11,331@11933L248"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v9}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 331
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x4

    .local v3, "$this$dp$iv":I
    const/16 v57, 0x0

    .line 606
    .local v57, "$i$f$getDp":I
    move/from16 v66, v10

    .end local v10    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .local v66, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    int-to-float v10, v3

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 331
    .end local v3    # "$this$dp$iv":I
    .end local v57    # "$i$f$getDp":I
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v4, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 333
    invoke-virtual {v9}, Lcom/ctfzonelabs/todo/data/Task;->getDescription()Ljava/lang/String;

    move-result-object v71

    .line 334
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    const/4 v9, 0x0

    or-int/2addr v3, v9

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v91

    .line 335
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    or-int/2addr v3, v9

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v72

    const/16 v78, 0xe

    const/16 v79, 0x0

    const v74, 0x3f333333    # 0.7f

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    invoke-static/range {v72 .. v79}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v73

    .line 333
    nop

    .line 335
    nop

    .line 334
    nop

    .line 332
    const/16 v72, 0x0

    const-wide/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const-wide/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const-wide/16 v84, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const v95, 0xfffa

    move-object/from16 v92, v4

    invoke-static/range {v71 .. v95}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_c

    .line 330
    .end local v66    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .restart local v10    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    :cond_11
    move/from16 v66, v10

    .line 332
    .end local v10    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .restart local v66    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    :goto_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 324
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 338
    nop

    .line 605
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v12    # "$changed":I
    .end local v60    # "$i$a$-Column-TodoScreenKt$TaskItem$2$1$1$2":I
    .end local v61    # "$this$invoke_u24lambda_u243_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 604
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v64    # "$changed$iv":I
    .end local v66    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 607
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 583
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 608
    nop

    .line 577
    .end local v28    # "$changed$iv$iv$iv":I
    .end local v55    # "$i$f$ReusableComposeNode":I
    .end local v59    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 609
    nop

    .line 570
    .end local v11    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v48    # "$changed$iv$iv":I
    .end local v49    # "$i$f$Layout":I
    .end local v63    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 610
    nop

    .line 316
    .end local v20    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v53    # "$i$f$Column":I
    .end local v54    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v56    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v62    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v65    # "$changed$iv":I
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 339
    nop

    .line 561
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "$changed":I
    .end local v41    # "$i$a$-Row-TodoScreenKt$TaskItem$2$1$1":I
    .end local v52    # "$this$invoke_u24lambda_u243_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 560
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v46    # "$changed$iv":I
    .end local v58    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 611
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 539
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 612
    nop

    .line 533
    .end local v37    # "$i$f$ReusableComposeNode":I
    .end local v39    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v70    # "$changed$iv$iv$iv":I
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 613
    nop

    .line 530
    .end local v23    # "compositeKeyHash$iv$iv":I
    .end local v38    # "$i$f$Layout":I
    .end local v44    # "$changed$iv$iv":I
    .end local v45    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 614
    nop

    .line 341
    .end local v35    # "$i$f$Row":I
    .end local v50    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v69    # "$changed$iv":I
    nop

    .line 342
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x28

    .local v1, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 615
    .local v3, "$i$f$getDp":I
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 342
    .end local v1    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->INSTANCE:Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;

    invoke-virtual {v1}, Lcom/ctfzonelabs/todo/ui/screens/ComposableSingletons$TodoScreenKt;->getLambda-5$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    const/4 v1, 0x6

    shr-int/lit8 v1, v8, 0x6

    and-int/lit8 v1, v1, 0xe

    const v3, 0x30030

    or-int v14, v1, v3

    .line 340
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v1, 0x1c

    move-object v8, v0

    move-object/from16 v0, v36

    .end local v36    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v0, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    move-object/from16 v3, v47

    .end local v47    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object v13, v15

    move-object v5, v15

    move-object/from16 v4, v43

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v43    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    move v15, v1

    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 311
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 351
    nop

    .line 528
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v29    # "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    .end local v31    # "$changed":I
    .end local v40    # "$i$a$-Row-TodoScreenKt$TaskItem$2$1":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 527
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v42    # "$changed$iv":I
    nop

    .line 616
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 506
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 617
    nop

    .line 500
    .end local v24    # "$i$f$ReusableComposeNode":I
    .end local v25    # "$changed$iv$iv$iv":I
    .end local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 618
    nop

    .line 497
    .end local v0    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v18    # "$changed$iv$iv":I
    .end local v19    # "$i$f$Layout":I
    .end local v21    # "compositeKeyHash$iv$iv":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 619
    nop

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$Row":I
    .end local v27    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v33    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v34    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 352
    :cond_12
    :goto_d
    return-void
.end method
