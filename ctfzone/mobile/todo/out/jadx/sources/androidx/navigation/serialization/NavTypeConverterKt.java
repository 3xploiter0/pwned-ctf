package androidx.navigation.serialization;

import androidx.navigation.NavType;
import androidx.navigation.serialization.InternalNavType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.CollectionDescriptorsKt;

/* compiled from: NavTypeConverter.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0002H\u0002\u001a\u0010\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004*\u00020\u0002H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0000\u001a\f\u0010\t\u001a\u00020\n*\u00020\u0002H\u0002¨\u0006\u000b"}, d2 = {"getClass", "Ljava/lang/Class;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getNavType", "Landroidx/navigation/NavType;", "matchKType", "", "kType", "Lkotlin/reflect/KType;", "toInternalType", "Landroidx/navigation/serialization/InternalType;", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class NavTypeConverterKt {

    /* compiled from: NavTypeConverter.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InternalType.values().length];
            try {
                iArr[InternalType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[InternalType.BOOL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[InternalType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[InternalType.LONG.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[InternalType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[InternalType.INT_NULLABLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[InternalType.BOOL_NULLABLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[InternalType.FLOAT_NULLABLE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[InternalType.LONG_NULLABLE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[InternalType.INT_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[InternalType.BOOL_ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[InternalType.FLOAT_ARRAY.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[InternalType.LONG_ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[InternalType.ARRAY.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[InternalType.LIST.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[InternalType.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[InternalType.ENUM_NULLABLE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final NavType<?> getNavType(SerialDescriptor $this$getNavType) throws ClassNotFoundException {
        NavType intNullableType;
        Intrinsics.checkNotNullParameter($this$getNavType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[toInternalType($this$getNavType).ordinal()]) {
            case 1:
                intNullableType = NavType.IntType;
                break;
            case 2:
                intNullableType = NavType.BoolType;
                break;
            case 3:
                intNullableType = NavType.FloatType;
                break;
            case 4:
                intNullableType = NavType.LongType;
                break;
            case 5:
                intNullableType = NavType.StringType;
                break;
            case 6:
                intNullableType = InternalNavType.INSTANCE.getIntNullableType();
                break;
            case 7:
                intNullableType = InternalNavType.INSTANCE.getBoolNullableType();
                break;
            case 8:
                intNullableType = InternalNavType.INSTANCE.getFloatNullableType();
                break;
            case 9:
                intNullableType = InternalNavType.INSTANCE.getLongNullableType();
                break;
            case 10:
                intNullableType = NavType.IntArrayType;
                break;
            case 11:
                intNullableType = NavType.BoolArrayType;
                break;
            case 12:
                intNullableType = NavType.FloatArrayType;
                break;
            case 13:
                intNullableType = NavType.LongArrayType;
                break;
            case 14:
                InternalType typeParameter = toInternalType($this$getNavType.getElementDescriptor(0));
                if (typeParameter != InternalType.STRING) {
                    intNullableType = UNKNOWN.INSTANCE;
                    break;
                } else {
                    intNullableType = NavType.StringArrayType;
                    break;
                }
            case 15:
                InternalType typeParameter2 = toInternalType($this$getNavType.getElementDescriptor(0));
                switch (WhenMappings.$EnumSwitchMapping$0[typeParameter2.ordinal()]) {
                    case 1:
                        intNullableType = NavType.IntListType;
                        break;
                    case 2:
                        intNullableType = NavType.BoolListType;
                        break;
                    case 3:
                        intNullableType = NavType.FloatListType;
                        break;
                    case 4:
                        intNullableType = NavType.LongListType;
                        break;
                    case 5:
                        intNullableType = NavType.StringListType;
                        break;
                    default:
                        intNullableType = UNKNOWN.INSTANCE;
                        break;
                }
            case 16:
                intNullableType = NavType.INSTANCE.parseSerializableOrParcelableType$navigation_common_release(getClass($this$getNavType), false);
                if (intNullableType == null) {
                    intNullableType = UNKNOWN.INSTANCE;
                    break;
                }
                break;
            case 17:
                Class clazz = getClass($this$getNavType);
                if (Enum.class.isAssignableFrom(clazz)) {
                    Intrinsics.checkNotNull(clazz, "null cannot be cast to non-null type java.lang.Class<kotlin.Enum<*>?>");
                    intNullableType = new InternalNavType.EnumNullableType(clazz);
                    break;
                } else {
                    intNullableType = UNKNOWN.INSTANCE;
                    break;
                }
            default:
                intNullableType = UNKNOWN.INSTANCE;
                break;
        }
        NavType type = intNullableType;
        return type;
    }

    private static final InternalType toInternalType(SerialDescriptor $this$toInternalType) {
        String serialName = StringsKt.replace$default($this$toInternalType.getSerialName(), "?", "", false, 4, (Object) null);
        return Intrinsics.areEqual($this$toInternalType.getKind(), SerialKind.ENUM.INSTANCE) ? $this$toInternalType.isNullable() ? InternalType.ENUM_NULLABLE : InternalType.ENUM : Intrinsics.areEqual(serialName, "kotlin.Int") ? $this$toInternalType.isNullable() ? InternalType.INT_NULLABLE : InternalType.INT : Intrinsics.areEqual(serialName, "kotlin.Boolean") ? $this$toInternalType.isNullable() ? InternalType.BOOL_NULLABLE : InternalType.BOOL : Intrinsics.areEqual(serialName, "kotlin.Float") ? $this$toInternalType.isNullable() ? InternalType.FLOAT_NULLABLE : InternalType.FLOAT : Intrinsics.areEqual(serialName, "kotlin.Long") ? $this$toInternalType.isNullable() ? InternalType.LONG_NULLABLE : InternalType.LONG : Intrinsics.areEqual(serialName, "kotlin.String") ? InternalType.STRING : Intrinsics.areEqual(serialName, "kotlin.IntArray") ? InternalType.INT_ARRAY : Intrinsics.areEqual(serialName, "kotlin.BooleanArray") ? InternalType.BOOL_ARRAY : Intrinsics.areEqual(serialName, "kotlin.FloatArray") ? InternalType.FLOAT_ARRAY : Intrinsics.areEqual(serialName, "kotlin.LongArray") ? InternalType.LONG_ARRAY : Intrinsics.areEqual(serialName, CollectionDescriptorsKt.ARRAY_NAME) ? InternalType.ARRAY : StringsKt.startsWith$default(serialName, CollectionDescriptorsKt.ARRAY_LIST_NAME, false, 2, (Object) null) ? InternalType.LIST : InternalType.UNKNOWN;
    }

    private static final Class<?> getClass(SerialDescriptor $this$getClass) throws ClassNotFoundException {
        String className = StringsKt.replace$default($this$getClass.getSerialName(), "?", "", false, 4, (Object) null);
        try {
            Class<?> cls = Class.forName(className);
            Intrinsics.checkNotNullExpressionValue(cls, "forName(className)");
            return cls;
        } catch (ClassNotFoundException e) {
            while (StringsKt.contains$default((CharSequence) className, (CharSequence) ".", false, 2, (Object) null)) {
                className = new Regex("(\\.+)(?!.*\\.)").replace(className, "\\$");
                try {
                    Class<?> cls2 = Class.forName(className);
                    Intrinsics.checkNotNullExpressionValue(cls2, "forName(className)");
                    return cls2;
                } catch (ClassNotFoundException e2) {
                }
            }
            throw new IllegalArgumentException("Cannot find class with name \"" + $this$getClass.getSerialName() + "\". Ensure that the serialName for this argument is the default fully qualified name");
        }
    }

    public static final boolean matchKType(SerialDescriptor $this$matchKType, KType kType) {
        Intrinsics.checkNotNullParameter($this$matchKType, "<this>");
        Intrinsics.checkNotNullParameter(kType, "kType");
        if ($this$matchKType.isNullable() != kType.isMarkedNullable()) {
            return false;
        }
        KSerializer kTypeSerializer = SerializersKt.serializerOrNull(kType);
        if (kTypeSerializer == null) {
            throw new IllegalStateException("Custom serializers declared directly on a class field via @Serializable(with = ...) is currently not supported by safe args for both custom types and third-party types. Please use @Serializable or @Serializable(with = ...) on the class or object declaration.".toString());
        }
        return Intrinsics.areEqual($this$matchKType, kTypeSerializer.getDescriptor());
    }
}
