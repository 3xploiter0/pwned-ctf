.class final Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RouteSerializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavArgumentBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/navigation/NavArgumentBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $this_generateNavArguments:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/KSerializer;ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Lkotlinx/serialization/KSerializer;

    iput p2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    iput-object p3, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavArgumentBuilder;

    invoke-virtual {p0, v0}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->invoke(Landroidx/navigation/NavArgumentBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/navigation/NavArgumentBuilder;)V
    .locals 4
    .param p1, "$this$navArgument"    # Landroidx/navigation/NavArgumentBuilder;

    const-string v0, "$this$navArgument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iget v1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    .line 104
    .local v0, "element":Lkotlinx/serialization/descriptors/SerialDescriptor;
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    .line 105
    .local v1, "isNullable":Z
    iget-object v2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Landroidx/navigation/serialization/RouteSerializerKt;->access$computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 106
    invoke-virtual {p1, v1}, Landroidx/navigation/NavArgumentBuilder;->setNullable(Z)V

    .line 107
    iget-object v2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Lkotlinx/serialization/KSerializer;

    invoke-interface {v2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    iget v3, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    invoke-interface {v2, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/navigation/NavArgumentBuilder;->setUnknownDefaultValuePresent$navigation_common_release(Z)V

    .line 114
    :cond_0
    return-void
.end method
