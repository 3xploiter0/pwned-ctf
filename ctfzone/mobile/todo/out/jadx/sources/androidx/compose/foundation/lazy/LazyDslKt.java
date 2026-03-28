package androidx.compose.foundation.lazy;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Lambda;

/* compiled from: LazyDsl.kt */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001al\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u0014\u001av\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\t2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u0016\u001al\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u001c\u001av\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\t2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u001d\u001a©\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u00112%\b\n\u0010&\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\b¢\u0006\u0002\u0010+\u001a\u0082\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\b¢\u0006\u0002\u0010,\u001a©\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u00112%\b\n\u0010&\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\b¢\u0006\u0002\u0010.\u001a\u0082\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\b¢\u0006\u0002\u0010/\u001aè\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2:\b\u0006\u0010&\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\b¢\u0006\u0002\u00104\u001a¬\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\b¢\u0006\u0002\u00105\u001aè\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2:\b\u0006\u0010&\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\b¢\u0006\u0002\u00106\u001a¬\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\b¢\u0006\u0002\u00107¨\u00068"}, d2 = {"LazyColumn", "", "modifier", "Landroidx/compose/ui/Modifier;", "state", "Landroidx/compose/foundation/lazy/LazyListState;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/LazyListScope;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "userScrollEnabled", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "LazyRow", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "items", "T", "", "key", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "item", "", "contentType", "itemContent", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/LazyItemScope;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "itemsIndexed", "", "index", "Lkotlin/Function3;", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyDslKt {
    public static /* synthetic */ void items$default(LazyListScope $this$items_u24default, List items, Function1 key, Function1 contentType, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        if ((i & 4) != 0) {
            Function1 contentType2 = C02841.INSTANCE;
            contentType = contentType2;
        }
        $this$items_u24default.items(items.size(), key != null ? new C02852(key, items) : null, new AnonymousClass3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new AnonymousClass4(itemContent, items)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0004\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Void;"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$1, reason: invalid class name and case insensitive filesystem */
    public static final class C02841 extends Lambda implements Function1 {
        public static final C02841 INSTANCE = new C02841();

        public C02841() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object p1) {
            return invoke((C02841) p1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Void invoke(T t) {
            return null;
        }
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$2, reason: invalid class name and case insensitive filesystem */
    public static final class C02852 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ Function1<T, Object> $key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02852(Function1<? super T, ? extends Object> function1, List<? extends T> list) {
            super(1);
            this.$key = function1;
            this.$items = list;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$key.invoke(this.$items.get(index));
        }
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$3, reason: invalid class name */
    public static final class AnonymousClass3 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ Function1<T, Object> $contentType;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(Function1<? super T, ? extends Object> function1, List<? extends T> list) {
            super(1);
            this.$contentType = function1;
            this.$items = list;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$contentType.invoke(this.$items.get(index));
        }
    }

    public static final <T> void items(LazyListScope $this$items, List<? extends T> list, Function1<? super T, ? extends Object> function1, Function1<? super T, ? extends Object> function12, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> function4) {
        $this$items.items(list.size(), function1 != null ? new C02852(function1, list) : null, new AnonymousClass3(function12, list), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new AnonymousClass4(function4, list)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/lazy/LazyItemScope;", "it", "", "invoke", "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$4, reason: invalid class name */
    public static final class AnonymousClass4 extends Lambda implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
        final /* synthetic */ Function4<LazyItemScope, T, Composer, Integer, Unit> $itemContent;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> function4, List<? extends T> list) {
            super(4);
            this.$itemContent = function4;
            this.$items = list;
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C152@7074L22:LazyDsl.kt#428nma");
            int $dirty = $changed;
            if (($changed & 6) == 0) {
                $dirty |= $composer.changed($this$items) ? 4 : 2;
            }
            if (($changed & 48) == 0) {
                $dirty |= $composer.changed(it) ? 32 : 16;
            }
            if (($dirty & 147) == 146 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-632812321, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)");
            }
            this.$itemContent.invoke($this$items, this.$items.get(it), $composer, Integer.valueOf($dirty & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static /* synthetic */ void items$default(LazyListScope $this$items_u24default, List items, Function1 key, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        Function1 contentType$iv = C02841.INSTANCE;
        $this$items_u24default.items(items.size(), key != null ? new C02852(key, items) : null, new AnonymousClass3(contentType$iv, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new AnonymousClass4(itemContent, items)));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ <T> void items(LazyListScope $this$items, List<? extends T> list, Function1<? super T, ? extends Object> function1, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> function4) {
        Function1 contentType$iv = C02841.INSTANCE;
        $this$items.items(list.size(), function1 != null ? new C02852(function1, list) : null, new AnonymousClass3(contentType$iv, list), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new AnonymousClass4(function4, list)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope $this$itemsIndexed_u24default, List items, Function2 key, Function2 contentType, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        if ((i & 4) != 0) {
            Function2 contentType2 = new Function2() { // from class: androidx.compose.foundation.lazy.LazyDslKt.itemsIndexed.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                    return invoke(((Number) p1).intValue(), (int) p2);
                }

                public final Void invoke(int i2, T t) {
                    return null;
                }
            };
            contentType = contentType2;
        }
        $this$itemsIndexed_u24default.items(items.size(), key != null ? new C02872(key, items) : null, new C02883(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new C02894(itemContent, items)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$2, reason: invalid class name and case insensitive filesystem */
    public static final class C02872 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ Function2<Integer, T, Object> $key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02872(Function2<? super Integer, ? super T, ? extends Object> function2, List<? extends T> list) {
            super(1);
            this.$key = function2;
            this.$items = list;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$key.invoke(Integer.valueOf(index), this.$items.get(index));
        }
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$3, reason: invalid class name and case insensitive filesystem */
    public static final class C02883 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ Function2<Integer, T, Object> $contentType;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02883(Function2<? super Integer, ? super T, ? extends Object> function2, List<? extends T> list) {
            super(1);
            this.$contentType = function2;
            this.$items = list;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$contentType.invoke(Integer.valueOf(index), this.$items.get(index));
        }
    }

    public static final <T> void itemsIndexed(LazyListScope $this$itemsIndexed, List<? extends T> list, Function2<? super Integer, ? super T, ? extends Object> function2, Function2<? super Integer, ? super T, ? extends Object> function22, Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> function5) {
        $this$itemsIndexed.items(list.size(), function2 != null ? new C02872(function2, list) : null, new C02883(function22, list), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new C02894(function5, list)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/lazy/LazyItemScope;", "it", "", "invoke", "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$4, reason: invalid class name and case insensitive filesystem */
    public static final class C02894 extends Lambda implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
        final /* synthetic */ Function5<LazyItemScope, Integer, T, Composer, Integer, Unit> $itemContent;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02894(Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> function5, List<? extends T> list) {
            super(4);
            this.$itemContent = function5;
            this.$items = list;
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C188@8866L26:LazyDsl.kt#428nma");
            int $dirty = $changed;
            if (($changed & 6) == 0) {
                $dirty |= $composer.changed($this$items) ? 4 : 2;
            }
            if (($changed & 48) == 0) {
                $dirty |= $composer.changed(it) ? 32 : 16;
            }
            if (($dirty & 147) == 146 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1091073711, $dirty, -1, "androidx.compose.foundation.lazy.itemsIndexed.<anonymous> (LazyDsl.kt:188)");
            }
            this.$itemContent.invoke($this$items, Integer.valueOf(it), this.$items.get(it), $composer, Integer.valueOf(($dirty & 14) | ($dirty & 112)));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope $this$itemsIndexed_u24default, List items, Function2 key, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        $this$itemsIndexed_u24default.items(items.size(), key != null ? new C02872(key, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new C02894(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope $this$items_u24default, Object[] items, Function1 key, Function1 contentType, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        if ((i & 4) != 0) {
            Function1 contentType2 = AnonymousClass5.INSTANCE;
            contentType = contentType2;
        }
        $this$items_u24default.items(items.length, key != null ? new AnonymousClass6(key, items) : null, new AnonymousClass7(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new AnonymousClass8(itemContent, items)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0004\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Void;"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$5, reason: invalid class name */
    public static final class AnonymousClass5 extends Lambda implements Function1 {
        public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

        public AnonymousClass5() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object p1) {
            return invoke((AnonymousClass5) p1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Void invoke(T t) {
            return null;
        }
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$6, reason: invalid class name */
    public static final class AnonymousClass6 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ Function1<T, Object> $key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass6(Function1<? super T, ? extends Object> function1, T[] tArr) {
            super(1);
            this.$key = function1;
            this.$items = tArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$key.invoke(this.$items[index]);
        }
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$7, reason: invalid class name */
    public static final class AnonymousClass7 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ Function1<T, Object> $contentType;
        final /* synthetic */ T[] $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(Function1<? super T, ? extends Object> function1, T[] tArr) {
            super(1);
            this.$contentType = function1;
            this.$items = tArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$contentType.invoke(this.$items[index]);
        }
    }

    public static final <T> void items(LazyListScope $this$items, T[] tArr, Function1<? super T, ? extends Object> function1, Function1<? super T, ? extends Object> function12, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> function4) {
        $this$items.items(tArr.length, function1 != null ? new AnonymousClass6(function1, tArr) : null, new AnonymousClass7(function12, tArr), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new AnonymousClass8(function4, tArr)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/lazy/LazyItemScope;", "it", "", "invoke", "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$8, reason: invalid class name */
    public static final class AnonymousClass8 extends Lambda implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
        final /* synthetic */ Function4<LazyItemScope, T, Composer, Integer, Unit> $itemContent;
        final /* synthetic */ T[] $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass8(Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> function4, T[] tArr) {
            super(4);
            this.$itemContent = function4;
            this.$items = tArr;
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C224@10590L22:LazyDsl.kt#428nma");
            int $dirty = $changed;
            if (($changed & 6) == 0) {
                $dirty |= $composer.changed($this$items) ? 4 : 2;
            }
            if (($changed & 48) == 0) {
                $dirty |= $composer.changed(it) ? 32 : 16;
            }
            if (($dirty & 147) == 146 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1043393750, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:224)");
            }
            this.$itemContent.invoke($this$items, this.$items[it], $composer, Integer.valueOf($dirty & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static /* synthetic */ void items$default(LazyListScope $this$items_u24default, Object[] items, Function1 key, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        Function1 contentType$iv = AnonymousClass5.INSTANCE;
        $this$items_u24default.items(items.length, key != null ? new AnonymousClass6(key, items) : null, new AnonymousClass7(contentType$iv, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new AnonymousClass8(itemContent, items)));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ <T> void items(LazyListScope $this$items, T[] tArr, Function1<? super T, ? extends Object> function1, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> function4) {
        Function1 contentType$iv = AnonymousClass5.INSTANCE;
        $this$items.items(tArr.length, function1 != null ? new AnonymousClass6(function1, tArr) : null, new AnonymousClass7(contentType$iv, tArr), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new AnonymousClass8(function4, tArr)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope $this$itemsIndexed_u24default, Object[] items, Function2 key, Function2 contentType, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        if ((i & 4) != 0) {
            Function2 contentType2 = new Function2() { // from class: androidx.compose.foundation.lazy.LazyDslKt.itemsIndexed.5
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                    return invoke(((Number) p1).intValue(), (int) p2);
                }

                public final Void invoke(int i2, T t) {
                    return null;
                }
            };
            contentType = contentType2;
        }
        $this$itemsIndexed_u24default.items(items.length, key != null ? new C02916(key, items) : null, new C02927(contentType, items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new C02938(itemContent, items)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$6, reason: invalid class name and case insensitive filesystem */
    public static final class C02916 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ Function2<Integer, T, Object> $key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02916(Function2<? super Integer, ? super T, ? extends Object> function2, T[] tArr) {
            super(1);
            this.$key = function2;
            this.$items = tArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$key.invoke(Integer.valueOf(index), this.$items[index]);
        }
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "index", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$7, reason: invalid class name and case insensitive filesystem */
    public static final class C02927 extends Lambda implements Function1<Integer, Object> {
        final /* synthetic */ Function2<Integer, T, Object> $contentType;
        final /* synthetic */ T[] $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02927(Function2<? super Integer, ? super T, ? extends Object> function2, T[] tArr) {
            super(1);
            this.$contentType = function2;
            this.$items = tArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Object invoke(int index) {
            return this.$contentType.invoke(Integer.valueOf(index), this.$items[index]);
        }
    }

    public static final <T> void itemsIndexed(LazyListScope $this$itemsIndexed, T[] tArr, Function2<? super Integer, ? super T, ? extends Object> function2, Function2<? super Integer, ? super T, ? extends Object> function22, Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> function5) {
        $this$itemsIndexed.items(tArr.length, function2 != null ? new C02916(function2, tArr) : null, new C02927(function22, tArr), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new C02938(function5, tArr)));
    }

    /* compiled from: LazyDsl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/lazy/LazyItemScope;", "it", "", "invoke", "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 8, 0}, xi = 176)
    /* renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$8, reason: invalid class name and case insensitive filesystem */
    public static final class C02938 extends Lambda implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
        final /* synthetic */ Function5<LazyItemScope, Integer, T, Composer, Integer, Unit> $itemContent;
        final /* synthetic */ T[] $items;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02938(Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> function5, T[] tArr) {
            super(4);
            this.$itemContent = function5;
            this.$items = tArr;
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C260@12387L26:LazyDsl.kt#428nma");
            int $dirty = $changed;
            if (($changed & 6) == 0) {
                $dirty |= $composer.changed($this$items) ? 4 : 2;
            }
            if (($changed & 48) == 0) {
                $dirty |= $composer.changed(it) ? 32 : 16;
            }
            if (($dirty & 147) == 146 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1600639390, $dirty, -1, "androidx.compose.foundation.lazy.itemsIndexed.<anonymous> (LazyDsl.kt:260)");
            }
            this.$itemContent.invoke($this$items, Integer.valueOf(it), this.$items[it], $composer, Integer.valueOf(($dirty & 14) | ($dirty & 112)));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope $this$itemsIndexed_u24default, Object[] items, Function2 key, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            key = null;
        }
        $this$itemsIndexed_u24default.items(items.length, key != null ? new C02916(key, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new C02938(itemContent, items)));
    }

    public static final void LazyRow(Modifier modifier, LazyListState state, PaddingValues contentPadding, boolean reverseLayout, Arrangement.Horizontal horizontalArrangement, Alignment.Vertical verticalAlignment, FlingBehavior flingBehavior, boolean userScrollEnabled, final Function1<? super LazyListScope, Unit> function1, Composer $composer, final int $changed, final int i) {
        PaddingValues contentPadding2;
        boolean reverseLayout2;
        Arrangement.Horizontal horizontalArrangement2;
        Alignment.Vertical verticalAlignment2;
        FlingBehavior flingBehavior2;
        LazyListState state2;
        Modifier modifier2;
        Modifier modifier3;
        boolean userScrollEnabled2;
        int $dirty;
        Alignment.Vertical verticalAlignment3;
        FlingBehavior flingBehavior3;
        Modifier modifier4;
        Alignment.Vertical verticalAlignment4;
        FlingBehavior flingBehavior4;
        LazyListState state3;
        boolean userScrollEnabled3;
        PaddingValues contentPadding3;
        boolean reverseLayout3;
        Arrangement.Horizontal horizontalArrangement3;
        Composer $composer2 = $composer.startRestartGroup(-1724297413);
        ComposerKt.sourceInformation($composer2, "C(LazyRow)P(4,6,1,5,3,8,2,7)301@14811L23,307@15162L15,311@15264L389:LazyDsl.kt#428nma");
        int $dirty2 = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= ((i & 2) == 0 && $composer2.changed(state)) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= 384;
            contentPadding2 = contentPadding;
        } else if (($changed & 384) == 0) {
            contentPadding2 = contentPadding;
            $dirty2 |= $composer2.changed(contentPadding2) ? 256 : 128;
        } else {
            contentPadding2 = contentPadding;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            reverseLayout2 = reverseLayout;
        } else if (($changed & 3072) == 0) {
            reverseLayout2 = reverseLayout;
            $dirty2 |= $composer2.changed(reverseLayout2) ? 2048 : 1024;
        } else {
            reverseLayout2 = reverseLayout;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                horizontalArrangement2 = horizontalArrangement;
                int i5 = $composer2.changed(horizontalArrangement2) ? 16384 : 8192;
                $dirty2 |= i5;
            } else {
                horizontalArrangement2 = horizontalArrangement;
            }
            $dirty2 |= i5;
        } else {
            horizontalArrangement2 = horizontalArrangement;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            verticalAlignment2 = verticalAlignment;
        } else if ((196608 & $changed) == 0) {
            verticalAlignment2 = verticalAlignment;
            $dirty2 |= $composer2.changed(verticalAlignment2) ? 131072 : 65536;
        } else {
            verticalAlignment2 = verticalAlignment;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                flingBehavior2 = flingBehavior;
                int i7 = $composer2.changed(flingBehavior2) ? 1048576 : 524288;
                $dirty2 |= i7;
            } else {
                flingBehavior2 = flingBehavior;
            }
            $dirty2 |= i7;
        } else {
            flingBehavior2 = flingBehavior;
        }
        int i8 = i & 128;
        if (i8 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer2.changed(userScrollEnabled) ? 8388608 : 4194304;
        }
        if ((i & 256) != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer2.changedInstance(function1) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if (($dirty2 & 38347923) == 38347922 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier;
            userScrollEnabled3 = userScrollEnabled;
            reverseLayout3 = reverseLayout2;
            horizontalArrangement3 = horizontalArrangement2;
            verticalAlignment4 = verticalAlignment2;
            flingBehavior4 = flingBehavior2;
            state3 = state;
            contentPadding3 = contentPadding2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 2) != 0) {
                    state2 = LazyListStateKt.rememberLazyListState(0, 0, $composer2, 0, 3);
                    $dirty2 &= -113;
                } else {
                    state2 = state;
                }
                if (i3 != 0) {
                    modifier2 = modifier5;
                    contentPadding2 = PaddingKt.m674PaddingValues0680j_4(Dp.m6485constructorimpl(0));
                } else {
                    modifier2 = modifier5;
                }
                if (i4 != 0) {
                    reverseLayout2 = false;
                }
                if ((i & 16) != 0) {
                    Arrangement arrangement = Arrangement.INSTANCE;
                    $dirty2 &= -57345;
                    horizontalArrangement2 = !reverseLayout2 ? arrangement.getStart() : arrangement.getEnd();
                }
                if (i6 != 0) {
                    verticalAlignment2 = Alignment.INSTANCE.getTop();
                }
                if ((i & 64) != 0) {
                    $dirty2 &= -3670017;
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior($composer2, 6);
                }
                if (i8 != 0) {
                    userScrollEnabled2 = true;
                    $dirty = $dirty2;
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                    modifier3 = modifier2;
                } else {
                    modifier3 = modifier2;
                    userScrollEnabled2 = userScrollEnabled;
                    $dirty = $dirty2;
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                }
                if ((i & 64) != 0) {
                    state2 = state;
                    userScrollEnabled2 = userScrollEnabled;
                    $dirty = $dirty2 & (-3670017);
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                    modifier3 = modifier;
                } else {
                    modifier3 = modifier;
                    state2 = state;
                    userScrollEnabled2 = userScrollEnabled;
                    $dirty = $dirty2;
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1724297413, $dirty, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:310)");
            }
            LazyListKt.LazyList(modifier3, state2, contentPadding2, reverseLayout2, false, flingBehavior3, userScrollEnabled2, 0, null, null, verticalAlignment3, horizontalArrangement2, function1, $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty >> 3) & 458752) | (($dirty >> 3) & 3670016), (($dirty >> 15) & 14) | (($dirty >> 9) & 112) | (($dirty >> 18) & 896), 896);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            verticalAlignment4 = verticalAlignment3;
            flingBehavior4 = flingBehavior3;
            state3 = state2;
            userScrollEnabled3 = userScrollEnabled2;
            contentPadding3 = contentPadding2;
            reverseLayout3 = reverseLayout2;
            horizontalArrangement3 = horizontalArrangement2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final LazyListState lazyListState = state3;
            final PaddingValues paddingValues = contentPadding3;
            final boolean z = reverseLayout3;
            final Arrangement.Horizontal horizontal = horizontalArrangement3;
            final Alignment.Vertical vertical = verticalAlignment4;
            final FlingBehavior flingBehavior5 = flingBehavior4;
            final boolean z2 = userScrollEnabled3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyDslKt.LazyRow.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    LazyDslKt.LazyRow(modifier6, lazyListState, paddingValues, z, horizontal, vertical, flingBehavior5, z2, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void LazyColumn(Modifier modifier, LazyListState state, PaddingValues contentPadding, boolean reverseLayout, Arrangement.Vertical verticalArrangement, Alignment.Horizontal horizontalAlignment, FlingBehavior flingBehavior, boolean userScrollEnabled, final Function1<? super LazyListScope, Unit> function1, Composer $composer, final int $changed, final int i) {
        PaddingValues contentPadding2;
        boolean reverseLayout2;
        Arrangement.Vertical verticalArrangement2;
        Alignment.Horizontal horizontalAlignment2;
        FlingBehavior flingBehavior2;
        LazyListState state2;
        Modifier modifier2;
        Modifier modifier3;
        boolean userScrollEnabled2;
        int $dirty;
        Alignment.Horizontal horizontalAlignment3;
        FlingBehavior flingBehavior3;
        Modifier modifier4;
        Alignment.Horizontal horizontalAlignment4;
        FlingBehavior flingBehavior4;
        LazyListState state3;
        boolean userScrollEnabled3;
        PaddingValues contentPadding3;
        boolean reverseLayout3;
        Arrangement.Vertical verticalArrangement3;
        Composer $composer2 = $composer.startRestartGroup(-740714857);
        ComposerKt.sourceInformation($composer2, "C(LazyColumn)P(4,6,1,5,8,3,2,7)357@17743L23,363@18097L15,367@18199L388:LazyDsl.kt#428nma");
        int $dirty2 = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= ((i & 2) == 0 && $composer2.changed(state)) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= 384;
            contentPadding2 = contentPadding;
        } else if (($changed & 384) == 0) {
            contentPadding2 = contentPadding;
            $dirty2 |= $composer2.changed(contentPadding2) ? 256 : 128;
        } else {
            contentPadding2 = contentPadding;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            reverseLayout2 = reverseLayout;
        } else if (($changed & 3072) == 0) {
            reverseLayout2 = reverseLayout;
            $dirty2 |= $composer2.changed(reverseLayout2) ? 2048 : 1024;
        } else {
            reverseLayout2 = reverseLayout;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                verticalArrangement2 = verticalArrangement;
                int i5 = $composer2.changed(verticalArrangement2) ? 16384 : 8192;
                $dirty2 |= i5;
            } else {
                verticalArrangement2 = verticalArrangement;
            }
            $dirty2 |= i5;
        } else {
            verticalArrangement2 = verticalArrangement;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontalAlignment2 = horizontalAlignment;
        } else if ((196608 & $changed) == 0) {
            horizontalAlignment2 = horizontalAlignment;
            $dirty2 |= $composer2.changed(horizontalAlignment2) ? 131072 : 65536;
        } else {
            horizontalAlignment2 = horizontalAlignment;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                flingBehavior2 = flingBehavior;
                int i7 = $composer2.changed(flingBehavior2) ? 1048576 : 524288;
                $dirty2 |= i7;
            } else {
                flingBehavior2 = flingBehavior;
            }
            $dirty2 |= i7;
        } else {
            flingBehavior2 = flingBehavior;
        }
        int i8 = i & 128;
        if (i8 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer2.changed(userScrollEnabled) ? 8388608 : 4194304;
        }
        if ((i & 256) != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer2.changedInstance(function1) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if (($dirty2 & 38347923) == 38347922 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier;
            userScrollEnabled3 = userScrollEnabled;
            reverseLayout3 = reverseLayout2;
            verticalArrangement3 = verticalArrangement2;
            horizontalAlignment4 = horizontalAlignment2;
            flingBehavior4 = flingBehavior2;
            state3 = state;
            contentPadding3 = contentPadding2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 2) != 0) {
                    state2 = LazyListStateKt.rememberLazyListState(0, 0, $composer2, 0, 3);
                    $dirty2 &= -113;
                } else {
                    state2 = state;
                }
                if (i3 != 0) {
                    modifier2 = modifier5;
                    contentPadding2 = PaddingKt.m674PaddingValues0680j_4(Dp.m6485constructorimpl(0));
                } else {
                    modifier2 = modifier5;
                }
                if (i4 != 0) {
                    reverseLayout2 = false;
                }
                if ((i & 16) != 0) {
                    Arrangement arrangement = Arrangement.INSTANCE;
                    $dirty2 &= -57345;
                    verticalArrangement2 = !reverseLayout2 ? arrangement.getTop() : arrangement.getBottom();
                }
                if (i6 != 0) {
                    horizontalAlignment2 = Alignment.INSTANCE.getStart();
                }
                if ((i & 64) != 0) {
                    $dirty2 &= -3670017;
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior($composer2, 6);
                }
                if (i8 != 0) {
                    userScrollEnabled2 = true;
                    $dirty = $dirty2;
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                    modifier3 = modifier2;
                } else {
                    modifier3 = modifier2;
                    userScrollEnabled2 = userScrollEnabled;
                    $dirty = $dirty2;
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                }
                if ((i & 64) != 0) {
                    state2 = state;
                    userScrollEnabled2 = userScrollEnabled;
                    $dirty = $dirty2 & (-3670017);
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                    modifier3 = modifier;
                } else {
                    modifier3 = modifier;
                    state2 = state;
                    userScrollEnabled2 = userScrollEnabled;
                    $dirty = $dirty2;
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-740714857, $dirty, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
            }
            LazyListKt.LazyList(modifier3, state2, contentPadding2, reverseLayout2, true, flingBehavior3, userScrollEnabled2, 0, horizontalAlignment3, verticalArrangement2, null, null, function1, $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty >> 3) & 458752) | (($dirty >> 3) & 3670016) | (($dirty << 9) & 234881024) | (($dirty << 15) & 1879048192), ($dirty >> 18) & 896, 3200);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            horizontalAlignment4 = horizontalAlignment3;
            flingBehavior4 = flingBehavior3;
            state3 = state2;
            userScrollEnabled3 = userScrollEnabled2;
            contentPadding3 = contentPadding2;
            reverseLayout3 = reverseLayout2;
            verticalArrangement3 = verticalArrangement2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final LazyListState lazyListState = state3;
            final PaddingValues paddingValues = contentPadding3;
            final boolean z = reverseLayout3;
            final Arrangement.Vertical vertical = verticalArrangement3;
            final Alignment.Horizontal horizontal = horizontalAlignment4;
            final FlingBehavior flingBehavior5 = flingBehavior4;
            final boolean z2 = userScrollEnabled3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyDslKt.LazyColumn.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    LazyDslKt.LazyColumn(modifier6, lazyListState, paddingValues, z, vertical, horizontal, flingBehavior5, z2, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ void LazyColumn(Modifier modifier, LazyListState state, PaddingValues contentPadding, boolean reverseLayout, Arrangement.Vertical verticalArrangement, Alignment.Horizontal horizontalAlignment, FlingBehavior flingBehavior, final Function1 content, Composer $composer, final int $changed, final int i) {
        LazyListState lazyListState;
        PaddingValues contentPadding2;
        boolean reverseLayout2;
        Arrangement.Vertical verticalArrangement2;
        Alignment.Horizontal horizontalAlignment2;
        FlingBehavior flingBehavior2;
        Modifier.Companion modifier2;
        LazyListState state2;
        int $dirty;
        Arrangement.Vertical verticalArrangement3;
        Alignment.Horizontal horizontalAlignment3;
        FlingBehavior flingBehavior3;
        Modifier modifier3;
        Arrangement.Vertical verticalArrangement4;
        LazyListState state3;
        Alignment.Horizontal horizontalAlignment4;
        FlingBehavior flingBehavior4;
        PaddingValues contentPadding3;
        boolean reverseLayout3;
        Composer $composer2 = $composer.startRestartGroup(-563353797);
        ComposerKt.sourceInformation($composer2, "C(LazyColumn)P(4,6,1,5,7,3,2)385@18761L23,391@19115L15,394@19178L350:LazyDsl.kt#428nma");
        int $dirty2 = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                lazyListState = state;
                int i3 = $composer2.changed(lazyListState) ? 32 : 16;
                $dirty2 |= i3;
            } else {
                lazyListState = state;
            }
            $dirty2 |= i3;
        } else {
            lazyListState = state;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= 384;
            contentPadding2 = contentPadding;
        } else if (($changed & 384) == 0) {
            contentPadding2 = contentPadding;
            $dirty2 |= $composer2.changed(contentPadding2) ? 256 : 128;
        } else {
            contentPadding2 = contentPadding;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            reverseLayout2 = reverseLayout;
        } else if (($changed & 3072) == 0) {
            reverseLayout2 = reverseLayout;
            $dirty2 |= $composer2.changed(reverseLayout2) ? 2048 : 1024;
        } else {
            reverseLayout2 = reverseLayout;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                verticalArrangement2 = verticalArrangement;
                int i6 = $composer2.changed(verticalArrangement2) ? 16384 : 8192;
                $dirty2 |= i6;
            } else {
                verticalArrangement2 = verticalArrangement;
            }
            $dirty2 |= i6;
        } else {
            verticalArrangement2 = verticalArrangement;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontalAlignment2 = horizontalAlignment;
        } else if ((196608 & $changed) == 0) {
            horizontalAlignment2 = horizontalAlignment;
            $dirty2 |= $composer2.changed(horizontalAlignment2) ? 131072 : 65536;
        } else {
            horizontalAlignment2 = horizontalAlignment;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                flingBehavior2 = flingBehavior;
                int i8 = $composer2.changed(flingBehavior2) ? 1048576 : 524288;
                $dirty2 |= i8;
            } else {
                flingBehavior2 = flingBehavior;
            }
            $dirty2 |= i8;
        } else {
            flingBehavior2 = flingBehavior;
        }
        if ((i & 128) != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer2.changedInstance(content) ? 8388608 : 4194304;
        }
        if (($dirty2 & 4793491) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            state3 = lazyListState;
            verticalArrangement4 = verticalArrangement2;
            horizontalAlignment4 = horizontalAlignment2;
            flingBehavior4 = flingBehavior2;
            modifier3 = modifier;
            contentPadding3 = contentPadding2;
            reverseLayout3 = reverseLayout2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier2 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 2) != 0) {
                    state2 = LazyListStateKt.rememberLazyListState(0, 0, $composer2, 0, 3);
                    $dirty2 &= -113;
                } else {
                    state2 = lazyListState;
                }
                if (i4 != 0) {
                    contentPadding2 = PaddingKt.m674PaddingValues0680j_4(Dp.m6485constructorimpl(0));
                }
                if (i5 != 0) {
                    reverseLayout2 = false;
                }
                if ((i & 16) != 0) {
                    Arrangement arrangement = Arrangement.INSTANCE;
                    $dirty2 &= -57345;
                    verticalArrangement2 = !reverseLayout2 ? arrangement.getTop() : arrangement.getBottom();
                }
                if (i7 != 0) {
                    horizontalAlignment2 = Alignment.INSTANCE.getStart();
                }
                if ((i & 64) != 0) {
                    $dirty = $dirty2 & (-3670017);
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior($composer2, 6);
                    verticalArrangement3 = verticalArrangement2;
                    horizontalAlignment3 = horizontalAlignment2;
                } else {
                    $dirty = $dirty2;
                    verticalArrangement3 = verticalArrangement2;
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                }
                if ((i & 64) != 0) {
                    $dirty = $dirty2 & (-3670017);
                    state2 = lazyListState;
                    verticalArrangement3 = verticalArrangement2;
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                    modifier2 = modifier;
                } else {
                    modifier2 = modifier;
                    $dirty = $dirty2;
                    state2 = lazyListState;
                    verticalArrangement3 = verticalArrangement2;
                    horizontalAlignment3 = horizontalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-563353797, $dirty, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:393)");
            }
            LazyColumn(modifier2, state2, contentPadding2, reverseLayout2, verticalArrangement3, horizontalAlignment3, flingBehavior3, true, content, $composer2, ($dirty & 14) | 12582912 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (($dirty << 3) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            verticalArrangement4 = verticalArrangement3;
            state3 = state2;
            horizontalAlignment4 = horizontalAlignment3;
            flingBehavior4 = flingBehavior3;
            contentPadding3 = contentPadding2;
            reverseLayout3 = reverseLayout2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final LazyListState lazyListState2 = state3;
            final PaddingValues paddingValues = contentPadding3;
            final boolean z = reverseLayout3;
            final Arrangement.Vertical vertical = verticalArrangement4;
            final Alignment.Horizontal horizontal = horizontalAlignment4;
            final FlingBehavior flingBehavior5 = flingBehavior4;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyDslKt.LazyColumn.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    LazyDslKt.LazyColumn(modifier4, lazyListState2, paddingValues, z, vertical, horizontal, flingBehavior5, content, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ void LazyRow(Modifier modifier, LazyListState state, PaddingValues contentPadding, boolean reverseLayout, Arrangement.Horizontal horizontalArrangement, Alignment.Vertical verticalAlignment, FlingBehavior flingBehavior, final Function1 content, Composer $composer, final int $changed, final int i) {
        LazyListState lazyListState;
        PaddingValues contentPadding2;
        boolean reverseLayout2;
        Arrangement.Horizontal horizontalArrangement2;
        Alignment.Vertical verticalAlignment2;
        FlingBehavior flingBehavior2;
        Modifier.Companion modifier2;
        LazyListState state2;
        int $dirty;
        Arrangement.Horizontal horizontalArrangement3;
        Alignment.Vertical verticalAlignment3;
        FlingBehavior flingBehavior3;
        Modifier modifier3;
        Arrangement.Horizontal horizontalArrangement4;
        LazyListState state3;
        Alignment.Vertical verticalAlignment4;
        FlingBehavior flingBehavior4;
        PaddingValues contentPadding3;
        boolean reverseLayout3;
        Composer $composer2 = $composer.startRestartGroup(407929823);
        ComposerKt.sourceInformation($composer2, "C(LazyRow)P(4,6,1,5,3,7,2)411@19699L23,417@20050L15,420@20113L347:LazyDsl.kt#428nma");
        int $dirty2 = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                lazyListState = state;
                int i3 = $composer2.changed(lazyListState) ? 32 : 16;
                $dirty2 |= i3;
            } else {
                lazyListState = state;
            }
            $dirty2 |= i3;
        } else {
            lazyListState = state;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= 384;
            contentPadding2 = contentPadding;
        } else if (($changed & 384) == 0) {
            contentPadding2 = contentPadding;
            $dirty2 |= $composer2.changed(contentPadding2) ? 256 : 128;
        } else {
            contentPadding2 = contentPadding;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            reverseLayout2 = reverseLayout;
        } else if (($changed & 3072) == 0) {
            reverseLayout2 = reverseLayout;
            $dirty2 |= $composer2.changed(reverseLayout2) ? 2048 : 1024;
        } else {
            reverseLayout2 = reverseLayout;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                horizontalArrangement2 = horizontalArrangement;
                int i6 = $composer2.changed(horizontalArrangement2) ? 16384 : 8192;
                $dirty2 |= i6;
            } else {
                horizontalArrangement2 = horizontalArrangement;
            }
            $dirty2 |= i6;
        } else {
            horizontalArrangement2 = horizontalArrangement;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            verticalAlignment2 = verticalAlignment;
        } else if ((196608 & $changed) == 0) {
            verticalAlignment2 = verticalAlignment;
            $dirty2 |= $composer2.changed(verticalAlignment2) ? 131072 : 65536;
        } else {
            verticalAlignment2 = verticalAlignment;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                flingBehavior2 = flingBehavior;
                int i8 = $composer2.changed(flingBehavior2) ? 1048576 : 524288;
                $dirty2 |= i8;
            } else {
                flingBehavior2 = flingBehavior;
            }
            $dirty2 |= i8;
        } else {
            flingBehavior2 = flingBehavior;
        }
        if ((i & 128) != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer2.changedInstance(content) ? 8388608 : 4194304;
        }
        if (($dirty2 & 4793491) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            state3 = lazyListState;
            horizontalArrangement4 = horizontalArrangement2;
            verticalAlignment4 = verticalAlignment2;
            flingBehavior4 = flingBehavior2;
            modifier3 = modifier;
            contentPadding3 = contentPadding2;
            reverseLayout3 = reverseLayout2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                modifier2 = i2 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 2) != 0) {
                    state2 = LazyListStateKt.rememberLazyListState(0, 0, $composer2, 0, 3);
                    $dirty2 &= -113;
                } else {
                    state2 = lazyListState;
                }
                if (i4 != 0) {
                    contentPadding2 = PaddingKt.m674PaddingValues0680j_4(Dp.m6485constructorimpl(0));
                }
                if (i5 != 0) {
                    reverseLayout2 = false;
                }
                if ((i & 16) != 0) {
                    Arrangement arrangement = Arrangement.INSTANCE;
                    $dirty2 &= -57345;
                    horizontalArrangement2 = !reverseLayout2 ? arrangement.getStart() : arrangement.getEnd();
                }
                if (i7 != 0) {
                    verticalAlignment2 = Alignment.INSTANCE.getTop();
                }
                if ((i & 64) != 0) {
                    $dirty = $dirty2 & (-3670017);
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior($composer2, 6);
                    horizontalArrangement3 = horizontalArrangement2;
                    verticalAlignment3 = verticalAlignment2;
                } else {
                    $dirty = $dirty2;
                    horizontalArrangement3 = horizontalArrangement2;
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 16) != 0) {
                    $dirty2 &= -57345;
                }
                if ((i & 64) != 0) {
                    $dirty = $dirty2 & (-3670017);
                    state2 = lazyListState;
                    horizontalArrangement3 = horizontalArrangement2;
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                    modifier2 = modifier;
                } else {
                    modifier2 = modifier;
                    $dirty = $dirty2;
                    state2 = lazyListState;
                    horizontalArrangement3 = horizontalArrangement2;
                    verticalAlignment3 = verticalAlignment2;
                    flingBehavior3 = flingBehavior2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(407929823, $dirty, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:419)");
            }
            LazyRow(modifier2, state2, contentPadding2, reverseLayout2, horizontalArrangement3, verticalAlignment3, flingBehavior3, true, content, $composer2, ($dirty & 14) | 12582912 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (($dirty << 3) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            horizontalArrangement4 = horizontalArrangement3;
            state3 = state2;
            verticalAlignment4 = verticalAlignment3;
            flingBehavior4 = flingBehavior3;
            contentPadding3 = contentPadding2;
            reverseLayout3 = reverseLayout2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final LazyListState lazyListState2 = state3;
            final PaddingValues paddingValues = contentPadding3;
            final boolean z = reverseLayout3;
            final Arrangement.Horizontal horizontal = horizontalArrangement4;
            final Alignment.Vertical vertical = verticalAlignment4;
            final FlingBehavior flingBehavior5 = flingBehavior4;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyDslKt.LazyRow.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i9) {
                    LazyDslKt.LazyRow(modifier4, lazyListState2, paddingValues, z, horizontal, vertical, flingBehavior5, content, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }
}
