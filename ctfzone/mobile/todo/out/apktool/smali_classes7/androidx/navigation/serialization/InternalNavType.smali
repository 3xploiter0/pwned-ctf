.class public final Landroidx/navigation/serialization/InternalNavType;
.super Ljava/lang/Object;
.source "NavTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/serialization/InternalNavType$EnumNullableType;,
        Landroidx/navigation/serialization/InternalNavType$SerializableNullableType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0007R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/navigation/serialization/InternalNavType;",
        "",
        "()V",
        "BoolNullableType",
        "Landroidx/navigation/NavType;",
        "",
        "getBoolNullableType",
        "()Landroidx/navigation/NavType;",
        "FloatNullableType",
        "",
        "getFloatNullableType",
        "IntNullableType",
        "",
        "getIntNullableType",
        "LongNullableType",
        "",
        "getLongNullableType",
        "EnumNullableType",
        "SerializableNullableType",
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


# static fields
.field private static final BoolNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FloatNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/navigation/serialization/InternalNavType;

.field private static final IntNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LongNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/navigation/serialization/InternalNavType;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    .line 186
    new-instance v0, Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;-><init>()V

    check-cast v0, Landroidx/navigation/NavType;

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->IntNullableType:Landroidx/navigation/NavType;

    .line 208
    new-instance v0, Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;-><init>()V

    check-cast v0, Landroidx/navigation/NavType;

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->BoolNullableType:Landroidx/navigation/NavType;

    .line 228
    new-instance v0, Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;-><init>()V

    check-cast v0, Landroidx/navigation/NavType;

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->FloatNullableType:Landroidx/navigation/NavType;

    .line 248
    new-instance v0, Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;-><init>()V

    check-cast v0, Landroidx/navigation/NavType;

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->LongNullableType:Landroidx/navigation/NavType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBoolNullableType()Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->BoolNullableType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method public final getFloatNullableType()Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 227
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->FloatNullableType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method public final getIntNullableType()Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 185
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->IntNullableType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method public final getLongNullableType()Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 247
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->LongNullableType:Landroidx/navigation/NavType;

    return-object v0
.end method
