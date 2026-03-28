package androidx.navigation.compose;

import androidx.activity.BackEventCompat;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: NavHost.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005H\u008a@"}, d2 = {"<anonymous>", "", "backEvent", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/activity/BackEventCompat;", "Lkotlin/jvm/JvmSuppressWildcards;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$25$1", f = "NavHost.kt", i = {0}, l = {521}, m = "invokeSuspend", n = {"currentBackStackEntry"}, s = {"L$0"})
/* loaded from: classes7.dex */
final class NavHostKt$NavHost$25$1 extends SuspendLambda implements Function2<Flow<BackEventCompat>, Continuation<? super Unit>, Object> {
    final /* synthetic */ ComposeNavigator $composeNavigator;
    final /* synthetic */ State<List<NavBackStackEntry>> $currentBackStack$delegate;
    final /* synthetic */ MutableState<Boolean> $inPredictiveBack$delegate;
    final /* synthetic */ MutableFloatState $progress$delegate;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    NavHostKt$NavHost$25$1(ComposeNavigator composeNavigator, MutableFloatState mutableFloatState, State<? extends List<NavBackStackEntry>> state, MutableState<Boolean> mutableState, Continuation<? super NavHostKt$NavHost$25$1> continuation) {
        super(2, continuation);
        this.$composeNavigator = composeNavigator;
        this.$progress$delegate = mutableFloatState;
        this.$currentBackStack$delegate = state;
        this.$inPredictiveBack$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = new NavHostKt$NavHost$25$1(this.$composeNavigator, this.$progress$delegate, this.$currentBackStack$delegate, this.$inPredictiveBack$delegate, continuation);
        navHostKt$NavHost$25$1.L$0 = obj;
        return navHostKt$NavHost$25$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Flow<BackEventCompat> flow, Continuation<? super Unit> continuation) {
        return ((NavHostKt$NavHost$25$1) create(flow, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1;
        final MutableState<Boolean> mutableState;
        final MutableFloatState mutableFloatState;
        NavBackStackEntry currentBackStackEntry;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Flow backEvent = (Flow) this.L$0;
                this.$progress$delegate.setFloatValue(0.0f);
                NavBackStackEntry currentBackStackEntry2 = (NavBackStackEntry) CollectionsKt.lastOrNull(NavHostKt.NavHost$lambda$6(this.$currentBackStack$delegate));
                ComposeNavigator composeNavigator = this.$composeNavigator;
                Intrinsics.checkNotNull(currentBackStackEntry2);
                composeNavigator.prepareForTransition(currentBackStackEntry2);
                NavBackStackEntry previousEntry = (NavBackStackEntry) NavHostKt.NavHost$lambda$6(this.$currentBackStack$delegate).get(NavHostKt.NavHost$lambda$6(this.$currentBackStack$delegate).size() - 2);
                this.$composeNavigator.prepareForTransition(previousEntry);
                try {
                    mutableState = this.$inPredictiveBack$delegate;
                    mutableFloatState = this.$progress$delegate;
                    this.L$0 = currentBackStackEntry2;
                    this.label = 1;
                } catch (CancellationException e) {
                    navHostKt$NavHost$25$1 = this;
                    NavHostKt.NavHost$lambda$12(navHostKt$NavHost$25$1.$inPredictiveBack$delegate, false);
                    return Unit.INSTANCE;
                }
                if (backEvent.collect(new FlowCollector() { // from class: androidx.navigation.compose.NavHostKt$NavHost$25$1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                        return emit((BackEventCompat) value, (Continuation<? super Unit>) $completion);
                    }

                    public final Object emit(BackEventCompat it, Continuation<? super Unit> continuation) {
                        NavHostKt.NavHost$lambda$12(mutableState, true);
                        mutableFloatState.setFloatValue(it.getProgress());
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                navHostKt$NavHost$25$1 = this;
                currentBackStackEntry = currentBackStackEntry2;
                NavHostKt.NavHost$lambda$12(navHostKt$NavHost$25$1.$inPredictiveBack$delegate, false);
                navHostKt$NavHost$25$1.$composeNavigator.popBackStack(currentBackStackEntry, false);
                return Unit.INSTANCE;
            case 1:
                navHostKt$NavHost$25$1 = this;
                currentBackStackEntry = (NavBackStackEntry) navHostKt$NavHost$25$1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    NavHostKt.NavHost$lambda$12(navHostKt$NavHost$25$1.$inPredictiveBack$delegate, false);
                    navHostKt$NavHost$25$1.$composeNavigator.popBackStack(currentBackStackEntry, false);
                } catch (CancellationException e2) {
                    NavHostKt.NavHost$lambda$12(navHostKt$NavHost$25$1.$inPredictiveBack$delegate, false);
                    return Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
