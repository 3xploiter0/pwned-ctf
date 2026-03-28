package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u000f*\u0001\u0013\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u001b\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0086@ø\u0001\u0000¢\u0006\u0004\b \u0010!J\u0006\u0010\"\u001a\u00020\u000bJ\u001b\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001eH\u0086@ø\u0001\u0000¢\u0006\u0004\b&\u0010!J\u0018\u0010'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u0019ø\u0001\u0000¢\u0006\u0004\b)\u0010*JA\u0010(\u001a\u00020$2\b\b\u0002\u0010+\u001a\u00020,2'\u0010-\u001a#\b\u0001\u0012\u0004\u0012\u00020/\u0012\n\u0012\b\u0012\u0004\u0012\u00020$00\u0012\u0006\u0012\u0004\u0018\u00010\u00010.¢\u0006\u0002\b1H\u0086@¢\u0006\u0002\u00102J\u0006\u00103\u001a\u00020\u000bJ8\u00104\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rJ&\u00105\u001a\u00020\u0019*\u00020\u00162\u0006\u00106\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u0010H\u0002ø\u0001\u0000¢\u0006\u0004\b8\u00109J\u0014\u0010:\u001a\u00020\u0019*\u00020\u0019ø\u0001\u0000¢\u0006\u0004\b;\u0010*J\n\u0010:\u001a\u00020<*\u00020<J\u0014\u0010=\u001a\u00020\u0019*\u00020\u0019ø\u0001\u0000¢\u0006\u0004\b>\u0010*J\u0016\u0010?\u001a\u00020\u001e*\u00020\u001eH\u0002ø\u0001\u0000¢\u0006\u0004\b@\u0010*J\u0014\u0010A\u001a\u00020<*\u00020\u0019ø\u0001\u0000¢\u0006\u0004\bB\u0010CJ\u0016\u0010A\u001a\u00020<*\u00020\u001eH\u0002ø\u0001\u0000¢\u0006\u0004\bD\u0010CJ\u0017\u0010E\u001a\u00020\u0019*\u00020<ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bF\u0010GJ\u001e\u00104\u001a\u00020\u001e*\u00020\u001e2\u0006\u0010H\u001a\u00020<H\u0002ø\u0001\u0000¢\u0006\u0004\bI\u0010JR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u00020\u0010X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006K"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollingLogic;", "", "scrollableState", "Landroidx/compose/foundation/gestures/ScrollableState;", "overscrollEffect", "Landroidx/compose/foundation/OverscrollEffect;", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "reverseDirection", "", "nestedScrollDispatcher", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V", "latestScrollSource", "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "I", "nestedScrollScope", "androidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1", "Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;", "outerStateScope", "Landroidx/compose/foundation/gestures/ScrollScope;", "performScrollForOverscroll", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "shouldDispatchOverscroll", "getShouldDispatchOverscroll", "()Z", "doFlingAnimation", "Landroidx/compose/ui/unit/Velocity;", "available", "doFlingAnimation-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isVertical", "onDragStopped", "", "initialVelocity", "onDragStopped-sF-c-tU", "performRawScroll", "scroll", "performRawScroll-MK-Hz9U", "(J)J", "scrollPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/NestedScrollScope;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldScrollImmediately", "update", "performScroll", "delta", "source", "performScroll-3eAAhYA", "(Landroidx/compose/foundation/gestures/ScrollScope;JI)J", "reverseIfNeeded", "reverseIfNeeded-MK-Hz9U", "", "singleAxisOffset", "singleAxisOffset-MK-Hz9U", "singleAxisVelocity", "singleAxisVelocity-AH228Gc", "toFloat", "toFloat-k-4lQ0M", "(J)F", "toFloat-TH1AsA0", "toOffset", "toOffset-tuRUvjQ", "(F)J", "newValue", "update-QWom1Mo", "(JF)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollingLogic {
    public static final int $stable = 8;
    private FlingBehavior flingBehavior;
    private NestedScrollDispatcher nestedScrollDispatcher;
    private Orientation orientation;
    private OverscrollEffect overscrollEffect;
    private boolean reverseDirection;
    private ScrollableState scrollableState;
    private int latestScrollSource = NestedScrollSource.INSTANCE.m5105getUserInputWNlRxjI();
    private ScrollScope outerStateScope = ScrollableKt.NoOpScrollScope;
    private final ScrollingLogic$nestedScrollScope$1 nestedScrollScope = new NestedScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1
        @Override // androidx.compose.foundation.gestures.NestedScrollScope
        /* renamed from: scrollBy-OzD1aCk */
        public long mo454scrollByOzD1aCk(long offset, int source) {
            ScrollScope $this$scrollBy_OzD1aCk_u24lambda_u240 = this.this$0.outerStateScope;
            return this.this$0.m489performScroll3eAAhYA($this$scrollBy_OzD1aCk_u24lambda_u240, offset, source);
        }

        @Override // androidx.compose.foundation.gestures.NestedScrollScope
        /* renamed from: scrollByWithOverscroll-OzD1aCk */
        public long mo455scrollByWithOverscrollOzD1aCk(long offset, int source) {
            this.this$0.latestScrollSource = source;
            OverscrollEffect overscroll = this.this$0.overscrollEffect;
            if (overscroll == null || !this.this$0.getShouldDispatchOverscroll()) {
                ScrollScope $this$scrollByWithOverscroll_OzD1aCk_u24lambda_u241 = this.this$0.outerStateScope;
                return this.this$0.m489performScroll3eAAhYA($this$scrollByWithOverscroll_OzD1aCk_u24lambda_u241, offset, source);
            }
            return overscroll.mo218applyToScrollRhakbz0(offset, this.this$0.latestScrollSource, this.this$0.performScrollForOverscroll);
        }
    };
    private final Function1<Offset, Offset> performScrollForOverscroll = new Function1<Offset, Offset>() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$performScrollForOverscroll$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Offset invoke(Offset offset) {
            return Offset.m3751boximpl(m501invokeMKHz9U(offset.getPackedValue()));
        }

        /* renamed from: invoke-MK-Hz9U, reason: not valid java name */
        public final long m501invokeMKHz9U(long delta) {
            ScrollScope $this$invoke_MK_Hz9U_u24lambda_u240 = this.this$0.outerStateScope;
            ScrollingLogic scrollingLogic = this.this$0;
            return scrollingLogic.m489performScroll3eAAhYA($this$invoke_MK_Hz9U_u24lambda_u240, delta, scrollingLogic.latestScrollSource);
        }
    };

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1] */
    public ScrollingLogic(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean reverseDirection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.scrollableState = scrollableState;
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        this.orientation = orientation;
        this.reverseDirection = reverseDirection;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
    }

    /* renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m499toOffsettuRUvjQ(float $this$toOffset_u2dtuRUvjQ) {
        if ($this$toOffset_u2dtuRUvjQ == 0.0f) {
            return Offset.INSTANCE.m3778getZeroF1C5BW0();
        }
        if (this.orientation == Orientation.Horizontal) {
            return OffsetKt.Offset($this$toOffset_u2dtuRUvjQ, 0.0f);
        }
        return OffsetKt.Offset(0.0f, $this$toOffset_u2dtuRUvjQ);
    }

    /* renamed from: singleAxisOffset-MK-Hz9U, reason: not valid java name */
    public final long m497singleAxisOffsetMKHz9U(long $this$singleAxisOffset_u2dMK_u2dHz9U) {
        return Offset.m3756copydBAh8RU$default($this$singleAxisOffset_u2dMK_u2dHz9U, 0.0f, 0.0f, this.orientation == Orientation.Horizontal ? 1 : 2, null);
    }

    /* renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m498toFloatk4lQ0M(long $this$toFloat_u2dk_u2d4lQ0M) {
        return this.orientation == Orientation.Horizontal ? Offset.m3762getXimpl($this$toFloat_u2dk_u2d4lQ0M) : Offset.m3763getYimpl($this$toFloat_u2dk_u2d4lQ0M);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toFloat-TH1AsA0, reason: not valid java name */
    public final float m491toFloatTH1AsA0(long $this$toFloat_u2dTH1AsA0) {
        return this.orientation == Orientation.Horizontal ? Velocity.m6722getXimpl($this$toFloat_u2dTH1AsA0) : Velocity.m6723getYimpl($this$toFloat_u2dTH1AsA0);
    }

    /* renamed from: singleAxisVelocity-AH228Gc, reason: not valid java name */
    private final long m490singleAxisVelocityAH228Gc(long $this$singleAxisVelocity_u2dAH228Gc) {
        return Velocity.m6718copyOhffZ5M$default($this$singleAxisVelocity_u2dAH228Gc, 0.0f, 0.0f, this.orientation == Orientation.Horizontal ? 1 : 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: update-QWom1Mo, reason: not valid java name */
    public final long m492updateQWom1Mo(long $this$update_u2dQWom1Mo, float newValue) {
        int i;
        Object obj;
        float f;
        long j;
        float f2;
        if (this.orientation == Orientation.Horizontal) {
            i = 2;
            obj = null;
            f2 = 0.0f;
            j = $this$update_u2dQWom1Mo;
            f = newValue;
        } else {
            i = 1;
            obj = null;
            f = 0.0f;
            j = $this$update_u2dQWom1Mo;
            f2 = newValue;
        }
        return Velocity.m6718copyOhffZ5M$default(j, f, f2, i, obj);
    }

    public final float reverseIfNeeded(float $this$reverseIfNeeded) {
        return this.reverseDirection ? (-1) * $this$reverseIfNeeded : $this$reverseIfNeeded;
    }

    /* renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m496reverseIfNeededMKHz9U(long $this$reverseIfNeeded_u2dMK_u2dHz9U) {
        return this.reverseDirection ? Offset.m3769timestuRUvjQ($this$reverseIfNeeded_u2dMK_u2dHz9U, -1.0f) : $this$reverseIfNeeded_u2dMK_u2dHz9U;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m489performScroll3eAAhYA(ScrollScope $this$performScroll_u2d3eAAhYA, long delta, int source) {
        long consumedByPreScroll = this.nestedScrollDispatcher.m5089dispatchPreScrollOzD1aCk(delta, source);
        long scrollAvailableAfterPreScroll = Offset.m3766minusMKHz9U(delta, consumedByPreScroll);
        float singleAxisDeltaForSelfScroll = m498toFloatk4lQ0M(m496reverseIfNeededMKHz9U(m497singleAxisOffsetMKHz9U(scrollAvailableAfterPreScroll)));
        long consumedBySelfScroll = m496reverseIfNeededMKHz9U(m499toOffsettuRUvjQ($this$performScroll_u2d3eAAhYA.scrollBy(singleAxisDeltaForSelfScroll)));
        long deltaAvailableAfterScroll = Offset.m3766minusMKHz9U(scrollAvailableAfterPreScroll, consumedBySelfScroll);
        long consumedByPostScroll = this.nestedScrollDispatcher.m5087dispatchPostScrollDzOQY0M(consumedBySelfScroll, deltaAvailableAfterScroll, source);
        return Offset.m3767plusMKHz9U(Offset.m3767plusMKHz9U(consumedByPreScroll, consumedBySelfScroll), consumedByPostScroll);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldDispatchOverscroll() {
        return this.scrollableState.getCanScrollForward() || this.scrollableState.getCanScrollBackward();
    }

    /* renamed from: performRawScroll-MK-Hz9U, reason: not valid java name */
    public final long m495performRawScrollMKHz9U(long scroll) {
        if (this.scrollableState.isScrollInProgress()) {
            return Offset.INSTANCE.m3778getZeroF1C5BW0();
        }
        return m499toOffsettuRUvjQ(reverseIfNeeded(this.scrollableState.dispatchRawDelta(reverseIfNeeded(m498toFloatk4lQ0M(scroll)))));
    }

    /* renamed from: onDragStopped-sF-c-tU, reason: not valid java name */
    public final Object m494onDragStoppedsFctU(long initialVelocity, Continuation<? super Unit> continuation) {
        long availableVelocity = m490singleAxisVelocityAH228Gc(initialVelocity);
        Function2 performFling = new ScrollingLogic$onDragStopped$performFling$1(this, null);
        OverscrollEffect overscroll = this.overscrollEffect;
        if (overscroll != null && getShouldDispatchOverscroll()) {
            Object objMo217applyToFlingBMRW4eQ = overscroll.mo217applyToFlingBMRW4eQ(availableVelocity, performFling, continuation);
            return objMo217applyToFlingBMRW4eQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo217applyToFlingBMRW4eQ : Unit.INSTANCE;
        }
        Object objInvoke = performFling.invoke(Velocity.m6713boximpl(availableVelocity), continuation);
        return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* renamed from: doFlingAnimation-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m493doFlingAnimationQWom1Mo(long r13, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r15) {
        /*
            r12 = this;
            boolean r0 = r15 instanceof androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            if (r0 == 0) goto L14
            r0 = r15
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1 r0 = (androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r15 = r0.label
            int r15 = r15 - r2
            r0.label = r15
            goto L19
        L14:
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1 r0 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            r0.<init>(r12, r15)
        L19:
            r15 = r0
            java.lang.Object r0 = r15.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r15.label
            switch(r2) {
                case 0: goto L35;
                case 1: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L2d:
            java.lang.Object r13 = r15.L$0
            kotlin.jvm.internal.Ref$LongRef r13 = (kotlin.jvm.internal.Ref.LongRef) r13
            kotlin.ResultKt.throwOnFailure(r0)
            goto L5c
        L35:
            kotlin.ResultKt.throwOnFailure(r0)
            r8 = r12
            kotlin.jvm.internal.Ref$LongRef r2 = new kotlin.jvm.internal.Ref$LongRef
            r2.<init>()
            r9 = r2
            r9.element = r13
            androidx.compose.foundation.MutatePriority r10 = androidx.compose.foundation.MutatePriority.Default
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2 r11 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2
            r7 = 0
            r2 = r11
            r3 = r8
            r4 = r9
            r5 = r13
            r2.<init>(r3, r4, r5, r7)
            kotlin.jvm.functions.Function2 r11 = (kotlin.jvm.functions.Function2) r11
            r15.L$0 = r9
            r2 = 1
            r15.label = r2
            java.lang.Object r13 = r8.scroll(r10, r11, r15)
            if (r13 != r1) goto L5b
            return r1
        L5b:
            r13 = r9
        L5c:
            long r1 = r13.element
            androidx.compose.ui.unit.Velocity r14 = androidx.compose.ui.unit.Velocity.m6713boximpl(r1)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.m493doFlingAnimationQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean shouldScrollImmediately() {
        if (!this.scrollableState.isScrollInProgress()) {
            OverscrollEffect overscrollEffect = this.overscrollEffect;
            if (!(overscrollEffect != null ? overscrollEffect.isInProgress() : false)) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ Object scroll$default(ScrollingLogic scrollingLogic, MutatePriority mutatePriority, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return scrollingLogic.scroll(mutatePriority, function2, continuation);
    }

    /* compiled from: Scrollable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$scroll$2", f = "Scrollable.kt", i = {}, l = {804}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.gestures.ScrollingLogic$scroll$2, reason: invalid class name */
    static final class AnonymousClass2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<NestedScrollScope, Continuation<? super Unit>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function2<? super NestedScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = ScrollingLogic.this.new AnonymousClass2(this.$block, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ScrollScope scrollScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(scrollScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ScrollScope $this$scroll = (ScrollScope) this.L$0;
                    ScrollingLogic.this.outerStateScope = $this$scroll;
                    Function2<NestedScrollScope, Continuation<? super Unit>, Object> function2 = this.$block;
                    ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = ScrollingLogic.this.nestedScrollScope;
                    this.label = 1;
                    if (function2.invoke(scrollingLogic$nestedScrollScope$1, this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final Object scroll(MutatePriority scrollPriority, Function2<? super NestedScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object objScroll = this.scrollableState.scroll(scrollPriority, new AnonymousClass2(function2, null), continuation);
        return objScroll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objScroll : Unit.INSTANCE;
    }

    public final boolean update(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean reverseDirection, FlingBehavior flingBehavior, NestedScrollDispatcher nestedScrollDispatcher) {
        boolean resetPointerInputHandling = false;
        if (!Intrinsics.areEqual(this.scrollableState, scrollableState)) {
            this.scrollableState = scrollableState;
            resetPointerInputHandling = true;
        }
        this.overscrollEffect = overscrollEffect;
        if (this.orientation != orientation) {
            this.orientation = orientation;
            resetPointerInputHandling = true;
        }
        if (this.reverseDirection != reverseDirection) {
            this.reverseDirection = reverseDirection;
            resetPointerInputHandling = true;
        }
        this.flingBehavior = flingBehavior;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        return resetPointerInputHandling;
    }

    public final boolean isVertical() {
        return this.orientation == Orientation.Vertical;
    }
}
