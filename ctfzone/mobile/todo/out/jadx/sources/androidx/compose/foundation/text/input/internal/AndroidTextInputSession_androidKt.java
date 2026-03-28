package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.os.CancellationSignal;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.PreviewableHandwritingGesture;
import androidx.compose.foundation.content.TransferableContent;
import androidx.compose.foundation.content.internal.ReceiveContentConfiguration;
import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.ui.platform.PlatformTextInputMethodRequest;
import androidx.compose.ui.platform.PlatformTextInputSession;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* compiled from: AndroidTextInputSession.android.kt */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0002\u001al\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\n\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0081@¢\u0006\u0002\u0010\"\u001ah\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\n\u0018\u00010\u001a2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!H\u0080@¢\u0006\u0002\u0010#\"\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00058\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\"\u000e\u0010\b\u001a\u00020\u0002X\u0082T¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"ALL_MIME_TYPES", "", "", "[Ljava/lang/String;", "TIA_DEBUG", "", "getTIA_DEBUG$annotations", "()V", "TIA_TAG", "logDebug", "", "tag", "content", "Lkotlin/Function0;", "platformSpecificTextInputSession", "", "Landroidx/compose/ui/platform/PlatformTextInputSession;", "state", "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;", "layoutState", "Landroidx/compose/foundation/text/input/internal/TextLayoutState;", "imeOptions", "Landroidx/compose/ui/text/input/ImeOptions;", "receiveContentConfiguration", "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;", "onImeAction", "Lkotlin/Function1;", "Landroidx/compose/ui/text/input/ImeAction;", "composeImm", "Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;", "stylusHandwritingTrigger", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "viewConfiguration", "Landroidx/compose/ui/platform/ViewConfiguration;", "(Landroidx/compose/ui/platform/PlatformTextInputSession;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;Lkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Landroidx/compose/ui/platform/PlatformTextInputSession;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidTextInputSession_androidKt {
    private static final String[] ALL_MIME_TYPES = {"*/*", "image/*", "video/*"};
    public static final boolean TIA_DEBUG = false;
    private static final String TIA_TAG = "AndroidTextInputSession";

    /* compiled from: AndroidTextInputSession.android.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt", f = "AndroidTextInputSession.android.kt", i = {}, l = {59}, m = "platformSpecificTextInputSession", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$1, reason: invalid class name */
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidTextInputSession_androidKt.platformSpecificTextInputSession(null, null, null, null, null, null, null, null, this);
        }
    }

    /* compiled from: AndroidTextInputSession.android.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt", f = "AndroidTextInputSession.android.kt", i = {}, l = {82}, m = "platformSpecificTextInputSession", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2, reason: invalid class name */
    static final class AnonymousClass2 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidTextInputSession_androidKt.platformSpecificTextInputSession(null, null, null, null, null, null, null, null, null, this);
        }
    }

    public static /* synthetic */ void getTIA_DEBUG$annotations() {
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object platformSpecificTextInputSession(androidx.compose.ui.platform.PlatformTextInputSession r13, androidx.compose.foundation.text.input.internal.TransformedTextFieldState r14, androidx.compose.foundation.text.input.internal.TextLayoutState r15, androidx.compose.ui.text.input.ImeOptions r16, androidx.compose.foundation.content.internal.ReceiveContentConfiguration r17, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.ImeAction, kotlin.Unit> r18, kotlinx.coroutines.flow.MutableSharedFlow<kotlin.Unit> r19, androidx.compose.ui.platform.ViewConfiguration r20, kotlin.coroutines.Continuation<?> r21) {
        /*
            r0 = r21
            boolean r1 = r0 instanceof androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt.AnonymousClass1
            if (r1 == 0) goto L16
            r1 = r0
            androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$1 r1 = (androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt.AnonymousClass1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 & r3
            if (r2 == 0) goto L16
            int r0 = r1.label
            int r0 = r0 - r3
            r1.label = r0
            goto L1b
        L16:
            androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$1 r1 = new androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$1
            r1.<init>(r0)
        L1b:
            r0 = r1
            java.lang.Object r11 = r0.result
            java.lang.Object r12 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            switch(r1) {
                case 0: goto L33;
                case 1: goto L2f;
                default: goto L27;
            }
        L27:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L2f:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5e
        L33:
            kotlin.ResultKt.throwOnFailure(r11)
            r1 = r13
            r3 = r15
            r8 = r19
            r5 = r17
            r2 = r14
            r4 = r16
            r9 = r20
            r6 = r18
            android.view.View r7 = r1.getView()
            androidx.compose.foundation.text.input.internal.ComposeInputMethodManager r7 = androidx.compose.foundation.text.input.internal.ComposeInputMethodManager_androidKt.ComposeInputMethodManager(r7)
            r10 = 1
            r0.label = r10
            r10 = r0
            java.lang.Object r1 = platformSpecificTextInputSession(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            if (r1 != r12) goto L5e
            return r12
        L5e:
            kotlin.KotlinNothingValueException r1 = new kotlin.KotlinNothingValueException
            r1.<init>()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt.platformSpecificTextInputSession(androidx.compose.ui.platform.PlatformTextInputSession, androidx.compose.foundation.text.input.internal.TransformedTextFieldState, androidx.compose.foundation.text.input.internal.TextLayoutState, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.content.internal.ReceiveContentConfiguration, kotlin.jvm.functions.Function1, kotlinx.coroutines.flow.MutableSharedFlow, androidx.compose.ui.platform.ViewConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object platformSpecificTextInputSession$default(PlatformTextInputSession platformTextInputSession, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, Function1 function1, MutableSharedFlow mutableSharedFlow, ViewConfiguration viewConfiguration, Continuation continuation, int i, Object obj) {
        MutableSharedFlow mutableSharedFlow2;
        ViewConfiguration viewConfiguration2;
        if ((i & 32) == 0) {
            mutableSharedFlow2 = mutableSharedFlow;
        } else {
            mutableSharedFlow2 = null;
        }
        if ((i & 64) == 0) {
            viewConfiguration2 = viewConfiguration;
        } else {
            viewConfiguration2 = null;
        }
        return platformSpecificTextInputSession(platformTextInputSession, transformedTextFieldState, textLayoutState, imeOptions, receiveContentConfiguration, function1, mutableSharedFlow2, viewConfiguration2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object platformSpecificTextInputSession(androidx.compose.ui.platform.PlatformTextInputSession r15, androidx.compose.foundation.text.input.internal.TransformedTextFieldState r16, androidx.compose.foundation.text.input.internal.TextLayoutState r17, androidx.compose.ui.text.input.ImeOptions r18, androidx.compose.foundation.content.internal.ReceiveContentConfiguration r19, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.ImeAction, kotlin.Unit> r20, androidx.compose.foundation.text.input.internal.ComposeInputMethodManager r21, kotlinx.coroutines.flow.MutableSharedFlow<kotlin.Unit> r22, androidx.compose.ui.platform.ViewConfiguration r23, kotlin.coroutines.Continuation<?> r24) {
        /*
            r0 = r24
            boolean r1 = r0 instanceof androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt.AnonymousClass2
            if (r1 == 0) goto L16
            r1 = r0
            androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2 r1 = (androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt.AnonymousClass2) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 & r3
            if (r2 == 0) goto L16
            int r0 = r1.label
            int r0 = r0 - r3
            r1.label = r0
            goto L1b
        L16:
            androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2 r1 = new androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2
            r1.<init>(r0)
        L1b:
            r0 = r1
            java.lang.Object r1 = r0.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r0.label
            switch(r3) {
                case 0: goto L33;
                case 1: goto L2f;
                default: goto L27;
            }
        L27:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L2f:
            kotlin.ResultKt.throwOnFailure(r1)
            goto L5a
        L33:
            kotlin.ResultKt.throwOnFailure(r1)
            r8 = r15
            r6 = r17
            r7 = r21
            r10 = r19
            r12 = r23
            r5 = r16
            r9 = r18
            r4 = r22
            r11 = r20
            androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3 r14 = new androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3
            r13 = 0
            r3 = r14
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            kotlin.jvm.functions.Function2 r14 = (kotlin.jvm.functions.Function2) r14
            r3 = 1
            r0.label = r3
            java.lang.Object r3 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r14, r0)
            if (r3 != r2) goto L5a
            return r2
        L5a:
            kotlin.KotlinNothingValueException r2 = new kotlin.KotlinNothingValueException
            r2.<init>()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt.platformSpecificTextInputSession(androidx.compose.ui.platform.PlatformTextInputSession, androidx.compose.foundation.text.input.internal.TransformedTextFieldState, androidx.compose.foundation.text.input.internal.TextLayoutState, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.content.internal.ReceiveContentConfiguration, kotlin.jvm.functions.Function1, androidx.compose.foundation.text.input.internal.ComposeInputMethodManager, kotlinx.coroutines.flow.MutableSharedFlow, androidx.compose.ui.platform.ViewConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: AndroidTextInputSession.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3", f = "AndroidTextInputSession.android.kt", i = {}, l = {129}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3, reason: invalid class name */
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<?>, Object> {
        final /* synthetic */ ComposeInputMethodManager $composeImm;
        final /* synthetic */ ImeOptions $imeOptions;
        final /* synthetic */ TextLayoutState $layoutState;
        final /* synthetic */ Function1<ImeAction, Unit> $onImeAction;
        final /* synthetic */ ReceiveContentConfiguration $receiveContentConfiguration;
        final /* synthetic */ TransformedTextFieldState $state;
        final /* synthetic */ MutableSharedFlow<Unit> $stylusHandwritingTrigger;
        final /* synthetic */ PlatformTextInputSession $this_platformSpecificTextInputSession;
        final /* synthetic */ ViewConfiguration $viewConfiguration;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(MutableSharedFlow<Unit> mutableSharedFlow, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ComposeInputMethodManager composeInputMethodManager, PlatformTextInputSession platformTextInputSession, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, Function1<? super ImeAction, Unit> function1, ViewConfiguration viewConfiguration, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$stylusHandwritingTrigger = mutableSharedFlow;
            this.$state = transformedTextFieldState;
            this.$layoutState = textLayoutState;
            this.$composeImm = composeInputMethodManager;
            this.$this_platformSpecificTextInputSession = platformTextInputSession;
            this.$imeOptions = imeOptions;
            this.$receiveContentConfiguration = receiveContentConfiguration;
            this.$onImeAction = function1;
            this.$viewConfiguration = viewConfiguration;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$stylusHandwritingTrigger, this.$state, this.$layoutState, this.$composeImm, this.$this_platformSpecificTextInputSession, this.$imeOptions, this.$receiveContentConfiguration, this.$onImeAction, this.$viewConfiguration, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<?> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* compiled from: AndroidTextInputSession.android.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$1", f = "AndroidTextInputSession.android.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ ComposeInputMethodManager $composeImm;
            final /* synthetic */ TransformedTextFieldState $state;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TransformedTextFieldState transformedTextFieldState, ComposeInputMethodManager composeInputMethodManager, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$state = transformedTextFieldState;
                this.$composeImm = composeInputMethodManager;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$state, this.$composeImm, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        TransformedTextFieldState transformedTextFieldState = this.$state;
                        final ComposeInputMethodManager composeInputMethodManager = this.$composeImm;
                        this.label = 1;
                        if (transformedTextFieldState.collectImeNotifications(new TextFieldState.NotifyImeListener() { // from class: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$1$$ExternalSyntheticLambda0
                            @Override // androidx.compose.foundation.text.input.TextFieldState.NotifyImeListener
                            public final void onChange(TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z) {
                                AndroidTextInputSession_androidKt.AnonymousClass3.AnonymousClass1.invokeSuspend$lambda$0(composeInputMethodManager, textFieldCharSequence, textFieldCharSequence2, z);
                            }
                        }, this) != coroutine_suspended) {
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
                throw new KotlinNothingValueException();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void invokeSuspend$lambda$0(ComposeInputMethodManager $composeImm, TextFieldCharSequence oldValue, TextFieldCharSequence newValue, boolean restartImeIfContentChanges) {
                long oldSelection = oldValue.getSelection();
                long newSelection = newValue.getSelection();
                TextRange oldComposition = oldValue.getComposition();
                TextRange newComposition = newValue.getComposition();
                if (restartImeIfContentChanges && oldValue.getComposition() != null && !oldValue.contentEquals(newValue)) {
                    $composeImm.restartInput();
                } else if (!TextRange.m5941equalsimpl0(oldSelection, newSelection) || !Intrinsics.areEqual(oldComposition, newComposition)) {
                    $composeImm.updateSelection(TextRange.m5946getMinimpl(newSelection), TextRange.m5945getMaximpl(newSelection), newComposition != null ? TextRange.m5946getMinimpl(newComposition.getPackedValue()) : -1, newComposition != null ? TextRange.m5945getMaximpl(newComposition.getPackedValue()) : -1);
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass1(this.$state, this.$composeImm, null), 1, null);
                    MutableSharedFlow it = this.$stylusHandwritingTrigger;
                    if (it != null) {
                        BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, null, new AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1(it, this.$composeImm, null), 3, null);
                    }
                    final CursorAnchorInfoController cursorUpdatesController = new CursorAnchorInfoController(this.$state, this.$layoutState, this.$composeImm, $this$coroutineScope);
                    PlatformTextInputSession platformTextInputSession = this.$this_platformSpecificTextInputSession;
                    final TransformedTextFieldState transformedTextFieldState = this.$state;
                    final ImeOptions imeOptions = this.$imeOptions;
                    final ReceiveContentConfiguration receiveContentConfiguration = this.$receiveContentConfiguration;
                    final ComposeInputMethodManager composeInputMethodManager = this.$composeImm;
                    final Function1<ImeAction, Unit> function1 = this.$onImeAction;
                    final TextLayoutState textLayoutState = this.$layoutState;
                    final ViewConfiguration viewConfiguration = this.$viewConfiguration;
                    this.label = 1;
                    if (platformTextInputSession.startInputMethod(new PlatformTextInputMethodRequest() { // from class: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$$ExternalSyntheticLambda0
                        @Override // androidx.compose.ui.platform.PlatformTextInputMethodRequest
                        public final InputConnection createInputConnection(EditorInfo editorInfo) {
                            return AndroidTextInputSession_androidKt.AnonymousClass3.invokeSuspend$lambda$2(transformedTextFieldState, imeOptions, receiveContentConfiguration, composeInputMethodManager, function1, cursorUpdatesController, textLayoutState, viewConfiguration, editorInfo);
                        }
                    }, this) != coroutine_suspended) {
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
            throw new KotlinNothingValueException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final InputConnection invokeSuspend$lambda$2(final TransformedTextFieldState $state, ImeOptions $imeOptions, final ReceiveContentConfiguration $receiveContentConfiguration, final ComposeInputMethodManager $composeImm, final Function1 $onImeAction, final CursorAnchorInfoController $cursorUpdatesController, final TextLayoutState $layoutState, final ViewConfiguration $viewConfiguration, EditorInfo outAttrs) {
            AndroidTextInputSession_androidKt.logDebug$default(null, new Function0<String>() { // from class: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$3$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "createInputConnection(value=\"" + ((Object) $state.getVisualText()) + "\")";
                }
            }, 1, null);
            TextInputSession textInputSession = new TextInputSession() { // from class: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$3$textInputSession$1
                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public TextFieldCharSequence getText() {
                    return $state.getVisualText();
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public void requestEdit(Function1<? super EditingBuffer, Unit> block) {
                    TransformedTextFieldState this_$iv = $state;
                    TextFieldState $this$iv$iv = this_$iv.textFieldState;
                    InputTransformation inputTransformation$iv$iv = this_$iv.inputTransformation;
                    TextFieldEditUndoBehavior undoBehavior$iv$iv = TextFieldEditUndoBehavior.MergeIfPossible;
                    $this$iv$iv.getMainBuffer().getChangeTracker().clearChanges();
                    block.invoke($this$iv$iv.getMainBuffer());
                    $this$iv$iv.commitEditAsUser(inputTransformation$iv$iv, false, undoBehavior$iv$iv);
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public void sendKeyEvent(KeyEvent keyEvent) {
                    $composeImm.sendKeyEvent(keyEvent);
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                /* renamed from: onImeAction-KlQnJC8, reason: not valid java name */
                public void mo1137onImeActionKlQnJC8(int imeAction) {
                    Function1<ImeAction, Unit> function1 = $onImeAction;
                    if (function1 != null) {
                        function1.invoke(ImeAction.m6110boximpl(imeAction));
                    }
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public boolean onCommitContent(TransferableContent transferableContent) {
                    ReceiveContentConfiguration receiveContentConfiguration = $receiveContentConfiguration;
                    if (receiveContentConfiguration != null) {
                        return receiveContentConfiguration.onCommitContent(transferableContent);
                    }
                    return false;
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public void requestCursorUpdates(int cursorUpdateMode) {
                    $cursorUpdatesController.requestUpdates(cursorUpdateMode);
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public int performHandwritingGesture(HandwritingGesture gesture) {
                    if (Build.VERSION.SDK_INT >= 34) {
                        return HandwritingGestureApi34.INSTANCE.performHandwritingGesture$foundation_release($state, gesture, $layoutState, $viewConfiguration);
                    }
                    return 2;
                }

                @Override // androidx.compose.foundation.text.input.internal.TextInputSession
                public boolean previewHandwritingGesture(PreviewableHandwritingGesture gesture, CancellationSignal cancellationSignal) {
                    if (Build.VERSION.SDK_INT >= 34) {
                        return HandwritingGestureApi34.INSTANCE.previewHandwritingGesture$foundation_release($state, gesture, $layoutState, cancellationSignal);
                    }
                    return false;
                }
            };
            EditorInfo_androidKt.m1146updatepLxbY9I(outAttrs, $state.getVisualText(), $state.getVisualText().getSelection(), $imeOptions, $receiveContentConfiguration != null ? AndroidTextInputSession_androidKt.ALL_MIME_TYPES : null);
            return new StatelessInputConnection(textInputSession, outAttrs);
        }
    }

    static /* synthetic */ void logDebug$default(String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = TIA_TAG;
        }
        logDebug(str, function0);
    }

    private static final void logDebug(String tag, Function0<String> function0) {
    }
}
