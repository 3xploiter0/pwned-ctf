.class public final Landroidx/navigation/serialization/RouteDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "RouteDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0005\u00a2\u0006\u0002\u0010\u0008B\'\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0005\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J#\u0010\u001c\u001a\u0002H\u001d\"\u0004\u0008\u0000\u0010\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u001fH\u0000\u00a2\u0006\u0004\u0008 \u0010!J!\u0010\"\u001a\u0002H\u001d\"\u0004\u0008\u0000\u0010\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u001fH\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010#\u001a\u00020$H\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/navigation/serialization/RouteDecoder;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
        "bundle",
        "Landroid/os/Bundle;",
        "typeMap",
        "",
        "",
        "Landroidx/navigation/NavType;",
        "(Landroid/os/Bundle;Ljava/util/Map;)V",
        "handle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V",
        "decoder",
        "Landroidx/navigation/serialization/Decoder;",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule$annotations",
        "()V",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "decodeElementIndex",
        "",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "decodeNotNullMark",
        "",
        "decodeNull",
        "",
        "decodeRouteWithArgs",
        "T",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "decodeRouteWithArgs$navigation_common_release",
        "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "decodeSerializableValue",
        "decodeValue",
        "",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final decoder:Landroidx/navigation/serialization/Decoder;

.field private final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "typeMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 56
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleKt;->getEmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 43
    new-instance v0, Landroidx/navigation/serialization/BundleArgStore;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/BundleArgStore;-><init>(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 44
    .local v0, "store":Landroidx/navigation/serialization/BundleArgStore;
    new-instance v1, Landroidx/navigation/serialization/Decoder;

    move-object v2, v0

    check-cast v2, Landroidx/navigation/serialization/ArgStore;

    invoke-direct {v1, v2}, Landroidx/navigation/serialization/Decoder;-><init>(Landroidx/navigation/serialization/ArgStore;)V

    iput-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->decoder:Landroidx/navigation/serialization/Decoder;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V
    .locals 3
    .param p1, "handle"    # Landroidx/lifecycle/SavedStateHandle;
    .param p2, "typeMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 56
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleKt;->getEmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 49
    new-instance v0, Landroidx/navigation/serialization/SavedStateArgStore;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/SavedStateArgStore;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V

    .line 50
    .local v0, "store":Landroidx/navigation/serialization/SavedStateArgStore;
    new-instance v1, Landroidx/navigation/serialization/Decoder;

    move-object v2, v0

    check-cast v2, Landroidx/navigation/serialization/ArgStore;

    invoke-direct {v1, v2}, Landroidx/navigation/serialization/Decoder;-><init>(Landroidx/navigation/serialization/ArgStore;)V

    iput-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->decoder:Landroidx/navigation/serialization/Decoder;

    .line 51
    return-void
.end method

.method public static synthetic getSerializersModule$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->decoder:Landroidx/navigation/serialization/Decoder;

    invoke-virtual {v0, p1}, Landroidx/navigation/serialization/Decoder;->computeNextElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    return v0
.end method

.method public decodeNotNullMark()Z
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->decoder:Landroidx/navigation/serialization/Decoder;

    invoke-virtual {v0}, Landroidx/navigation/serialization/Decoder;->isCurrentElementNull()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public decodeNull()Ljava/lang/Void;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public final decodeRouteWithArgs$navigation_common_release(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .param p1, "deserializer"    # Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .param p1, "deserializer"    # Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->decoder:Landroidx/navigation/serialization/Decoder;

    invoke-virtual {v0}, Landroidx/navigation/serialization/Decoder;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public decodeValue()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->decoder:Landroidx/navigation/serialization/Decoder;

    invoke-virtual {v0}, Landroidx/navigation/serialization/Decoder;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method
