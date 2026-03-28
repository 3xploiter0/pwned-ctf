package androidx.navigation.serialization;

import androidx.autofill.HintConstants;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NamedNavArgumentKt;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: RouteSerializer.kt */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00070\u0006H\u0007¢\u0006\u0002\u0010\b\u001a&\u0010\t\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0002\u001a4\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006H\u0002\u001a\u008e\u0001\u0010\u0012\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000b2\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00070\u00062S\u0010\u0013\u001aO\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0016\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0016\u0012\b\b\u0010\u0012\u0004\b\b(\u0018\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007¢\u0006\f\b\u0016\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\n0\u0014H\u0003¢\u0006\u0002\b\u001a\u001a\u008c\u0001\u0010\u0012\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000b2\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u00062S\u0010\u0013\u001aO\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0016\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0016\u0012\b\b\u0010\u0012\u0004\b\b(\u0018\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007¢\u0006\f\b\u0016\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\n0\u0014H\u0003¢\u0006\u0002\b\u001b\u001a\u0018\u0010\u001c\u001a\u00020\u0015\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000bH\u0007\u001a8\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000b2\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006H\u0007\u001a>\u0010 \u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000b2\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0001H\u0000¨\u0006\""}, d2 = {"generateRouteWithArgs", "", "T", "", "route", "typeMap", "", "Landroidx/navigation/NavType;", "(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;", "assertNotAbstractClass", "", "Lkotlinx/serialization/KSerializer;", "handler", "Lkotlin/Function0;", "computeNavType", "Lkotlinx/serialization/descriptors/SerialDescriptor;", HintConstants.AUTOFILL_HINT_NAME, "Lkotlin/reflect/KType;", "forEachIndexed", "operation", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "index", "argName", "navType", "forEachIndexedName", "forEachIndexedKType", "generateHashCode", "generateNavArguments", "", "Landroidx/navigation/NamedNavArgument;", "generateRoutePattern", "path", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RouteSerializerKt {
    public static /* synthetic */ String generateRoutePattern$default(KSerializer kSerializer, Map map, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return generateRoutePattern(kSerializer, map, str);
    }

    public static final <T> String generateRoutePattern(final KSerializer<T> kSerializer, Map<KType, ? extends NavType<?>> typeMap, String path) {
        final RouteBuilder builder;
        Intrinsics.checkNotNullParameter(kSerializer, "<this>");
        Intrinsics.checkNotNullParameter(typeMap, "typeMap");
        assertNotAbstractClass(kSerializer, new Function0<Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateRoutePattern.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StringBuilder sbAppend = new StringBuilder().append("Cannot generate route pattern from polymorphic class ");
                KClass<?> capturedKClass = ContextAwareKt.getCapturedKClass(kSerializer.getDescriptor());
                throw new IllegalArgumentException(sbAppend.append(capturedKClass != null ? capturedKClass.getSimpleName() : null).append(". Routes can only be generated from concrete classes or objects.").toString());
            }
        });
        if (path != null) {
            builder = new RouteBuilder(path, kSerializer);
        } else {
            builder = new RouteBuilder(kSerializer);
        }
        forEachIndexedKType(kSerializer, typeMap, new Function3<Integer, String, NavType<Object>, Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateRoutePattern.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, NavType<Object> navType) {
                invoke(num.intValue(), str, navType);
                return Unit.INSTANCE;
            }

            public final void invoke(int index, String argName, NavType<Object> navType) {
                Intrinsics.checkNotNullParameter(argName, "argName");
                Intrinsics.checkNotNullParameter(navType, "navType");
                builder.appendPattern(index, argName, navType);
            }
        });
        return builder.build();
    }

    public static /* synthetic */ List generateNavArguments$default(KSerializer kSerializer, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return generateNavArguments(kSerializer, map);
    }

    public static final <T> List<NamedNavArgument> generateNavArguments(final KSerializer<T> kSerializer, final Map<KType, ? extends NavType<?>> typeMap) {
        Intrinsics.checkNotNullParameter(kSerializer, "<this>");
        Intrinsics.checkNotNullParameter(typeMap, "typeMap");
        assertNotAbstractClass(kSerializer, new Function0<Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateNavArguments.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                throw new IllegalArgumentException("Cannot generate NavArguments for polymorphic serializer " + kSerializer + ". Arguments can only be generated from concrete classes or objects.");
            }
        });
        int elementsCount = kSerializer.getDescriptor().getElementsCount();
        ArrayList arrayList = new ArrayList(elementsCount);
        for (int i = 0; i < elementsCount; i++) {
            final int index = i;
            final String name = kSerializer.getDescriptor().getElementName(index);
            arrayList.add(NamedNavArgumentKt.navArgument(name, new Function1<NavArgumentBuilder, Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt$generateNavArguments$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavArgumentBuilder navArgumentBuilder) {
                    invoke2(navArgumentBuilder);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavArgumentBuilder navArgument) {
                    Intrinsics.checkNotNullParameter(navArgument, "$this$navArgument");
                    SerialDescriptor element = kSerializer.getDescriptor().getElementDescriptor(index);
                    boolean isNullable = element.isNullable();
                    navArgument.setType(RouteSerializerKt.computeNavType(element, name, typeMap));
                    navArgument.setNullable(isNullable);
                    if (kSerializer.getDescriptor().isElementOptional(index)) {
                        navArgument.setUnknownDefaultValuePresent$navigation_common_release(true);
                    }
                }
            }));
        }
        return arrayList;
    }

    public static final <T> String generateRouteWithArgs(T route, Map<String, ? extends NavType<Object>> typeMap) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(typeMap, "typeMap");
        KSerializer serializer = SerializersKt.serializer(Reflection.getOrCreateKotlinClass(route.getClass()));
        final Map argMap = new RouteEncoder(serializer, typeMap).encodeToArgMap(route);
        final RouteBuilder builder = new RouteBuilder(serializer);
        forEachIndexedName(serializer, typeMap, new Function3<Integer, String, NavType<Object>, Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateRouteWithArgs.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, NavType<Object> navType) {
                invoke(num.intValue(), str, navType);
                return Unit.INSTANCE;
            }

            public final void invoke(int index, String argName, NavType<Object> navType) {
                Intrinsics.checkNotNullParameter(argName, "argName");
                Intrinsics.checkNotNullParameter(navType, "navType");
                List<String> list = argMap.get(argName);
                Intrinsics.checkNotNull(list);
                List<String> value = list;
                builder.appendArg(index, argName, navType, value);
            }
        });
        return builder.build();
    }

    private static final <T> void assertNotAbstractClass(KSerializer<T> kSerializer, Function0<Unit> function0) {
        if (kSerializer instanceof PolymorphicSerializer) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavType<Object> computeNavType(SerialDescriptor $this$computeNavType, String name, Map<KType, ? extends NavType<?>> map) {
        Object next;
        Iterator<T> it = map.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            KType kType = (KType) next;
            if (NavTypeConverterKt.matchKType($this$computeNavType, kType)) {
                break;
            }
        }
        KType it2 = (KType) next;
        NavType navType = it2 != null ? map.get(it2) : null;
        NavType customType = navType instanceof NavType ? navType : null;
        NavType result = customType == null ? NavTypeConverterKt.getNavType($this$computeNavType) : customType;
        if (Intrinsics.areEqual(result, UNKNOWN.INSTANCE)) {
            throw new IllegalArgumentException("Cannot cast " + name + " of type " + $this$computeNavType.getSerialName() + " to a NavType. Make sure to provide custom NavType for this argument.");
        }
        Intrinsics.checkNotNull(result, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any?>");
        return result;
    }

    public static final <T> int generateHashCode(KSerializer<T> kSerializer) {
        Intrinsics.checkNotNullParameter(kSerializer, "<this>");
        int hash = kSerializer.getDescriptor().getSerialName().hashCode();
        int elementsCount = kSerializer.getDescriptor().getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            hash = (hash * 31) + kSerializer.getDescriptor().getElementName(i).hashCode();
        }
        return hash;
    }

    static /* synthetic */ void forEachIndexedKType$default(KSerializer kSerializer, Map map, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        forEachIndexedKType(kSerializer, map, function3);
    }

    private static final <T> void forEachIndexedKType(KSerializer<T> kSerializer, Map<KType, ? extends NavType<?>> map, Function3<? super Integer, ? super String, ? super NavType<Object>, Unit> function3) {
        int elementsCount = kSerializer.getDescriptor().getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            String argName = kSerializer.getDescriptor().getElementName(i);
            NavType navType = computeNavType(kSerializer.getDescriptor().getElementDescriptor(i), argName, map);
            function3.invoke(Integer.valueOf(i), argName, navType);
        }
    }

    private static final <T> void forEachIndexedName(KSerializer<T> kSerializer, Map<String, ? extends NavType<Object>> map, Function3<? super Integer, ? super String, ? super NavType<Object>, Unit> function3) {
        int elementsCount = kSerializer.getDescriptor().getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            String argName = kSerializer.getDescriptor().getElementName(i);
            NavType navType = map.get(argName);
            if (navType == null) {
                throw new IllegalStateException(("Cannot locate NavType for argument [" + argName + ']').toString());
            }
            function3.invoke(Integer.valueOf(i), argName, navType);
        }
    }
}
