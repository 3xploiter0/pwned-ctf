.class public final Landroidx/navigation/serialization/NavTypeConverterKt;
.super Ljava/lang/Object;
.source "NavTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u00020\u0002H\u0002\u001a\u0010\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004*\u00020\u0002H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u0002H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "getClass",
        "Ljava/lang/Class;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getNavType",
        "Landroidx/navigation/NavType;",
        "matchKType",
        "",
        "kType",
        "Lkotlin/reflect/KType;",
        "toInternalType",
        "Landroidx/navigation/serialization/InternalType;",
        "navigation-common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final getClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Class;
    .locals 7
    .param p0, "$this$getClass"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 137
    const-string v0, "forName(className)"

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "?"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "className":Ljava/lang/String;
    nop

    .line 140
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 141
    :catch_0
    move-exception v2

    .line 144
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "."

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "(\\.+)(?!.*\\.)"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "\\$"

    invoke-virtual {v2, v3, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    nop

    .line 147
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 148
    :catch_1
    move-exception v2

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find class with name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". Ensure that the serialName for this argument is the default fully qualified name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/NavType;
    .locals 3
    .param p0, "$this$getNavType"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object v0

    sget-object v1, Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/navigation/serialization/InternalType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 100
    sget-object v0, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavType;

    goto/16 :goto_0

    .line 94
    :pswitch_0
    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->getClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "clazz":Ljava/lang/Class;
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Landroidx/navigation/serialization/InternalNavType$EnumNullableType;

    const-string v2, "null cannot be cast to non-null type java.lang.Class<kotlin.Enum<*>?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroidx/navigation/serialization/InternalNavType$EnumNullableType;-><init>(Ljava/lang/Class;)V

    check-cast v1, Landroidx/navigation/NavType;

    goto/16 :goto_0

    .line 98
    :cond_0
    sget-object v1, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    check-cast v1, Landroidx/navigation/NavType;

    .end local v0    # "clazz":Ljava/lang/Class;
    goto/16 :goto_0

    .line 92
    :pswitch_1
    sget-object v0, Landroidx/navigation/NavType;->Companion:Landroidx/navigation/NavType$Companion;

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->getClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/navigation/NavType$Companion;->parseSerializableOrParcelableType$navigation_common_release(Ljava/lang/Class;Z)Landroidx/navigation/NavType;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavType;

    goto/16 :goto_0

    .line 81
    :pswitch_2
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object v0

    .line 82
    .local v0, "typeParameter":Landroidx/navigation/serialization/InternalType;
    sget-object v1, Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/navigation/serialization/InternalType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 88
    sget-object v1, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    check-cast v1, Landroidx/navigation/NavType;

    .end local v0    # "typeParameter":Landroidx/navigation/serialization/InternalType;
    goto/16 :goto_0

    .line 87
    .restart local v0    # "typeParameter":Landroidx/navigation/serialization/InternalType;
    :pswitch_3
    sget-object v1, Landroidx/navigation/NavType;->StringListType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 86
    :pswitch_4
    sget-object v1, Landroidx/navigation/NavType;->LongListType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v1, Landroidx/navigation/NavType;->FloatListType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 84
    :pswitch_6
    sget-object v1, Landroidx/navigation/NavType;->BoolListType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 83
    :pswitch_7
    sget-object v1, Landroidx/navigation/NavType;->IntListType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 77
    .end local v0    # "typeParameter":Landroidx/navigation/serialization/InternalType;
    :pswitch_8
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object v0

    .line 78
    .restart local v0    # "typeParameter":Landroidx/navigation/serialization/InternalType;
    sget-object v1, Landroidx/navigation/serialization/InternalType;->STRING:Landroidx/navigation/serialization/InternalType;

    if-ne v0, v1, :cond_1

    sget-object v1, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    check-cast v1, Landroidx/navigation/NavType;

    .end local v0    # "typeParameter":Landroidx/navigation/serialization/InternalType;
    goto :goto_0

    .line 75
    :pswitch_9
    sget-object v1, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 74
    :pswitch_a
    sget-object v1, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 73
    :pswitch_b
    sget-object v1, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 72
    :pswitch_c
    sget-object v1, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 70
    :pswitch_d
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {v0}, Landroidx/navigation/serialization/InternalNavType;->getLongNullableType()Landroidx/navigation/NavType;

    move-result-object v1

    goto :goto_0

    .line 68
    :pswitch_e
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {v0}, Landroidx/navigation/serialization/InternalNavType;->getFloatNullableType()Landroidx/navigation/NavType;

    move-result-object v1

    goto :goto_0

    .line 66
    :pswitch_f
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {v0}, Landroidx/navigation/serialization/InternalNavType;->getBoolNullableType()Landroidx/navigation/NavType;

    move-result-object v1

    goto :goto_0

    .line 64
    :pswitch_10
    sget-object v0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    invoke-virtual {v0}, Landroidx/navigation/serialization/InternalNavType;->getIntNullableType()Landroidx/navigation/NavType;

    move-result-object v1

    goto :goto_0

    .line 71
    :pswitch_11
    sget-object v1, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 69
    :pswitch_12
    sget-object v1, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 67
    :pswitch_13
    sget-object v1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 65
    :pswitch_14
    sget-object v1, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    goto :goto_0

    .line 63
    :pswitch_15
    sget-object v1, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 62
    :cond_2
    :goto_0
    nop

    .line 61
    move-object v0, v1

    .line 102
    .local v0, "type":Landroidx/navigation/NavType;
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static final matchKType(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KType;)Z
    .locals 3
    .param p0, "$this$matchKType"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .param p1, "kType"    # Lkotlin/reflect/KType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v0

    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 164
    .local v0, "kTypeSerializer":Lkotlinx/serialization/KSerializer;
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 165
    .local v1, "$i$a$-checkNotNull-NavTypeConverterKt$matchKType$1":I
    nop

    .line 168
    nop

    .line 164
    .end local v1    # "$i$a$-checkNotNull-NavTypeConverterKt$matchKType$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Custom serializers declared directly on a class field via @Serializable(with = ...) is currently not supported by safe args for both custom types and third-party types. Please use @Serializable or @Serializable(with = ...) on the class or object declaration."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;
    .locals 6
    .param p0, "$this$toInternalType"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 112
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "?"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "serialName":Ljava/lang/String;
    nop

    .line 114
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/navigation/serialization/InternalType;->ENUM_NULLABLE:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    :cond_0
    sget-object v1, Landroidx/navigation/serialization/InternalType;->ENUM:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    .line 115
    :cond_1
    const-string v1, "kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/navigation/serialization/InternalType;->INT_NULLABLE:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    :cond_2
    sget-object v1, Landroidx/navigation/serialization/InternalType;->INT:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    .line 117
    :cond_3
    const-string v1, "kotlin.Boolean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/navigation/serialization/InternalType;->BOOL_NULLABLE:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    :cond_4
    sget-object v1, Landroidx/navigation/serialization/InternalType;->BOOL:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    .line 119
    :cond_5
    const-string v1, "kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/navigation/serialization/InternalType;->FLOAT_NULLABLE:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    :cond_6
    sget-object v1, Landroidx/navigation/serialization/InternalType;->FLOAT:Landroidx/navigation/serialization/InternalType;

    goto/16 :goto_0

    .line 121
    :cond_7
    const-string v1, "kotlin.Long"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 122
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroidx/navigation/serialization/InternalType;->LONG_NULLABLE:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    :cond_8
    sget-object v1, Landroidx/navigation/serialization/InternalType;->LONG:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 123
    :cond_9
    const-string v1, "kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroidx/navigation/serialization/InternalType;->STRING:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 124
    :cond_a
    const-string v1, "kotlin.IntArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/navigation/serialization/InternalType;->INT_ARRAY:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 125
    :cond_b
    const-string v1, "kotlin.BooleanArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/navigation/serialization/InternalType;->BOOL_ARRAY:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 126
    :cond_c
    const-string v1, "kotlin.FloatArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/navigation/serialization/InternalType;->FLOAT_ARRAY:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 127
    :cond_d
    const-string v1, "kotlin.LongArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroidx/navigation/serialization/InternalType;->LONG_ARRAY:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 128
    :cond_e
    const-string v1, "kotlin.Array"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/navigation/serialization/InternalType;->ARRAY:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 130
    :cond_f
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "kotlin.collections.ArrayList"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroidx/navigation/serialization/InternalType;->LIST:Landroidx/navigation/serialization/InternalType;

    goto :goto_0

    .line 132
    :cond_10
    sget-object v1, Landroidx/navigation/serialization/InternalType;->UNKNOWN:Landroidx/navigation/serialization/InternalType;

    .line 113
    :goto_0
    return-object v1
.end method
