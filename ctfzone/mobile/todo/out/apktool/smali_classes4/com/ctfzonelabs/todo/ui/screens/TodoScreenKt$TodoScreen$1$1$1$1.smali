.class final Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TodoScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$7(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    iget-object v1, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$8(Landroidx/compose/runtime/MutableState;I)V

    .line 50
    iget-object v0, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$7(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$showSecretFlag$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v2}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$11(Landroidx/compose/runtime/MutableState;Z)V

    .line 52
    iget-object v0, p0, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt$TodoScreen$1$1$1$1;->$secretTapCount$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ctfzonelabs/todo/ui/screens/TodoScreenKt;->access$TodoScreen$lambda$8(Landroidx/compose/runtime/MutableState;I)V

    .line 54
    :cond_0
    return-void
.end method
