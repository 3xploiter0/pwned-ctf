package androidx.navigation.compose;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.navigation.NavBackStackEntry;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: NavHost.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$29$1", f = "NavHost.kt", i = {}, l = {619, 626}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes7.dex */
final class NavHostKt$NavHost$29$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ NavBackStackEntry $backStackEntry;
    final /* synthetic */ Transition<NavBackStackEntry> $transition;
    final /* synthetic */ SeekableTransitionState<NavBackStackEntry> $transitionState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavHostKt$NavHost$29$1(SeekableTransitionState<NavBackStackEntry> seekableTransitionState, NavBackStackEntry navBackStackEntry, Transition<NavBackStackEntry> transition, Continuation<? super NavHostKt$NavHost$29$1> continuation) {
        super(2, continuation);
        this.$transitionState = seekableTransitionState;
        this.$backStackEntry = navBackStackEntry;
        this.$transition = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NavHostKt$NavHost$29$1 navHostKt$NavHost$29$1 = new NavHostKt$NavHost$29$1(this.$transitionState, this.$backStackEntry, this.$transition, continuation);
        navHostKt$NavHost$29$1.L$0 = obj;
        return navHostKt$NavHost$29$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NavHostKt$NavHost$29$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                final CoroutineScope $this$LaunchedEffect = (CoroutineScope) this.L$0;
                if (!Intrinsics.areEqual(this.$transitionState.getCurrentState(), this.$backStackEntry)) {
                    this.label = 1;
                    if (SeekableTransitionState.animateTo$default(this.$transitionState, this.$backStackEntry, null, this, 2, null) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                } else {
                    long totalDuration = this.$transition.getTotalDurationNanos() / DurationKt.NANOS_IN_MILLIS;
                    float fraction = this.$transitionState.getFraction();
                    TweenSpec tweenSpecTween$default = AnimationSpecKt.tween$default((int) (this.$transitionState.getFraction() * totalDuration), 0, null, 6, null);
                    final SeekableTransitionState<NavBackStackEntry> seekableTransitionState = this.$transitionState;
                    final NavBackStackEntry navBackStackEntry = this.$backStackEntry;
                    this.label = 2;
                    if (SuspendAnimationKt.animate$default(fraction, 0.0f, 0.0f, tweenSpecTween$default, new Function2<Float, Float, Unit>() { // from class: androidx.navigation.compose.NavHostKt$NavHost$29$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2) {
                            invoke(f.floatValue(), f2.floatValue());
                            return Unit.INSTANCE;
                        }

                        /* compiled from: NavHost.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1", f = "NavHost.kt", i = {}, l = {634, 638}, m = "invokeSuspend", n = {}, s = {})
                        /* renamed from: androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1, reason: invalid class name and collision with other inner class name */
                        static final class C01481 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ NavBackStackEntry $backStackEntry;
                            final /* synthetic */ SeekableTransitionState<NavBackStackEntry> $transitionState;
                            final /* synthetic */ float $value;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C01481(float f, SeekableTransitionState<NavBackStackEntry> seekableTransitionState, NavBackStackEntry navBackStackEntry, Continuation<? super C01481> continuation) {
                                super(2, continuation);
                                this.$value = f;
                                this.$transitionState = seekableTransitionState;
                                this.$backStackEntry = navBackStackEntry;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new C01481(this.$value, this.$transitionState, this.$backStackEntry, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((C01481) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
                            /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final java.lang.Object invokeSuspend(java.lang.Object r12) {
                                /*
                                    r11 = this;
                                    java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                                    int r1 = r11.label
                                    r2 = 1
                                    r3 = 0
                                    switch(r1) {
                                        case 0: goto L1d;
                                        case 1: goto L18;
                                        case 2: goto L13;
                                        default: goto Lb;
                                    }
                                Lb:
                                    java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                                    r12.<init>(r0)
                                    throw r12
                                L13:
                                    r0 = r11
                                    kotlin.ResultKt.throwOnFailure(r12)
                                    goto L57
                                L18:
                                    r1 = r11
                                    kotlin.ResultKt.throwOnFailure(r12)
                                    goto L3a
                                L1d:
                                    kotlin.ResultKt.throwOnFailure(r12)
                                    r1 = r11
                                    float r4 = r1.$value
                                    int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
                                    if (r4 <= 0) goto L3b
                                    androidx.compose.animation.core.SeekableTransitionState<androidx.navigation.NavBackStackEntry> r5 = r1.$transitionState
                                    float r6 = r1.$value
                                    r8 = r1
                                    kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
                                    r1.label = r2
                                    r7 = 0
                                    r9 = 2
                                    r10 = 0
                                    java.lang.Object r4 = androidx.compose.animation.core.SeekableTransitionState.seekTo$default(r5, r6, r7, r8, r9, r10)
                                    if (r4 != r0) goto L3a
                                    return r0
                                L3a:
                                L3b:
                                    float r4 = r1.$value
                                    int r3 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
                                    if (r3 != 0) goto L42
                                    goto L43
                                L42:
                                    r2 = 0
                                L43:
                                    if (r2 == 0) goto L58
                                    androidx.compose.animation.core.SeekableTransitionState<androidx.navigation.NavBackStackEntry> r2 = r1.$transitionState
                                    androidx.navigation.NavBackStackEntry r3 = r1.$backStackEntry
                                    r4 = r1
                                    kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                                    r5 = 2
                                    r1.label = r5
                                    java.lang.Object r2 = r2.snapTo(r3, r4)
                                    if (r2 != r0) goto L56
                                    return r0
                                L56:
                                    r0 = r1
                                L57:
                                    r1 = r0
                                L58:
                                    kotlin.Unit r0 = kotlin.Unit.INSTANCE
                                    return r0
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$29$1.AnonymousClass1.C01481.invokeSuspend(java.lang.Object):java.lang.Object");
                            }
                        }

                        public final void invoke(float value, float f) {
                            BuildersKt__Builders_commonKt.launch$default($this$LaunchedEffect, null, null, new C01481(value, seekableTransitionState, navBackStackEntry, null), 3, null);
                        }
                    }, this, 4, null) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                }
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            case 2:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
