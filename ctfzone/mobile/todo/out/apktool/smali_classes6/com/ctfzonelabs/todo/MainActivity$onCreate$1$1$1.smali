.class final Lcom/ctfzonelabs/todo/MainActivity$onCreate$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/MainActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/ctfzonelabs/todo/MainActivity$onCreate$1$1$1\n+ 2 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt__ViewModelKt\n*L\n1#1,40:1\n68#2:41\n57#2,10:42\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/ctfzonelabs/todo/MainActivity$onCreate$1$1$1\n*L\n34#1:41\n34#1:42,10\n*E\n"
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
.field final synthetic $viewModelFactory:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;


# direct methods
.method constructor <init>(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;)V
    .locals 1

    iput-object p1, p0, Lcom/ctfzonelabs/todo/MainActivity$onCreate$1$1$1;->$viewModelFactory:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 33
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ctfzonelabs/todo/MainActivity$onCreate$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C33@1362L37,34@1420L33:MainActivity.kt#cup462"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 34
    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.ctfzonelabs.todo.MainActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:33)"

    const v2, 0x66fec203

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ctfzonelabs/todo/MainActivity$onCreate$1$1$1;->$viewModelFactory:Lcom/ctfzonelabs/todo/viewmodel/TaskViewModelFactory;

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    .local v0, "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    move v9, v1

    .end local v1    # "$changed$iv":I
    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .line 41
    .local v10, "$i$f$viewModel":I
    const v1, 0x671a9c9b

    const-string v2, "CC(viewModel)P(3,2,1)56@2573L7,67@2980L63:ViewModel.kt#3tja67"

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 42
    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v11, v1

    .line 45
    .local v11, "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    const/4 v12, 0x0

    .line 48
    .local v12, "key$iv":Ljava/lang/String;
    instance-of v1, v11, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_3

    .line 49
    move-object v1, v11

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    .line 51
    :cond_3
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    move-object v5, v1

    :goto_1
    nop

    .local v5, "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    const-class v1, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 41
    shl-int/lit8 v2, v9, 0x3

    and-int/lit8 v2, v2, 0x70

    shl-int/lit8 v3, v9, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    shl-int/lit8 v3, v9, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    const v3, 0xe000

    shl-int/lit8 v4, v9, 0x3

    and-int/2addr v3, v4

    or-int v7, v2, v3

    const/4 v8, 0x0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v0

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 34
    .end local v0    # "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    .end local v5    # "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$viewModel":I
    .end local v11    # "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v12    # "key$iv":Ljava/lang/String;
    move-object v0, v1

    check-cast v0, Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;

    .line 35
    .local v0, "viewModel":Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;
    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->TodoScreen(Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 36
    .end local v0    # "viewModel":Lcom/ctfzonelabs/todo/viewmodel/TaskViewModel;
    :cond_4
    :goto_2
    return-void

    .line 42
    .local v0, "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    .restart local v9    # "$changed$iv":I
    .restart local v10    # "$i$f$viewModel":I
    :cond_5
    const/4 v1, 0x0

    .line 43
    .local v1, "$i$a$-checkNotNull-ViewModelKt__ViewModelKt$viewModel$1$iv":I
    nop

    .line 42
    .end local v1    # "$i$a$-checkNotNull-ViewModelKt__ViewModelKt$viewModel$1$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
