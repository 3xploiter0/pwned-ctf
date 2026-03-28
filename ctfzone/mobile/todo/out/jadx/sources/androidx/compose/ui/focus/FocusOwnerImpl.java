package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.autofill.HintConstants;
import androidx.collection.MutableLongSet;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: FocusOwnerImpl.kt */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001Bª\u0001\u0012\u0018\u0010\u0002\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012:\u0010\u0006\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\u0007\u0012!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000e0\u0003\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0004\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004¢\u0006\u0002\u0010\u0014J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u000eH\u0016J2\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\bH\u0016ø\u0001\u0000¢\u0006\u0004\b/\u00100J\u001a\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u000203H\u0016ø\u0001\u0000¢\u0006\u0004\b4\u00105J(\u00106\u001a\u00020\u000e2\u0006\u00102\u001a\u0002032\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004H\u0016ø\u0001\u0000¢\u0006\u0004\b8\u00109J\u0010\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020<H\u0016J:\u0010=\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010>\u001a\u0004\u0018\u00010\f2\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000e0\u0003H\u0016ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ\n\u0010B\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010C\u001a\u00020\u0005H\u0002J\u001a\u0010D\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\bH\u0016ø\u0001\u0000¢\u0006\u0004\bE\u0010FJ\b\u0010G\u001a\u00020\u0005H\u0016J$\u0010H\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016ø\u0001\u0000¢\u0006\u0002\bIJ\u0010\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020MH\u0016J\u0010\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\"H\u0016J$\u0010N\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016ø\u0001\u0000¢\u0006\u0004\bO\u0010PJ\u001a\u0010Q\u001a\u00020\u000e2\u0006\u00102\u001a\u000203H\u0002ø\u0001\u0000¢\u0006\u0004\bR\u00105J\u000e\u0010S\u001a\u0004\u0018\u00010T*\u00020UH\u0002J3\u0010V\u001a\u0004\u0018\u0001HW\"\n\b\u0000\u0010W\u0018\u0001*\u00020X*\u00020U2\f\u0010Y\u001a\b\u0012\u0004\u0012\u0002HW0ZH\u0082\bø\u0001\u0000¢\u0006\u0004\b[\u0010\\Jg\u0010]\u001a\u00020\u0005\"\n\b\u0000\u0010W\u0018\u0001*\u00020U*\u00020U2\f\u0010Y\u001a\b\u0012\u0004\u0012\u0002HW0Z2\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u0002HW\u0012\u0004\u0012\u00020\u00050\u00032\f\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010`\u001a\u000e\u0012\u0004\u0012\u0002HW\u0012\u0004\u0012\u00020\u00050\u0003H\u0082\bø\u0001\u0000¢\u0006\u0004\ba\u0010bR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R)\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000e0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000RB\u0010\u0006\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\"X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006c"}, d2 = {"Landroidx/compose/ui/focus/FocusOwnerImpl;", "Landroidx/compose/ui/focus/FocusOwner;", "onRequestApplyChangesListener", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "onRequestFocusForOwner", "Lkotlin/Function2;", "Landroidx/compose/ui/focus/FocusDirection;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "focusDirection", "Landroidx/compose/ui/geometry/Rect;", "previouslyFocusedRect", "", "onMoveFocusInterop", "onClearFocusForOwner", "onFocusRectInterop", "onLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "focusInvalidationManager", "Landroidx/compose/ui/focus/FocusInvalidationManager;", "focusTransactionManager", "Landroidx/compose/ui/focus/FocusTransactionManager;", "getFocusTransactionManager", "()Landroidx/compose/ui/focus/FocusTransactionManager;", "keysCurrentlyDown", "Landroidx/collection/MutableLongSet;", "modifier", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "rootFocusNode", "Landroidx/compose/ui/focus/FocusTargetNode;", "getRootFocusNode$ui_release", "()Landroidx/compose/ui/focus/FocusTargetNode;", "setRootFocusNode$ui_release", "(Landroidx/compose/ui/focus/FocusTargetNode;)V", "rootState", "Landroidx/compose/ui/focus/FocusState;", "getRootState", "()Landroidx/compose/ui/focus/FocusState;", "clearFocus", "force", "refreshFocusEvents", "clearOwnerFocus", "clearFocus-I7lrPNg", "(ZZZI)Z", "dispatchInterceptedSoftKeyboardEvent", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "dispatchInterceptedSoftKeyboardEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "dispatchKeyEvent", "onFocusedItem", "dispatchKeyEvent-YhN2O0w", "(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z", "dispatchRotaryEvent", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "focusSearch", "focusedRect", "onFound", "focusSearch-ULY8qGw", "(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;", "getFocusRect", "invalidateOwnerFocusState", "moveFocus", "moveFocus-3ESFkO8", "(I)Z", "releaseFocus", "requestFocusForOwner", "requestFocusForOwner-7o62pno", "scheduleInvalidation", "node", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "takeFocus", "takeFocus-aToIllA", "(ILandroidx/compose/ui/geometry/Rect;)Z", "validateKeyEvent", "validateKeyEvent-ZmokQxo", "lastLocalKeyInputNode", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DelegatableNode;", "nearestAncestorIncludingSelf", "T", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/ui/node/NodeKind;", "nearestAncestorIncludingSelf-64DMado", "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;", "traverseAncestorsIncludingSelf", "onPreVisit", "onVisit", "onPostVisit", "traverseAncestorsIncludingSelf-QFhIj7k", "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusOwnerImpl implements FocusOwner {
    public static final int $stable = 8;
    private final FocusInvalidationManager focusInvalidationManager;
    private MutableLongSet keysCurrentlyDown;
    private final Function0<Unit> onClearFocusForOwner;
    private final Function0<Rect> onFocusRectInterop;
    private final Function0<LayoutDirection> onLayoutDirection;
    private final Function1<FocusDirection, Boolean> onMoveFocusInterop;
    private final Function2<FocusDirection, Rect, Boolean> onRequestFocusForOwner;
    private FocusTargetNode rootFocusNode = new FocusTargetNode();
    private final FocusTransactionManager focusTransactionManager = new FocusTransactionManager();
    private final Modifier modifier = FocusPropertiesKt.focusProperties(Modifier.INSTANCE, new Function1<FocusProperties, Unit>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FocusProperties focusProperties) {
            invoke2(focusProperties);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(FocusProperties $this$focusProperties) {
            $this$focusProperties.setCanFocus(false);
        }
    }).then(new ModifierNodeElement<FocusTargetNode>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$2
        @Override // androidx.compose.ui.node.ModifierNodeElement
        /* renamed from: create */
        public FocusTargetNode getNode() {
            return this.this$0.getRootFocusNode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void update(FocusTargetNode node) {
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void inspectableProperties(InspectorInfo $this$inspectableProperties) {
            $this$inspectableProperties.setName("RootFocusTarget");
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public int hashCode() {
            return this.this$0.getRootFocusNode().hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public boolean equals(Object other) {
            return other == this;
        }
    });

    /* compiled from: FocusOwnerImpl.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FocusOwnerImpl(Function1<? super Function0<Unit>, Unit> function1, Function2<? super FocusDirection, ? super Rect, Boolean> function2, Function1<? super FocusDirection, Boolean> function12, Function0<Unit> function0, Function0<Rect> function02, Function0<? extends LayoutDirection> function03) {
        this.onRequestFocusForOwner = function2;
        this.onMoveFocusInterop = function12;
        this.onClearFocusForOwner = function0;
        this.onFocusRectInterop = function02;
        this.onLayoutDirection = function03;
        this.focusInvalidationManager = new FocusInvalidationManager(function1, new FocusOwnerImpl$focusInvalidationManager$1(this));
    }

    /* renamed from: getRootFocusNode$ui_release, reason: from getter */
    public final FocusTargetNode getRootFocusNode() {
        return this.rootFocusNode;
    }

    public final void setRootFocusNode$ui_release(FocusTargetNode focusTargetNode) {
        this.rootFocusNode = focusTargetNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusTransactionManager getFocusTransactionManager() {
        return this.focusTransactionManager;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Modifier getModifier() {
        return this.modifier;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: requestFocusForOwner-7o62pno */
    public boolean mo3695requestFocusForOwner7o62pno(FocusDirection focusDirection, Rect previouslyFocusedRect) {
        return this.onRequestFocusForOwner.invoke(focusDirection, previouslyFocusedRect).booleanValue();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: takeFocus-aToIllA */
    public boolean mo3696takeFocusaToIllA(final int focusDirection, Rect previouslyFocusedRect) {
        Boolean boolMo3694focusSearchULY8qGw = mo3694focusSearchULY8qGw(focusDirection, previouslyFocusedRect, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$takeFocus$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                Boolean boolM3713requestFocusMxy_nc0 = FocusTransactionsKt.m3713requestFocusMxy_nc0(it, focusDirection);
                return Boolean.valueOf(boolM3713requestFocusMxy_nc0 != null ? boolM3713requestFocusMxy_nc0.booleanValue() : false);
            }
        });
        if (boolMo3694focusSearchULY8qGw != null) {
            return boolMo3694focusSearchULY8qGw.booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void releaseFocus() {
        FocusTransactionManager $this$iv = getFocusTransactionManager();
        if (!$this$iv.ongoingTransaction) {
            try {
                $this$iv.beginTransaction();
                FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
                return;
            } finally {
                $this$iv.commitTransaction();
            }
        }
        FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void clearFocus(boolean force) {
        mo3691clearFocusI7lrPNg(force, true, true, FocusDirection.INSTANCE.m3682getExitdhqQ8s());
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: clearFocus-I7lrPNg */
    public boolean mo3691clearFocusI7lrPNg(boolean force, boolean refreshFocusEvents, boolean clearOwnerFocus, int focusDirection) {
        boolean zClearFocus;
        FocusTransactionManager this_$iv = getFocusTransactionManager();
        FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 = new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }
        };
        try {
            if (this_$iv.ongoingTransaction) {
                this_$iv.cancelTransaction();
            }
            this_$iv.beginTransaction();
            if (focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 != null) {
                MutableVector this_$iv$iv = this_$iv.cancellationListener;
                this_$iv$iv.add(focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1);
            }
            if (!force) {
                switch (WhenMappings.$EnumSwitchMapping$0[FocusTransactionsKt.m3709performCustomClearFocusMxy_nc0(this.rootFocusNode, focusDirection).ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        zClearFocus = false;
                        break;
                    default:
                        zClearFocus = FocusTransactionsKt.clearFocus(this.rootFocusNode, force, refreshFocusEvents);
                        break;
                }
            } else {
                zClearFocus = FocusTransactionsKt.clearFocus(this.rootFocusNode, force, refreshFocusEvents);
            }
            this_$iv.commitTransaction();
            boolean clearedFocusSuccessfully = zClearFocus;
            if (clearedFocusSuccessfully && clearOwnerFocus) {
                this.onClearFocusForOwner.invoke();
            }
            return clearedFocusSuccessfully;
        } catch (Throwable th) {
            this_$iv.commitTransaction();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Boolean] */
    @Override // androidx.compose.ui.focus.FocusManager
    /* renamed from: moveFocus-3ESFkO8 */
    public boolean mo3689moveFocus3ESFkO8(final int focusDirection) {
        final Ref.ObjectRef requestFocusSuccess = new Ref.ObjectRef();
        requestFocusSuccess.element = false;
        Boolean focusSearchSuccess = mo3694focusSearchULY8qGw(focusDirection, this.onFocusRectInterop.invoke(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$focusSearchSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Boolean] */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                requestFocusSuccess.element = FocusTransactionsKt.m3713requestFocusMxy_nc0(it, focusDirection);
                Boolean bool = requestFocusSuccess.element;
                return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
            }
        });
        if (focusSearchSuccess == null || requestFocusSuccess.element == 0) {
            return false;
        }
        if (Intrinsics.areEqual((Object) focusSearchSuccess, (Object) true) && Intrinsics.areEqual((Object) requestFocusSuccess.element, (Object) true)) {
            return true;
        }
        if (FocusOwnerImplKt.m3700is1dFocusSearch3ESFkO8(focusDirection)) {
            boolean clearFocus = mo3691clearFocusI7lrPNg(false, true, false, focusDirection);
            return clearFocus && mo3696takeFocusaToIllA(focusDirection, null);
        }
        return this.onMoveFocusInterop.invoke(FocusDirection.m3671boximpl(focusDirection)).booleanValue();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: focusSearch-ULY8qGw */
    public Boolean mo3694focusSearchULY8qGw(int focusDirection, Rect focusedRect, final Function1<? super FocusTargetNode, Boolean> onFound) {
        final FocusTargetNode source = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (source != null) {
            FocusRequester customDest = FocusTraversalKt.m3714customFocusSearchOMvw8(source, focusDirection, this.onLayoutDirection.invoke());
            if (Intrinsics.areEqual(customDest, FocusRequester.INSTANCE.getCancel())) {
                return null;
            }
            if (!Intrinsics.areEqual(customDest, FocusRequester.INSTANCE.getDefault())) {
                return Boolean.valueOf(customDest.findFocusTargetNode$ui_release(onFound));
            }
        } else {
            source = null;
        }
        return FocusTraversalKt.m3715focusSearch0X8WOeE(this.rootFocusNode, focusDirection, this.onLayoutDirection.invoke(), focusedRect, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                boolean zBooleanValue;
                if (Intrinsics.areEqual(it, source)) {
                    zBooleanValue = false;
                } else {
                    if (Intrinsics.areEqual(it, this.getRootFocusNode())) {
                        throw new IllegalStateException("Focus search landed at the root.".toString());
                    }
                    zBooleanValue = onFound.invoke(it).booleanValue();
                }
                return Boolean.valueOf(zBooleanValue);
            }
        });
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: dispatchKeyEvent-YhN2O0w */
    public boolean mo3693dispatchKeyEventYhN2O0w(KeyEvent keyEvent, Function0<Boolean> onFocusedItem) {
        Object obj;
        Object node;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv;
        int type$iv;
        NodeChain nodes;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv2;
        int type$iv2;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv3;
        int type$iv3;
        int count$iv$iv$iv;
        MutableVector mutableVector;
        Object obj2;
        FocusTargetNode activeFocusTarget;
        NodeChain nodes2;
        FocusTargetNode activeFocusTarget2;
        FocusTargetNode activeFocusTarget3;
        int count$iv$iv$iv2;
        MutableVector mutableVector2;
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
        int type$iv4;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv;
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
        int type$iv5;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
        MutableVector mutableVector3;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
        int i;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv4;
        int i2;
        MutableVector mutableVector4;
        Object focusedKeyInputNode;
        FocusOwnerImpl this_$iv;
        int i3;
        DelegatableNode $this$ancestors_u2d64DMado$iv$iv;
        NodeChain nodes3;
        Object node$iv$iv$iv$iv;
        int i4;
        DelegatableNode $this$ancestors_u2d64DMado$iv$iv2;
        int i5;
        DelegatableNode $this$ancestors_u2d64DMado$iv$iv3;
        int count$iv$iv$iv$iv;
        MutableVector mutableVector5;
        if (this.focusInvalidationManager.hasPendingInvalidation()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching key event while focus system is invalidated.");
            return false;
        }
        if (!m3699validateKeyEventZmokQxo(keyEvent)) {
            return false;
        }
        FocusTargetNode activeFocusTarget4 = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        int i6 = 1;
        if (activeFocusTarget4 == null || (node = lastLocalKeyInputNode(activeFocusTarget4)) == null) {
            if (activeFocusTarget4 != null) {
                FocusTargetNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv = activeFocusTarget4;
                int iM5574constructorimpl = NodeKind.m5574constructorimpl(8192);
                if (!$this$nearestAncestorIncludingSelf_u2d64DMado$iv.getNode().getIsAttached()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node".toString());
                }
                Modifier.Node node$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv.getNode();
                LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestorIncludingSelf_u2d64DMado$iv);
                loop10: while (true) {
                    if (layout$iv$iv$iv == null) {
                        obj2 = null;
                        break;
                    }
                    Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
                    if ((head$iv$iv$iv.getAggregateChildKindSet() & iM5574constructorimpl) != 0) {
                        while (node$iv$iv$iv != null) {
                            if ((node$iv$iv$iv.getKindSet() & iM5574constructorimpl) != 0) {
                                Modifier.Node it$iv$iv = node$iv$iv$iv;
                                MutableVector mutableVector6 = null;
                                Modifier.Node nodePop = it$iv$iv;
                                while (nodePop != null) {
                                    if (nodePop instanceof KeyInputModifierNode) {
                                        obj2 = nodePop;
                                        break loop10;
                                    }
                                    Modifier.Node this_$iv$iv$iv$iv = nodePop;
                                    if (((this_$iv$iv$iv$iv.getKindSet() & iM5574constructorimpl) != 0 ? i6 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                        activeFocusTarget2 = activeFocusTarget4;
                                        nodePop = DelegatableNodeKt.pop(mutableVector6);
                                        activeFocusTarget4 = activeFocusTarget2;
                                        i6 = 1;
                                    } else {
                                        int count$iv$iv$iv3 = 0;
                                        DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                        Modifier.Node node$iv$iv$iv$iv2 = this_$iv$iv$iv$iv2.getDelegate();
                                        while (node$iv$iv$iv$iv2 != null) {
                                            Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv2;
                                            if (((next$iv$iv$iv.getKindSet() & iM5574constructorimpl) != 0 ? i6 : 0) != 0) {
                                                count$iv$iv$iv3++;
                                                if (count$iv$iv$iv3 == i6) {
                                                    nodePop = next$iv$iv$iv;
                                                    activeFocusTarget3 = activeFocusTarget4;
                                                } else {
                                                    if (mutableVector6 == null) {
                                                        activeFocusTarget3 = activeFocusTarget4;
                                                        count$iv$iv$iv2 = count$iv$iv$iv3;
                                                        mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                    } else {
                                                        activeFocusTarget3 = activeFocusTarget4;
                                                        count$iv$iv$iv2 = count$iv$iv$iv3;
                                                        mutableVector2 = mutableVector6;
                                                    }
                                                    Modifier.Node theNode$iv$iv$iv = nodePop;
                                                    if (theNode$iv$iv$iv != null) {
                                                        if (mutableVector2 != null) {
                                                            Boolean.valueOf(mutableVector2.add(theNode$iv$iv$iv));
                                                        }
                                                        nodePop = null;
                                                    }
                                                    if (mutableVector2 != null) {
                                                        Boolean.valueOf(mutableVector2.add(next$iv$iv$iv));
                                                    }
                                                    mutableVector6 = mutableVector2;
                                                    count$iv$iv$iv3 = count$iv$iv$iv2;
                                                }
                                            } else {
                                                activeFocusTarget3 = activeFocusTarget4;
                                            }
                                            node$iv$iv$iv$iv2 = node$iv$iv$iv$iv2.getChild();
                                            activeFocusTarget4 = activeFocusTarget3;
                                            i6 = 1;
                                        }
                                        activeFocusTarget2 = activeFocusTarget4;
                                        if (count$iv$iv$iv3 == 1) {
                                            activeFocusTarget4 = activeFocusTarget2;
                                            i6 = 1;
                                        } else {
                                            nodePop = DelegatableNodeKt.pop(mutableVector6);
                                            activeFocusTarget4 = activeFocusTarget2;
                                            i6 = 1;
                                        }
                                    }
                                }
                            }
                            node$iv$iv$iv = node$iv$iv$iv.getParent();
                            activeFocusTarget4 = activeFocusTarget4;
                            i6 = 1;
                        }
                        activeFocusTarget = activeFocusTarget4;
                    } else {
                        activeFocusTarget = activeFocusTarget4;
                    }
                    layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui_release();
                    node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes2 = layout$iv$iv$iv.getNodes()) == null) ? null : nodes2.getTail();
                    activeFocusTarget4 = activeFocusTarget;
                    i6 = 1;
                }
                KeyInputModifierNode keyInputModifierNode = (KeyInputModifierNode) obj2;
                if (keyInputModifierNode != null) {
                    node = keyInputModifierNode.getNode();
                }
            }
            DelegatableNode $this$nearestAncestor_u2d64DMado$iv4 = this.rootFocusNode;
            int type$iv6 = NodeKind.m5574constructorimpl(8192);
            if (!$this$nearestAncestor_u2d64DMado$iv4.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node node$iv$iv$iv2 = $this$nearestAncestor_u2d64DMado$iv4.getNode().getParent();
            LayoutNode layout$iv$iv$iv2 = DelegatableNodeKt.requireLayoutNode($this$nearestAncestor_u2d64DMado$iv4);
            loop14: while (true) {
                if (layout$iv$iv$iv2 == null) {
                    obj = null;
                    break;
                }
                Modifier.Node head$iv$iv$iv2 = layout$iv$iv$iv2.getNodes().getHead();
                if ((head$iv$iv$iv2.getAggregateChildKindSet() & type$iv6) != 0) {
                    while (node$iv$iv$iv2 != null) {
                        if ((node$iv$iv$iv2.getKindSet() & type$iv6) != 0) {
                            Modifier.Node it$iv$iv2 = node$iv$iv$iv2;
                            MutableVector mutableVector7 = null;
                            Modifier.Node nodePop2 = it$iv$iv2;
                            while (nodePop2 != null) {
                                if (nodePop2 instanceof KeyInputModifierNode) {
                                    obj = nodePop2;
                                    break loop14;
                                }
                                Modifier.Node this_$iv$iv$iv$iv3 = nodePop2;
                                if (((this_$iv$iv$iv$iv3.getKindSet() & type$iv6) != 0) && (nodePop2 instanceof DelegatingNode)) {
                                    int count$iv$iv$iv4 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv4 = (DelegatingNode) nodePop2;
                                    Modifier.Node node$iv$iv$iv$iv3 = this_$iv$iv$iv$iv4.getDelegate();
                                    while (node$iv$iv$iv$iv3 != null) {
                                        Modifier.Node next$iv$iv$iv2 = node$iv$iv$iv$iv3;
                                        if ((next$iv$iv$iv2.getKindSet() & type$iv6) != 0) {
                                            count$iv$iv$iv4++;
                                            $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                            if (count$iv$iv$iv4 == 1) {
                                                nodePop2 = next$iv$iv$iv2;
                                                type$iv3 = type$iv6;
                                            } else {
                                                if (mutableVector7 == null) {
                                                    count$iv$iv$iv = count$iv$iv$iv4;
                                                    type$iv3 = type$iv6;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv$iv = count$iv$iv$iv4;
                                                    type$iv3 = type$iv6;
                                                    mutableVector = mutableVector7;
                                                }
                                                MutableVector mutableVector8 = mutableVector;
                                                Modifier.Node theNode$iv$iv$iv2 = nodePop2;
                                                if (theNode$iv$iv$iv2 != null) {
                                                    if (mutableVector8 != null) {
                                                        Boolean.valueOf(mutableVector8.add(theNode$iv$iv$iv2));
                                                    }
                                                    nodePop2 = null;
                                                }
                                                if (mutableVector8 != null) {
                                                    Boolean.valueOf(mutableVector8.add(next$iv$iv$iv2));
                                                }
                                                mutableVector7 = mutableVector8;
                                                count$iv$iv$iv4 = count$iv$iv$iv;
                                            }
                                        } else {
                                            $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                            type$iv3 = type$iv6;
                                        }
                                        node$iv$iv$iv$iv3 = node$iv$iv$iv$iv3.getChild();
                                        $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv3;
                                        type$iv6 = type$iv3;
                                    }
                                    $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv4;
                                    type$iv2 = type$iv6;
                                    if (count$iv$iv$iv4 == 1) {
                                        $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                        type$iv6 = type$iv2;
                                    } else {
                                        nodePop2 = DelegatableNodeKt.pop(mutableVector7);
                                        $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                        type$iv6 = type$iv2;
                                    }
                                } else {
                                    $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv4;
                                    type$iv2 = type$iv6;
                                    nodePop2 = DelegatableNodeKt.pop(mutableVector7);
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                    type$iv6 = type$iv2;
                                }
                            }
                        }
                        node$iv$iv$iv2 = node$iv$iv$iv2.getParent();
                        $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv4;
                        type$iv6 = type$iv6;
                    }
                    $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv4;
                    type$iv = type$iv6;
                } else {
                    $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv4;
                    type$iv = type$iv6;
                }
                layout$iv$iv$iv2 = layout$iv$iv$iv2.getParent$ui_release();
                node$iv$iv$iv2 = (layout$iv$iv$iv2 == null || (nodes = layout$iv$iv$iv2.getNodes()) == null) ? null : nodes.getTail();
                $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv;
                type$iv6 = type$iv;
            }
            KeyInputModifierNode keyInputModifierNode2 = (KeyInputModifierNode) obj;
            node = keyInputModifierNode2 != null ? keyInputModifierNode2.getNode() : null;
        }
        Object focusedKeyInputNode2 = node;
        if (focusedKeyInputNode2 == null) {
            return false;
        }
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = (DelegatableNode) focusedKeyInputNode2;
        int type$iv7 = NodeKind.m5574constructorimpl(8192);
        FocusOwnerImpl this_$iv2 = this;
        int i7 = 0;
        DelegatableNode $this$ancestors_u2d64DMado$iv$iv4 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
        List list = null;
        if (!$this$ancestors_u2d64DMado$iv$iv4.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node$iv$iv$iv$iv4 = $this$ancestors_u2d64DMado$iv$iv4.getNode().getParent();
        LayoutNode layout$iv$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$ancestors_u2d64DMado$iv$iv4);
        while (layout$iv$iv$iv$iv != null) {
            Modifier.Node head$iv$iv$iv$iv = layout$iv$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv$iv.getAggregateChildKindSet() & type$iv7) != 0) {
                while (node$iv$iv$iv$iv4 != null) {
                    if ((node$iv$iv$iv$iv4.getKindSet() & type$iv7) != 0) {
                        Modifier.Node it$iv$iv$iv = node$iv$iv$iv$iv4;
                        MutableVector mutableVector9 = null;
                        node$iv$iv$iv$iv = focusedKeyInputNode2;
                        Modifier.Node focusedKeyInputNode3 = it$iv$iv$iv;
                        while (focusedKeyInputNode3 != null) {
                            FocusOwnerImpl this_$iv3 = this_$iv2;
                            if (focusedKeyInputNode3 instanceof KeyInputModifierNode) {
                                Modifier.Node node2 = focusedKeyInputNode3;
                                if (list == null) {
                                    Object result$iv$iv = new ArrayList();
                                    list = (List) result$iv$iv;
                                }
                                list.add(node2);
                                i4 = i7;
                                $this$ancestors_u2d64DMado$iv$iv2 = $this$ancestors_u2d64DMado$iv$iv4;
                            } else {
                                Modifier.Node this_$iv$iv$iv$iv$iv = focusedKeyInputNode3;
                                if (((this_$iv$iv$iv$iv$iv.getKindSet() & type$iv7) != 0) && (focusedKeyInputNode3 instanceof DelegatingNode)) {
                                    int count$iv$iv$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv$iv2 = (DelegatingNode) focusedKeyInputNode3;
                                    Modifier.Node node$iv$iv$iv$iv$iv = this_$iv$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv$iv = node$iv$iv$iv$iv$iv;
                                        if ((next$iv$iv$iv$iv.getKindSet() & type$iv7) != 0) {
                                            count$iv$iv$iv$iv2++;
                                            i5 = i7;
                                            if (count$iv$iv$iv$iv2 == 1) {
                                                focusedKeyInputNode3 = next$iv$iv$iv$iv;
                                                $this$ancestors_u2d64DMado$iv$iv3 = $this$ancestors_u2d64DMado$iv$iv4;
                                            } else {
                                                if (mutableVector9 == null) {
                                                    count$iv$iv$iv$iv = count$iv$iv$iv$iv2;
                                                    $this$ancestors_u2d64DMado$iv$iv3 = $this$ancestors_u2d64DMado$iv$iv4;
                                                    mutableVector5 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv$iv$iv = count$iv$iv$iv$iv2;
                                                    $this$ancestors_u2d64DMado$iv$iv3 = $this$ancestors_u2d64DMado$iv$iv4;
                                                    mutableVector5 = mutableVector9;
                                                }
                                                MutableVector mutableVector10 = mutableVector5;
                                                Modifier.Node theNode$iv$iv$iv$iv = focusedKeyInputNode3;
                                                if (theNode$iv$iv$iv$iv != null) {
                                                    if (mutableVector10 != null) {
                                                        Boolean.valueOf(mutableVector10.add(theNode$iv$iv$iv$iv));
                                                    }
                                                    focusedKeyInputNode3 = null;
                                                }
                                                if (mutableVector10 != null) {
                                                    Boolean.valueOf(mutableVector10.add(next$iv$iv$iv$iv));
                                                }
                                                mutableVector9 = mutableVector10;
                                                count$iv$iv$iv$iv2 = count$iv$iv$iv$iv;
                                            }
                                        } else {
                                            i5 = i7;
                                            $this$ancestors_u2d64DMado$iv$iv3 = $this$ancestors_u2d64DMado$iv$iv4;
                                        }
                                        node$iv$iv$iv$iv$iv = node$iv$iv$iv$iv$iv.getChild();
                                        i7 = i5;
                                        $this$ancestors_u2d64DMado$iv$iv4 = $this$ancestors_u2d64DMado$iv$iv3;
                                    }
                                    i4 = i7;
                                    $this$ancestors_u2d64DMado$iv$iv2 = $this$ancestors_u2d64DMado$iv$iv4;
                                    if (count$iv$iv$iv$iv2 == 1) {
                                        this_$iv2 = this_$iv3;
                                        i7 = i4;
                                        $this$ancestors_u2d64DMado$iv$iv4 = $this$ancestors_u2d64DMado$iv$iv2;
                                    }
                                } else {
                                    i4 = i7;
                                    $this$ancestors_u2d64DMado$iv$iv2 = $this$ancestors_u2d64DMado$iv$iv4;
                                }
                            }
                            focusedKeyInputNode3 = DelegatableNodeKt.pop(mutableVector9);
                            this_$iv2 = this_$iv3;
                            i7 = i4;
                            $this$ancestors_u2d64DMado$iv$iv4 = $this$ancestors_u2d64DMado$iv$iv2;
                        }
                    } else {
                        node$iv$iv$iv$iv = focusedKeyInputNode2;
                    }
                    node$iv$iv$iv$iv4 = node$iv$iv$iv$iv4.getParent();
                    focusedKeyInputNode2 = node$iv$iv$iv$iv;
                    this_$iv2 = this_$iv2;
                    i7 = i7;
                    $this$ancestors_u2d64DMado$iv$iv4 = $this$ancestors_u2d64DMado$iv$iv4;
                }
                focusedKeyInputNode = focusedKeyInputNode2;
                this_$iv = this_$iv2;
                i3 = i7;
                $this$ancestors_u2d64DMado$iv$iv = $this$ancestors_u2d64DMado$iv$iv4;
            } else {
                focusedKeyInputNode = focusedKeyInputNode2;
                this_$iv = this_$iv2;
                i3 = i7;
                $this$ancestors_u2d64DMado$iv$iv = $this$ancestors_u2d64DMado$iv$iv4;
            }
            layout$iv$iv$iv$iv = layout$iv$iv$iv$iv.getParent$ui_release();
            node$iv$iv$iv$iv4 = (layout$iv$iv$iv$iv == null || (nodes3 = layout$iv$iv$iv$iv.getNodes()) == null) ? null : nodes3.getTail();
            focusedKeyInputNode2 = focusedKeyInputNode;
            this_$iv2 = this_$iv;
            i7 = i3;
            $this$ancestors_u2d64DMado$iv$iv4 = $this$ancestors_u2d64DMado$iv$iv;
        }
        List ancestors$iv = list;
        if (ancestors$iv != null) {
            int size = ancestors$iv.size() - 1;
            if (size >= 0) {
                do {
                    int index$iv$iv = size;
                    size--;
                    Object item$iv$iv = ancestors$iv.get(index$iv$iv);
                    KeyInputModifierNode it = (KeyInputModifierNode) item$iv$iv;
                    if (it.mo210onPreKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                } while (size >= 0);
            }
            Unit unit = Unit.INSTANCE;
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3.getNode();
        int i8 = 0;
        MutableVector mutableVector11 = null;
        Modifier.Node nodePop3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
        while (nodePop3 != null) {
            if (nodePop3 instanceof KeyInputModifierNode) {
                KeyInputModifierNode it2 = (KeyInputModifierNode) nodePop3;
                if (it2.mo210onPreKeyEventZmokQxo(keyEvent)) {
                    return true;
                }
                $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                i = i8;
            } else {
                Modifier.Node this_$iv$iv$iv = nodePop3;
                if (((this_$iv$iv$iv.getKindSet() & type$iv7) != 0) && (nodePop3 instanceof DelegatingNode)) {
                    int count$iv$iv = 0;
                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop3;
                    Modifier.Node node$iv$iv$iv3 = this_$iv$iv$iv2.getDelegate();
                    while (node$iv$iv$iv3 != null) {
                        Modifier.Node next$iv$iv = node$iv$iv$iv3;
                        if ((next$iv$iv.getKindSet() & type$iv7) != 0) {
                            count$iv$iv++;
                            if (count$iv$iv == 1) {
                                nodePop3 = next$iv$iv;
                                $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                                i2 = i8;
                            } else {
                                if (mutableVector11 == null) {
                                    $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                                    i2 = i8;
                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                } else {
                                    $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                                    i2 = i8;
                                    mutableVector4 = mutableVector11;
                                }
                                mutableVector11 = mutableVector4;
                                Modifier.Node theNode$iv$iv = nodePop3;
                                if (theNode$iv$iv != null) {
                                    if (mutableVector11 != null) {
                                        Boolean.valueOf(mutableVector11.add(theNode$iv$iv));
                                    }
                                    nodePop3 = null;
                                }
                                if (mutableVector11 != null) {
                                    Boolean.valueOf(mutableVector11.add(next$iv$iv));
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                            i2 = i8;
                        }
                        node$iv$iv$iv3 = node$iv$iv$iv3.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv4;
                        i8 = i2;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                    i = i8;
                    MutableVector mutableVector12 = mutableVector11;
                    if (count$iv$iv == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                        i8 = i;
                        mutableVector11 = mutableVector12;
                    } else {
                        mutableVector11 = mutableVector12;
                    }
                } else {
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                    i = i8;
                }
            }
            nodePop3 = DelegatableNodeKt.pop(mutableVector11);
            $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
            i8 = i;
        }
        if (onFocusedItem.invoke().booleanValue()) {
            return true;
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3.getNode();
        MutableVector mutableVector13 = null;
        Modifier.Node nodePop4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
        while (nodePop4 != null) {
            if (nodePop4 instanceof KeyInputModifierNode) {
                KeyInputModifierNode it3 = (KeyInputModifierNode) nodePop4;
                if (it3.mo208onKeyEventZmokQxo(keyEvent)) {
                    return true;
                }
                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                type$iv4 = type$iv7;
                $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
            } else {
                Modifier.Node this_$iv$iv$iv3 = nodePop4;
                if (((this_$iv$iv$iv3.getKindSet() & type$iv7) != 0) && (nodePop4 instanceof DelegatingNode)) {
                    int count$iv$iv2 = 0;
                    DelegatingNode this_$iv$iv$iv4 = (DelegatingNode) nodePop4;
                    Modifier.Node node$iv$iv$iv4 = this_$iv$iv$iv4.getDelegate();
                    while (node$iv$iv$iv4 != null) {
                        Modifier.Node next$iv$iv2 = node$iv$iv$iv4;
                        if ((next$iv$iv2.getKindSet() & type$iv7) != 0) {
                            count$iv$iv2++;
                            if (count$iv$iv2 == 1) {
                                nodePop4 = next$iv$iv2;
                                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                type$iv5 = type$iv7;
                                $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                            } else {
                                if (mutableVector13 == null) {
                                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                    type$iv5 = type$iv7;
                                    $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                } else {
                                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                    type$iv5 = type$iv7;
                                    $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                                    mutableVector3 = mutableVector13;
                                }
                                mutableVector13 = mutableVector3;
                                Modifier.Node theNode$iv$iv2 = nodePop4;
                                if (theNode$iv$iv2 != null) {
                                    if (mutableVector13 != null) {
                                        Boolean.valueOf(mutableVector13.add(theNode$iv$iv2));
                                    }
                                    nodePop4 = null;
                                }
                                if (mutableVector13 != null) {
                                    Boolean.valueOf(mutableVector13.add(next$iv$iv2));
                                }
                            }
                        } else {
                            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                            type$iv5 = type$iv7;
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                        }
                        node$iv$iv$iv4 = node$iv$iv$iv4.getChild();
                        $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                        type$iv7 = type$iv5;
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
                    }
                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                    type$iv4 = type$iv7;
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                    if (count$iv$iv2 == 1) {
                        $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
                        type$iv7 = type$iv4;
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
                    }
                } else {
                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                    type$iv4 = type$iv7;
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                }
            }
            nodePop4 = DelegatableNodeKt.pop(mutableVector13);
            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
            type$iv7 = type$iv4;
            $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
        }
        if (ancestors$iv != null) {
            int size2 = ancestors$iv.size();
            for (int index$iv$iv2 = 0; index$iv$iv2 < size2; index$iv$iv2++) {
                Object item$iv$iv2 = ancestors$iv.get(index$iv$iv2);
                KeyInputModifierNode it4 = (KeyInputModifierNode) item$iv$iv2;
                if (it4.mo208onKeyEventZmokQxo(keyEvent)) {
                    return true;
                }
            }
            Unit unit2 = Unit.INSTANCE;
        }
        Unit unit3 = Unit.INSTANCE;
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v47 */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v49 */
    /* JADX WARN: Type inference failed for: r6v50 */
    /* JADX WARN: Type inference failed for: r6v51 */
    /* JADX WARN: Type inference failed for: r6v52 */
    /* JADX WARN: Type inference failed for: r6v53 */
    /* JADX WARN: Type inference failed for: r6v54 */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo */
    public boolean mo3692dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent) {
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode;
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode2;
        Modifier.Node node;
        int i;
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode3;
        Modifier.Node node2;
        int i2;
        MutableVector mutableVector;
        Modifier.Node node3;
        int i3;
        Modifier.Node node4;
        int i4;
        MutableVector mutableVector2;
        int size;
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode4;
        FocusOwnerImpl focusOwnerImpl;
        int i5;
        NodeChain nodes;
        FocusOwnerImpl focusOwnerImpl2;
        int i6;
        FocusOwnerImpl focusOwnerImpl3;
        int i7;
        int i8;
        MutableVector mutableVector3;
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode5;
        FocusTargetNode focusTargetNode;
        NodeChain nodes2;
        FocusTargetNode focusTargetNode2;
        FocusTargetNode focusTargetNode3;
        MutableVector mutableVector4;
        if (this.focusInvalidationManager.hasPendingInvalidation()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            return false;
        }
        FocusTargetNode focusTargetNodeFindActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        int i9 = 1;
        if (focusTargetNodeFindActiveFocusNode != null) {
            FocusTargetNode focusTargetNode4 = focusTargetNodeFindActiveFocusNode;
            int iM5574constructorimpl = NodeKind.m5574constructorimpl(131072);
            if (!focusTargetNode4.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node node5 = focusTargetNode4.getNode();
            LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode4);
            loop0: while (true) {
                if (layoutNodeRequireLayoutNode == null) {
                    softKeyboardInterceptionModifierNode5 = null;
                    break;
                }
                if ((layoutNodeRequireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & iM5574constructorimpl) != 0) {
                    while (node5 != null) {
                        if ((node5.getKindSet() & iM5574constructorimpl) != 0) {
                            MutableVector mutableVector5 = null;
                            Modifier.Node nodePop = node5;
                            while (nodePop != 0) {
                                if (nodePop instanceof SoftKeyboardInterceptionModifierNode) {
                                    softKeyboardInterceptionModifierNode5 = nodePop;
                                    break loop0;
                                }
                                if (((nodePop.getKindSet() & iM5574constructorimpl) != 0 ? i9 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    focusTargetNode2 = focusTargetNode4;
                                    nodePop = DelegatableNodeKt.pop(mutableVector5);
                                    focusTargetNode4 = focusTargetNode2;
                                    i9 = 1;
                                } else {
                                    int i10 = 0;
                                    Modifier.Node delegate = nodePop.getDelegate();
                                    nodePop = nodePop;
                                    while (delegate != null) {
                                        Modifier.Node node6 = delegate;
                                        if (((node6.getKindSet() & iM5574constructorimpl) != 0 ? i9 : 0) != 0) {
                                            i10++;
                                            if (i10 == i9) {
                                                nodePop = node6;
                                                focusTargetNode3 = focusTargetNode4;
                                            } else {
                                                if (mutableVector5 == null) {
                                                    focusTargetNode3 = focusTargetNode4;
                                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    focusTargetNode3 = focusTargetNode4;
                                                    mutableVector4 = mutableVector5;
                                                }
                                                Object obj = nodePop;
                                                nodePop = nodePop;
                                                if (obj != null) {
                                                    if (mutableVector4 != null) {
                                                        mutableVector4.add(obj);
                                                    }
                                                    nodePop = 0;
                                                }
                                                if (mutableVector4 != null) {
                                                    mutableVector4.add(node6);
                                                }
                                                mutableVector5 = mutableVector4;
                                            }
                                        } else {
                                            focusTargetNode3 = focusTargetNode4;
                                        }
                                        delegate = delegate.getChild();
                                        focusTargetNode4 = focusTargetNode3;
                                        i9 = 1;
                                        nodePop = nodePop;
                                    }
                                    focusTargetNode2 = focusTargetNode4;
                                    if (i10 == 1) {
                                        focusTargetNode4 = focusTargetNode2;
                                        i9 = 1;
                                    } else {
                                        nodePop = DelegatableNodeKt.pop(mutableVector5);
                                        focusTargetNode4 = focusTargetNode2;
                                        i9 = 1;
                                    }
                                }
                            }
                        }
                        node5 = node5.getParent();
                        focusTargetNode4 = focusTargetNode4;
                        i9 = 1;
                    }
                    focusTargetNode = focusTargetNode4;
                } else {
                    focusTargetNode = focusTargetNode4;
                }
                layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui_release();
                node5 = (layoutNodeRequireLayoutNode == null || (nodes2 = layoutNodeRequireLayoutNode.getNodes()) == null) ? null : nodes2.getTail();
                focusTargetNode4 = focusTargetNode;
                i9 = 1;
            }
            softKeyboardInterceptionModifierNode = softKeyboardInterceptionModifierNode5;
        } else {
            softKeyboardInterceptionModifierNode = null;
        }
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode6 = softKeyboardInterceptionModifierNode;
        if (softKeyboardInterceptionModifierNode6 == null) {
            return false;
        }
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode7 = softKeyboardInterceptionModifierNode6;
        int iM5574constructorimpl2 = NodeKind.m5574constructorimpl(131072);
        FocusOwnerImpl focusOwnerImpl4 = this;
        int i11 = 0;
        ArrayList arrayList = null;
        if (!softKeyboardInterceptionModifierNode7.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = softKeyboardInterceptionModifierNode7.getNode().getParent();
        LayoutNode layoutNodeRequireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(softKeyboardInterceptionModifierNode7);
        while (layoutNodeRequireLayoutNode2 != null) {
            if ((layoutNodeRequireLayoutNode2.getNodes().getHead().getAggregateChildKindSet() & iM5574constructorimpl2) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & iM5574constructorimpl2) != 0) {
                        MutableVector mutableVector6 = null;
                        Modifier.Node nodePop2 = parent;
                        while (nodePop2 != null) {
                            SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode8 = softKeyboardInterceptionModifierNode6;
                            if (nodePop2 instanceof SoftKeyboardInterceptionModifierNode) {
                                Modifier.Node node7 = nodePop2;
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(node7);
                                focusOwnerImpl2 = focusOwnerImpl4;
                                i6 = i11;
                            } else if (((nodePop2.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop2 instanceof DelegatingNode)) {
                                int i12 = 0;
                                Modifier.Node delegate2 = ((DelegatingNode) nodePop2).getDelegate();
                                while (delegate2 != null) {
                                    Modifier.Node node8 = delegate2;
                                    if ((node8.getKindSet() & iM5574constructorimpl2) != 0) {
                                        i12++;
                                        focusOwnerImpl3 = focusOwnerImpl4;
                                        if (i12 == 1) {
                                            nodePop2 = node8;
                                            i7 = i11;
                                        } else {
                                            if (mutableVector6 == null) {
                                                i8 = i12;
                                                i7 = i11;
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                i8 = i12;
                                                i7 = i11;
                                                mutableVector3 = mutableVector6;
                                            }
                                            MutableVector mutableVector7 = mutableVector3;
                                            Modifier.Node node9 = nodePop2;
                                            if (node9 != null) {
                                                if (mutableVector7 != null) {
                                                    mutableVector7.add(node9);
                                                }
                                                nodePop2 = null;
                                            }
                                            if (mutableVector7 != null) {
                                                mutableVector7.add(node8);
                                            }
                                            mutableVector6 = mutableVector7;
                                            i12 = i8;
                                        }
                                    } else {
                                        focusOwnerImpl3 = focusOwnerImpl4;
                                        i7 = i11;
                                    }
                                    delegate2 = delegate2.getChild();
                                    focusOwnerImpl4 = focusOwnerImpl3;
                                    i11 = i7;
                                }
                                focusOwnerImpl2 = focusOwnerImpl4;
                                i6 = i11;
                                if (i12 == 1) {
                                    softKeyboardInterceptionModifierNode6 = softKeyboardInterceptionModifierNode8;
                                    focusOwnerImpl4 = focusOwnerImpl2;
                                    i11 = i6;
                                }
                            } else {
                                focusOwnerImpl2 = focusOwnerImpl4;
                                i6 = i11;
                            }
                            nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                            softKeyboardInterceptionModifierNode6 = softKeyboardInterceptionModifierNode8;
                            focusOwnerImpl4 = focusOwnerImpl2;
                            i11 = i6;
                        }
                    }
                    parent = parent.getParent();
                    softKeyboardInterceptionModifierNode6 = softKeyboardInterceptionModifierNode6;
                    focusOwnerImpl4 = focusOwnerImpl4;
                    i11 = i11;
                }
                softKeyboardInterceptionModifierNode4 = softKeyboardInterceptionModifierNode6;
                focusOwnerImpl = focusOwnerImpl4;
                i5 = i11;
            } else {
                softKeyboardInterceptionModifierNode4 = softKeyboardInterceptionModifierNode6;
                focusOwnerImpl = focusOwnerImpl4;
                i5 = i11;
            }
            layoutNodeRequireLayoutNode2 = layoutNodeRequireLayoutNode2.getParent$ui_release();
            parent = (layoutNodeRequireLayoutNode2 == null || (nodes = layoutNodeRequireLayoutNode2.getNodes()) == null) ? null : nodes.getTail();
            softKeyboardInterceptionModifierNode6 = softKeyboardInterceptionModifierNode4;
            focusOwnerImpl4 = focusOwnerImpl;
            i11 = i5;
        }
        List list = arrayList;
        if (list != null && list.size() - 1 >= 0) {
            do {
                int i13 = size;
                size--;
                if (((SoftKeyboardInterceptionModifierNode) list.get(i13)).mo4756onPreInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                    return true;
                }
            } while (size >= 0);
        }
        Modifier.Node node10 = softKeyboardInterceptionModifierNode7.getNode();
        int i14 = 0;
        MutableVector mutableVector8 = null;
        Modifier.Node nodePop3 = node10;
        while (nodePop3 != null) {
            if (nodePop3 instanceof SoftKeyboardInterceptionModifierNode) {
                if (((SoftKeyboardInterceptionModifierNode) nodePop3).mo4756onPreInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                    return true;
                }
                node3 = node10;
                i3 = i14;
            } else if (((nodePop3.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop3 instanceof DelegatingNode)) {
                int i15 = 0;
                Modifier.Node delegate3 = ((DelegatingNode) nodePop3).getDelegate();
                while (delegate3 != null) {
                    Modifier.Node node11 = delegate3;
                    if ((node11.getKindSet() & iM5574constructorimpl2) != 0) {
                        i15++;
                        if (i15 == 1) {
                            nodePop3 = node11;
                            node4 = node10;
                            i4 = i14;
                        } else {
                            if (mutableVector8 == null) {
                                node4 = node10;
                                i4 = i14;
                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                            } else {
                                node4 = node10;
                                i4 = i14;
                                mutableVector2 = mutableVector8;
                            }
                            mutableVector8 = mutableVector2;
                            Modifier.Node node12 = nodePop3;
                            if (node12 != null) {
                                if (mutableVector8 != null) {
                                    mutableVector8.add(node12);
                                }
                                nodePop3 = null;
                            }
                            if (mutableVector8 != null) {
                                mutableVector8.add(node11);
                            }
                        }
                    } else {
                        node4 = node10;
                        i4 = i14;
                    }
                    delegate3 = delegate3.getChild();
                    node10 = node4;
                    i14 = i4;
                }
                node3 = node10;
                i3 = i14;
                MutableVector mutableVector9 = mutableVector8;
                if (i15 == 1) {
                    node10 = node3;
                    i14 = i3;
                    mutableVector8 = mutableVector9;
                } else {
                    mutableVector8 = mutableVector9;
                }
            } else {
                node3 = node10;
                i3 = i14;
            }
            nodePop3 = DelegatableNodeKt.pop(mutableVector8);
            node10 = node3;
            i14 = i3;
        }
        Modifier.Node node13 = softKeyboardInterceptionModifierNode7.getNode();
        int i16 = 0;
        MutableVector mutableVector10 = null;
        Modifier.Node nodePop4 = node13;
        while (nodePop4 != null) {
            if (nodePop4 instanceof SoftKeyboardInterceptionModifierNode) {
                if (((SoftKeyboardInterceptionModifierNode) nodePop4).mo4755onInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                    return true;
                }
                softKeyboardInterceptionModifierNode2 = softKeyboardInterceptionModifierNode7;
                node = node13;
                i = i16;
            } else if (((nodePop4.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop4 instanceof DelegatingNode)) {
                int i17 = 0;
                Modifier.Node delegate4 = ((DelegatingNode) nodePop4).getDelegate();
                while (delegate4 != null) {
                    Modifier.Node node14 = delegate4;
                    if ((node14.getKindSet() & iM5574constructorimpl2) != 0) {
                        i17++;
                        if (i17 == 1) {
                            nodePop4 = node14;
                            softKeyboardInterceptionModifierNode3 = softKeyboardInterceptionModifierNode7;
                            node2 = node13;
                            i2 = i16;
                        } else {
                            if (mutableVector10 == null) {
                                softKeyboardInterceptionModifierNode3 = softKeyboardInterceptionModifierNode7;
                                node2 = node13;
                                i2 = i16;
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            } else {
                                softKeyboardInterceptionModifierNode3 = softKeyboardInterceptionModifierNode7;
                                node2 = node13;
                                i2 = i16;
                                mutableVector = mutableVector10;
                            }
                            mutableVector10 = mutableVector;
                            Modifier.Node node15 = nodePop4;
                            if (node15 != null) {
                                if (mutableVector10 != null) {
                                    mutableVector10.add(node15);
                                }
                                nodePop4 = null;
                            }
                            if (mutableVector10 != null) {
                                mutableVector10.add(node14);
                            }
                        }
                    } else {
                        softKeyboardInterceptionModifierNode3 = softKeyboardInterceptionModifierNode7;
                        node2 = node13;
                        i2 = i16;
                    }
                    delegate4 = delegate4.getChild();
                    softKeyboardInterceptionModifierNode7 = softKeyboardInterceptionModifierNode3;
                    node13 = node2;
                    i16 = i2;
                }
                softKeyboardInterceptionModifierNode2 = softKeyboardInterceptionModifierNode7;
                node = node13;
                i = i16;
                if (i17 == 1) {
                    softKeyboardInterceptionModifierNode7 = softKeyboardInterceptionModifierNode2;
                    node13 = node;
                    i16 = i;
                }
            } else {
                softKeyboardInterceptionModifierNode2 = softKeyboardInterceptionModifierNode7;
                node = node13;
                i = i16;
            }
            nodePop4 = DelegatableNodeKt.pop(mutableVector10);
            softKeyboardInterceptionModifierNode7 = softKeyboardInterceptionModifierNode2;
            node13 = node;
            i16 = i;
        }
        if (list == null) {
            return false;
        }
        int size2 = list.size();
        for (int i18 = 0; i18 < size2; i18++) {
            if (((SoftKeyboardInterceptionModifierNode) list.get(i18)).mo4755onInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchRotaryEvent(RotaryScrollEvent event) {
        RotaryInputModifierNode rotaryInputModifierNode;
        RotaryInputModifierNode rotaryInputModifierNode2;
        Modifier.Node node;
        int i;
        RotaryInputModifierNode rotaryInputModifierNode3;
        Modifier.Node node2;
        int i2;
        MutableVector mutableVector;
        Modifier.Node node3;
        int i3;
        Modifier.Node node4;
        int i4;
        MutableVector mutableVector2;
        int size;
        RotaryInputModifierNode rotaryInputModifierNode4;
        FocusOwnerImpl focusOwnerImpl;
        int i5;
        NodeChain nodes;
        FocusOwnerImpl focusOwnerImpl2;
        int i6;
        FocusOwnerImpl focusOwnerImpl3;
        int i7;
        int i8;
        MutableVector mutableVector3;
        RotaryInputModifierNode rotaryInputModifierNode5;
        FocusTargetNode focusTargetNode;
        NodeChain nodes2;
        FocusTargetNode focusTargetNode2;
        FocusTargetNode focusTargetNode3;
        MutableVector mutableVector4;
        if (this.focusInvalidationManager.hasPendingInvalidation()) {
            throw new IllegalStateException("Dispatching rotary event while focus system is invalidated.".toString());
        }
        FocusTargetNode focusTargetNodeFindActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        int i9 = 1;
        if (focusTargetNodeFindActiveFocusNode != null) {
            FocusTargetNode focusTargetNode4 = focusTargetNodeFindActiveFocusNode;
            int iM5574constructorimpl = NodeKind.m5574constructorimpl(16384);
            if (!focusTargetNode4.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node node5 = focusTargetNode4.getNode();
            LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode4);
            loop0: while (true) {
                if (layoutNodeRequireLayoutNode == null) {
                    rotaryInputModifierNode5 = null;
                    break;
                }
                if ((layoutNodeRequireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & iM5574constructorimpl) != 0) {
                    while (node5 != null) {
                        if ((node5.getKindSet() & iM5574constructorimpl) != 0) {
                            MutableVector mutableVector5 = null;
                            Modifier.Node nodePop = node5;
                            while (nodePop != 0) {
                                if (nodePop instanceof RotaryInputModifierNode) {
                                    rotaryInputModifierNode5 = nodePop;
                                    break loop0;
                                }
                                if (((nodePop.getKindSet() & iM5574constructorimpl) != 0 ? i9 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    focusTargetNode2 = focusTargetNode4;
                                    nodePop = DelegatableNodeKt.pop(mutableVector5);
                                    focusTargetNode4 = focusTargetNode2;
                                    i9 = 1;
                                } else {
                                    int i10 = 0;
                                    Modifier.Node delegate = nodePop.getDelegate();
                                    nodePop = nodePop;
                                    while (delegate != null) {
                                        Modifier.Node node6 = delegate;
                                        if (((node6.getKindSet() & iM5574constructorimpl) != 0 ? i9 : 0) != 0) {
                                            i10++;
                                            if (i10 == i9) {
                                                nodePop = node6;
                                                focusTargetNode3 = focusTargetNode4;
                                            } else {
                                                if (mutableVector5 == null) {
                                                    focusTargetNode3 = focusTargetNode4;
                                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    focusTargetNode3 = focusTargetNode4;
                                                    mutableVector4 = mutableVector5;
                                                }
                                                Object obj = nodePop;
                                                nodePop = nodePop;
                                                if (obj != null) {
                                                    if (mutableVector4 != null) {
                                                        mutableVector4.add(obj);
                                                    }
                                                    nodePop = 0;
                                                }
                                                if (mutableVector4 != null) {
                                                    mutableVector4.add(node6);
                                                }
                                                mutableVector5 = mutableVector4;
                                            }
                                        } else {
                                            focusTargetNode3 = focusTargetNode4;
                                        }
                                        delegate = delegate.getChild();
                                        focusTargetNode4 = focusTargetNode3;
                                        i9 = 1;
                                        nodePop = nodePop;
                                    }
                                    focusTargetNode2 = focusTargetNode4;
                                    if (i10 == 1) {
                                        focusTargetNode4 = focusTargetNode2;
                                        i9 = 1;
                                    } else {
                                        nodePop = DelegatableNodeKt.pop(mutableVector5);
                                        focusTargetNode4 = focusTargetNode2;
                                        i9 = 1;
                                    }
                                }
                            }
                        }
                        node5 = node5.getParent();
                        focusTargetNode4 = focusTargetNode4;
                        i9 = 1;
                    }
                    focusTargetNode = focusTargetNode4;
                } else {
                    focusTargetNode = focusTargetNode4;
                }
                layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui_release();
                node5 = (layoutNodeRequireLayoutNode == null || (nodes2 = layoutNodeRequireLayoutNode.getNodes()) == null) ? null : nodes2.getTail();
                focusTargetNode4 = focusTargetNode;
                i9 = 1;
            }
            rotaryInputModifierNode = rotaryInputModifierNode5;
        } else {
            rotaryInputModifierNode = null;
        }
        RotaryInputModifierNode rotaryInputModifierNode6 = rotaryInputModifierNode;
        if (rotaryInputModifierNode6 == null) {
            return false;
        }
        RotaryInputModifierNode rotaryInputModifierNode7 = rotaryInputModifierNode6;
        int iM5574constructorimpl2 = NodeKind.m5574constructorimpl(16384);
        FocusOwnerImpl focusOwnerImpl4 = this;
        int i11 = 0;
        ArrayList arrayList = null;
        if (!rotaryInputModifierNode7.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = rotaryInputModifierNode7.getNode().getParent();
        LayoutNode layoutNodeRequireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(rotaryInputModifierNode7);
        while (layoutNodeRequireLayoutNode2 != null) {
            if ((layoutNodeRequireLayoutNode2.getNodes().getHead().getAggregateChildKindSet() & iM5574constructorimpl2) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & iM5574constructorimpl2) != 0) {
                        MutableVector mutableVector6 = null;
                        Modifier.Node nodePop2 = parent;
                        while (nodePop2 != null) {
                            RotaryInputModifierNode rotaryInputModifierNode8 = rotaryInputModifierNode6;
                            if (nodePop2 instanceof RotaryInputModifierNode) {
                                Modifier.Node node7 = nodePop2;
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(node7);
                                focusOwnerImpl2 = focusOwnerImpl4;
                                i6 = i11;
                            } else if (((nodePop2.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop2 instanceof DelegatingNode)) {
                                int i12 = 0;
                                Modifier.Node delegate2 = ((DelegatingNode) nodePop2).getDelegate();
                                while (delegate2 != null) {
                                    Modifier.Node node8 = delegate2;
                                    if ((node8.getKindSet() & iM5574constructorimpl2) != 0) {
                                        i12++;
                                        focusOwnerImpl3 = focusOwnerImpl4;
                                        if (i12 == 1) {
                                            nodePop2 = node8;
                                            i7 = i11;
                                        } else {
                                            if (mutableVector6 == null) {
                                                i8 = i12;
                                                i7 = i11;
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                i8 = i12;
                                                i7 = i11;
                                                mutableVector3 = mutableVector6;
                                            }
                                            MutableVector mutableVector7 = mutableVector3;
                                            Modifier.Node node9 = nodePop2;
                                            if (node9 != null) {
                                                if (mutableVector7 != null) {
                                                    mutableVector7.add(node9);
                                                }
                                                nodePop2 = null;
                                            }
                                            if (mutableVector7 != null) {
                                                mutableVector7.add(node8);
                                            }
                                            mutableVector6 = mutableVector7;
                                            i12 = i8;
                                        }
                                    } else {
                                        focusOwnerImpl3 = focusOwnerImpl4;
                                        i7 = i11;
                                    }
                                    delegate2 = delegate2.getChild();
                                    focusOwnerImpl4 = focusOwnerImpl3;
                                    i11 = i7;
                                }
                                focusOwnerImpl2 = focusOwnerImpl4;
                                i6 = i11;
                                if (i12 == 1) {
                                    rotaryInputModifierNode6 = rotaryInputModifierNode8;
                                    focusOwnerImpl4 = focusOwnerImpl2;
                                    i11 = i6;
                                }
                            } else {
                                focusOwnerImpl2 = focusOwnerImpl4;
                                i6 = i11;
                            }
                            nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                            rotaryInputModifierNode6 = rotaryInputModifierNode8;
                            focusOwnerImpl4 = focusOwnerImpl2;
                            i11 = i6;
                        }
                    }
                    parent = parent.getParent();
                    rotaryInputModifierNode6 = rotaryInputModifierNode6;
                    focusOwnerImpl4 = focusOwnerImpl4;
                    i11 = i11;
                }
                rotaryInputModifierNode4 = rotaryInputModifierNode6;
                focusOwnerImpl = focusOwnerImpl4;
                i5 = i11;
            } else {
                rotaryInputModifierNode4 = rotaryInputModifierNode6;
                focusOwnerImpl = focusOwnerImpl4;
                i5 = i11;
            }
            layoutNodeRequireLayoutNode2 = layoutNodeRequireLayoutNode2.getParent$ui_release();
            parent = (layoutNodeRequireLayoutNode2 == null || (nodes = layoutNodeRequireLayoutNode2.getNodes()) == null) ? null : nodes.getTail();
            rotaryInputModifierNode6 = rotaryInputModifierNode4;
            focusOwnerImpl4 = focusOwnerImpl;
            i11 = i5;
        }
        List list = arrayList;
        if (list != null && list.size() - 1 >= 0) {
            do {
                int i13 = size;
                size--;
                if (((RotaryInputModifierNode) list.get(i13)).onPreRotaryScrollEvent(event)) {
                    return true;
                }
            } while (size >= 0);
        }
        Modifier.Node node10 = rotaryInputModifierNode7.getNode();
        int i14 = 0;
        MutableVector mutableVector8 = null;
        Modifier.Node nodePop3 = node10;
        while (nodePop3 != null) {
            if (nodePop3 instanceof RotaryInputModifierNode) {
                if (((RotaryInputModifierNode) nodePop3).onPreRotaryScrollEvent(event)) {
                    return true;
                }
                node3 = node10;
                i3 = i14;
            } else if (((nodePop3.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop3 instanceof DelegatingNode)) {
                int i15 = 0;
                Modifier.Node delegate3 = ((DelegatingNode) nodePop3).getDelegate();
                while (delegate3 != null) {
                    Modifier.Node node11 = delegate3;
                    if ((node11.getKindSet() & iM5574constructorimpl2) != 0) {
                        i15++;
                        if (i15 == 1) {
                            nodePop3 = node11;
                            node4 = node10;
                            i4 = i14;
                        } else {
                            if (mutableVector8 == null) {
                                node4 = node10;
                                i4 = i14;
                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                            } else {
                                node4 = node10;
                                i4 = i14;
                                mutableVector2 = mutableVector8;
                            }
                            mutableVector8 = mutableVector2;
                            Modifier.Node node12 = nodePop3;
                            if (node12 != null) {
                                if (mutableVector8 != null) {
                                    mutableVector8.add(node12);
                                }
                                nodePop3 = null;
                            }
                            if (mutableVector8 != null) {
                                mutableVector8.add(node11);
                            }
                        }
                    } else {
                        node4 = node10;
                        i4 = i14;
                    }
                    delegate3 = delegate3.getChild();
                    node10 = node4;
                    i14 = i4;
                }
                node3 = node10;
                i3 = i14;
                MutableVector mutableVector9 = mutableVector8;
                if (i15 == 1) {
                    node10 = node3;
                    i14 = i3;
                    mutableVector8 = mutableVector9;
                } else {
                    mutableVector8 = mutableVector9;
                }
            } else {
                node3 = node10;
                i3 = i14;
            }
            nodePop3 = DelegatableNodeKt.pop(mutableVector8);
            node10 = node3;
            i14 = i3;
        }
        Modifier.Node node13 = rotaryInputModifierNode7.getNode();
        MutableVector mutableVector10 = null;
        Modifier.Node nodePop4 = node13;
        while (nodePop4 != null) {
            if (nodePop4 instanceof RotaryInputModifierNode) {
                if (((RotaryInputModifierNode) nodePop4).onRotaryScrollEvent(event)) {
                    return true;
                }
                rotaryInputModifierNode2 = rotaryInputModifierNode7;
                node = node13;
                i = iM5574constructorimpl2;
            } else if (((nodePop4.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop4 instanceof DelegatingNode)) {
                int i16 = 0;
                Modifier.Node delegate4 = ((DelegatingNode) nodePop4).getDelegate();
                while (delegate4 != null) {
                    Modifier.Node node14 = delegate4;
                    if ((node14.getKindSet() & iM5574constructorimpl2) != 0) {
                        i16++;
                        if (i16 == 1) {
                            nodePop4 = node14;
                            rotaryInputModifierNode3 = rotaryInputModifierNode7;
                            node2 = node13;
                            i2 = iM5574constructorimpl2;
                        } else {
                            if (mutableVector10 == null) {
                                rotaryInputModifierNode3 = rotaryInputModifierNode7;
                                node2 = node13;
                                i2 = iM5574constructorimpl2;
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            } else {
                                rotaryInputModifierNode3 = rotaryInputModifierNode7;
                                node2 = node13;
                                i2 = iM5574constructorimpl2;
                                mutableVector = mutableVector10;
                            }
                            mutableVector10 = mutableVector;
                            Modifier.Node node15 = nodePop4;
                            if (node15 != null) {
                                if (mutableVector10 != null) {
                                    mutableVector10.add(node15);
                                }
                                nodePop4 = null;
                            }
                            if (mutableVector10 != null) {
                                mutableVector10.add(node14);
                            }
                        }
                    } else {
                        rotaryInputModifierNode3 = rotaryInputModifierNode7;
                        node2 = node13;
                        i2 = iM5574constructorimpl2;
                    }
                    delegate4 = delegate4.getChild();
                    rotaryInputModifierNode7 = rotaryInputModifierNode3;
                    node13 = node2;
                    iM5574constructorimpl2 = i2;
                }
                rotaryInputModifierNode2 = rotaryInputModifierNode7;
                node = node13;
                i = iM5574constructorimpl2;
                if (i16 == 1) {
                    rotaryInputModifierNode7 = rotaryInputModifierNode2;
                    node13 = node;
                    iM5574constructorimpl2 = i;
                }
            } else {
                rotaryInputModifierNode2 = rotaryInputModifierNode7;
                node = node13;
                i = iM5574constructorimpl2;
            }
            nodePop4 = DelegatableNodeKt.pop(mutableVector10);
            rotaryInputModifierNode7 = rotaryInputModifierNode2;
            node13 = node;
            iM5574constructorimpl2 = i;
        }
        if (list == null) {
            return false;
        }
        int size2 = list.size();
        for (int i17 = 0; i17 < size2; i17++) {
            if (((RotaryInputModifierNode) list.get(i17)).onRotaryScrollEvent(event)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusTargetNode node) {
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusEventModifierNode node) {
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusPropertiesModifierNode node) {
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateOwnerFocusState() {
        if (this.rootFocusNode.getFocusState() == FocusStateImpl.Inactive) {
            this.onClearFocusForOwner.invoke();
        }
    }

    /* renamed from: traverseAncestorsIncludingSelf-QFhIj7k, reason: not valid java name */
    private final /* synthetic */ <T extends DelegatableNode> void m3698traverseAncestorsIncludingSelfQFhIj7k(DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k, int type, Function1<? super T, Unit> function1, Function0<Unit> function0, Function1<? super T, Unit> function12) {
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv;
        int i;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv2;
        int i2;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv3;
        int i3;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv4;
        int i4;
        int size;
        int i5;
        DelegatableNode $this$ancestors_u2d64DMado$iv;
        int i6;
        NodeChain nodes;
        int i7;
        DelegatableNode $this$ancestors_u2d64DMado$iv2;
        int i8;
        DelegatableNode $this$ancestors_u2d64DMado$iv3;
        int i9;
        int i10;
        Object result$iv;
        int count$iv$iv$iv;
        Function1<? super T, Unit> function13 = function1;
        int count$iv$iv$iv2 = 0;
        DelegatableNode $this$ancestors_u2d64DMado$iv4 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k;
        int i11 = 0;
        Object result$iv2 = null;
        if (!$this$ancestors_u2d64DMado$iv4.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node$iv$iv$iv = $this$ancestors_u2d64DMado$iv4.getNode().getParent();
        LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$ancestors_u2d64DMado$iv4);
        while (layout$iv$iv$iv != null) {
            Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv.getAggregateChildKindSet() & type) != 0) {
                while (node$iv$iv$iv != null) {
                    if ((node$iv$iv$iv.getKindSet() & type) != 0) {
                        Modifier.Node it$iv$iv = node$iv$iv$iv;
                        Object stack$iv$iv$iv = null;
                        Modifier.Node this_$iv$iv$iv$iv = it$iv$iv;
                        while (this_$iv$iv$iv$iv != null) {
                            int i12 = count$iv$iv$iv2;
                            Intrinsics.reifiedOperationMarker(3, "T");
                            if (this_$iv$iv$iv$iv instanceof Object) {
                                Modifier.Node node = this_$iv$iv$iv$iv;
                                if (result$iv2 == null) {
                                    Object result$iv3 = new ArrayList();
                                    result$iv2 = (List) result$iv3;
                                }
                                $this$ancestors_u2d64DMado$iv3 = $this$ancestors_u2d64DMado$iv4;
                                ((List) result$iv2).add(node);
                                i9 = i11;
                            } else {
                                $this$ancestors_u2d64DMado$iv3 = $this$ancestors_u2d64DMado$iv4;
                                if (((this_$iv$iv$iv$iv.getKindSet() & type) != 0) && (this_$iv$iv$iv$iv instanceof DelegatingNode)) {
                                    int count$iv$iv$iv3 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) this_$iv$iv$iv$iv;
                                    Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv != null) {
                                        DelegatingNode this_$iv$iv$iv$iv3 = this_$iv$iv$iv$iv2;
                                        Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                        if ((next$iv$iv$iv.getKindSet() & type) != 0) {
                                            count$iv$iv$iv3++;
                                            i10 = i11;
                                            if (count$iv$iv$iv3 == 1) {
                                                this_$iv$iv$iv$iv = next$iv$iv$iv;
                                                result$iv = result$iv2;
                                            } else {
                                                Object mutableVector = (MutableVector) stack$iv$iv$iv;
                                                if (mutableVector == null) {
                                                    count$iv$iv$iv = count$iv$iv$iv3;
                                                    result$iv = result$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv$iv = count$iv$iv$iv3;
                                                    result$iv = result$iv2;
                                                }
                                                stack$iv$iv$iv = mutableVector;
                                                Modifier.Node theNode$iv$iv$iv = this_$iv$iv$iv$iv;
                                                if (theNode$iv$iv$iv != null) {
                                                    MutableVector mutableVector2 = (MutableVector) stack$iv$iv$iv;
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(theNode$iv$iv$iv);
                                                    }
                                                    this_$iv$iv$iv$iv = null;
                                                }
                                                MutableVector mutableVector3 = (MutableVector) stack$iv$iv$iv;
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(next$iv$iv$iv);
                                                }
                                                count$iv$iv$iv3 = count$iv$iv$iv;
                                            }
                                        } else {
                                            i10 = i11;
                                            result$iv = result$iv2;
                                        }
                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                        this_$iv$iv$iv$iv2 = this_$iv$iv$iv$iv3;
                                        i11 = i10;
                                        result$iv2 = result$iv;
                                    }
                                    i9 = i11;
                                    Object result$iv4 = result$iv2;
                                    if (count$iv$iv$iv3 == 1) {
                                        count$iv$iv$iv2 = i12;
                                        $this$ancestors_u2d64DMado$iv4 = $this$ancestors_u2d64DMado$iv3;
                                        i11 = i9;
                                        result$iv2 = result$iv4;
                                    } else {
                                        result$iv2 = result$iv4;
                                    }
                                } else {
                                    i9 = i11;
                                    result$iv2 = result$iv2;
                                }
                            }
                            this_$iv$iv$iv$iv = DelegatableNodeKt.pop((MutableVector) stack$iv$iv$iv);
                            count$iv$iv$iv2 = i12;
                            $this$ancestors_u2d64DMado$iv4 = $this$ancestors_u2d64DMado$iv3;
                            i11 = i9;
                        }
                        i7 = count$iv$iv$iv2;
                        $this$ancestors_u2d64DMado$iv2 = $this$ancestors_u2d64DMado$iv4;
                        i8 = i11;
                    } else {
                        i7 = count$iv$iv$iv2;
                        $this$ancestors_u2d64DMado$iv2 = $this$ancestors_u2d64DMado$iv4;
                        i8 = i11;
                    }
                    node$iv$iv$iv = node$iv$iv$iv.getParent();
                    count$iv$iv$iv2 = i7;
                    $this$ancestors_u2d64DMado$iv4 = $this$ancestors_u2d64DMado$iv2;
                    i11 = i8;
                }
                i5 = count$iv$iv$iv2;
                $this$ancestors_u2d64DMado$iv = $this$ancestors_u2d64DMado$iv4;
                i6 = i11;
            } else {
                i5 = count$iv$iv$iv2;
                $this$ancestors_u2d64DMado$iv = $this$ancestors_u2d64DMado$iv4;
                i6 = i11;
            }
            layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui_release();
            node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes = layout$iv$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            count$iv$iv$iv2 = i5;
            $this$ancestors_u2d64DMado$iv4 = $this$ancestors_u2d64DMado$iv;
            i11 = i6;
        }
        List ancestors = (List) result$iv2;
        if (ancestors != null && ancestors.size() - 1 >= 0) {
            do {
                int index$iv = size;
                size--;
                Object item$iv = ancestors.get(index$iv);
                function13.invoke(item$iv);
            } while (size >= 0);
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k.getNode();
        int i13 = 0;
        Object stack$iv = null;
        Modifier.Node node$iv = $this$dispatchForKind_u2d6rFNWt0$iv5;
        while (node$iv != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (node$iv instanceof Object) {
                function13.invoke(node$iv);
                $this$dispatchForKind_u2d6rFNWt0$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                i3 = i13;
            } else {
                Modifier.Node this_$iv$iv = node$iv;
                if (((this_$iv$iv.getKindSet() & type) != 0) && (node$iv instanceof DelegatingNode)) {
                    int count$iv = 0;
                    DelegatingNode this_$iv$iv2 = (DelegatingNode) node$iv;
                    Modifier.Node node$iv$iv = this_$iv$iv2.getDelegate();
                    while (node$iv$iv != null) {
                        Modifier.Node next$iv = node$iv$iv;
                        if ((next$iv.getKindSet() & type) != 0) {
                            count$iv++;
                            if (count$iv == 1) {
                                node$iv = next$iv;
                                $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                                i4 = i13;
                            } else {
                                Object obj = (MutableVector) stack$iv;
                                if (obj == null) {
                                    $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                                    i4 = i13;
                                    Object mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                    obj = mutableVector4;
                                } else {
                                    $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                                    i4 = i13;
                                }
                                stack$iv = obj;
                                Modifier.Node theNode$iv = node$iv;
                                if (theNode$iv != null) {
                                    MutableVector mutableVector5 = (MutableVector) stack$iv;
                                    if (mutableVector5 != null) {
                                        mutableVector5.add(theNode$iv);
                                    }
                                    node$iv = null;
                                }
                                MutableVector mutableVector6 = (MutableVector) stack$iv;
                                if (mutableVector6 != null) {
                                    mutableVector6.add(next$iv);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                            i4 = i13;
                        }
                        node$iv$iv = node$iv$iv.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv4;
                        i13 = i4;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                    i3 = i13;
                    if (count$iv == 1) {
                        function13 = function1;
                        $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv3;
                        i13 = i3;
                    }
                } else {
                    $this$dispatchForKind_u2d6rFNWt0$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                    i3 = i13;
                }
            }
            node$iv = DelegatableNodeKt.pop((MutableVector) stack$iv);
            function13 = function1;
            $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv3;
            i13 = i3;
        }
        function0.invoke();
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k.getNode();
        int i14 = 0;
        Object stack$iv2 = null;
        Modifier.Node node$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
        while (node$iv2 != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (node$iv2 instanceof Object) {
                function12.invoke(node$iv2);
                $this$dispatchForKind_u2d6rFNWt0$iv = $this$dispatchForKind_u2d6rFNWt0$iv6;
                i = i14;
            } else {
                Modifier.Node this_$iv$iv3 = node$iv2;
                if (((this_$iv$iv3.getKindSet() & type) != 0) && (node$iv2 instanceof DelegatingNode)) {
                    int count$iv2 = 0;
                    DelegatingNode this_$iv$iv4 = (DelegatingNode) node$iv2;
                    Modifier.Node node$iv$iv2 = this_$iv$iv4.getDelegate();
                    while (node$iv$iv2 != null) {
                        Modifier.Node next$iv2 = node$iv$iv2;
                        if ((next$iv2.getKindSet() & type) != 0) {
                            count$iv2++;
                            if (count$iv2 == 1) {
                                node$iv2 = next$iv2;
                                $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                                i2 = i14;
                            } else {
                                Object obj2 = (MutableVector) stack$iv2;
                                if (obj2 == null) {
                                    $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                                    i2 = i14;
                                    Object mutableVector7 = new MutableVector(new Modifier.Node[16], 0);
                                    obj2 = mutableVector7;
                                } else {
                                    $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                                    i2 = i14;
                                }
                                stack$iv2 = obj2;
                                Modifier.Node theNode$iv2 = node$iv2;
                                if (theNode$iv2 != null) {
                                    MutableVector mutableVector8 = (MutableVector) stack$iv2;
                                    if (mutableVector8 != null) {
                                        mutableVector8.add(theNode$iv2);
                                    }
                                    node$iv2 = null;
                                }
                                MutableVector mutableVector9 = (MutableVector) stack$iv2;
                                if (mutableVector9 != null) {
                                    mutableVector9.add(next$iv2);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                            i2 = i14;
                        }
                        node$iv$iv2 = node$iv$iv2.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv2;
                        i14 = i2;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv = $this$dispatchForKind_u2d6rFNWt0$iv6;
                    i = i14;
                    if (count$iv2 == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv;
                        i14 = i;
                    }
                } else {
                    $this$dispatchForKind_u2d6rFNWt0$iv = $this$dispatchForKind_u2d6rFNWt0$iv6;
                    i = i14;
                }
            }
            node$iv2 = DelegatableNodeKt.pop((MutableVector) stack$iv2);
            $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv;
            i14 = i;
        }
        if (ancestors != null) {
            int size2 = ancestors.size();
            for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
                Object item$iv2 = ancestors.get(index$iv2);
                function12.invoke(item$iv2);
            }
        }
    }

    /* renamed from: nearestAncestorIncludingSelf-64DMado, reason: not valid java name */
    private final /* synthetic */ <T> T m3697nearestAncestorIncludingSelf64DMado(DelegatableNode delegatableNode, int i) {
        int i2;
        boolean z;
        DelegatableNode delegatableNode2;
        int i3;
        int i4;
        NodeChain nodes;
        DelegatableNode delegatableNode3;
        int i5;
        int i6;
        DelegatableNode delegatableNode4;
        int i7;
        int i8;
        int i9;
        int i10 = 0;
        boolean z2 = true;
        DelegatableNode delegatableNode5 = delegatableNode;
        int i11 = 0;
        int i12 = i;
        if (!delegatableNode5.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node = delegatableNode5.getNode();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode5);
        while (layoutNodeRequireLayoutNode != null) {
            if ((layoutNodeRequireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i12) != 0) {
                while (node != null) {
                    if ((node.getKindSet() & i12) != 0) {
                        Object obj = null;
                        Modifier.Node nodePop = node;
                        while (nodePop != null) {
                            int i13 = i10;
                            boolean z3 = z2;
                            Intrinsics.reifiedOperationMarker(3, "T");
                            if (nodePop instanceof Object) {
                                return (T) nodePop;
                            }
                            if (((nodePop.getKindSet() & i) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                delegatableNode3 = delegatableNode5;
                                i5 = i11;
                                i6 = i12;
                                nodePop = DelegatableNodeKt.pop((MutableVector) obj);
                                i10 = i13;
                                z2 = z3;
                                delegatableNode5 = delegatableNode3;
                                i11 = i5;
                                i12 = i6;
                            } else {
                                int i14 = 0;
                                Modifier.Node delegate = ((DelegatingNode) nodePop).getDelegate();
                                while (delegate != null) {
                                    Modifier.Node node2 = delegate;
                                    if ((node2.getKindSet() & i) != 0) {
                                        i14++;
                                        delegatableNode4 = delegatableNode5;
                                        if (i14 == 1) {
                                            nodePop = node2;
                                            i7 = i11;
                                            i8 = i12;
                                        } else {
                                            MutableVector mutableVector = (MutableVector) obj;
                                            if (mutableVector == null) {
                                                i9 = i14;
                                                i7 = i11;
                                                i8 = i12;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                i9 = i14;
                                                i7 = i11;
                                                i8 = i12;
                                            }
                                            obj = mutableVector;
                                            Modifier.Node node3 = nodePop;
                                            if (node3 != null) {
                                                MutableVector mutableVector2 = (MutableVector) obj;
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(node3);
                                                }
                                                nodePop = null;
                                            }
                                            MutableVector mutableVector3 = (MutableVector) obj;
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(node2);
                                            }
                                            i14 = i9;
                                        }
                                    } else {
                                        delegatableNode4 = delegatableNode5;
                                        i7 = i11;
                                        i8 = i12;
                                    }
                                    delegate = delegate.getChild();
                                    delegatableNode5 = delegatableNode4;
                                    i11 = i7;
                                    i12 = i8;
                                }
                                delegatableNode3 = delegatableNode5;
                                i5 = i11;
                                i6 = i12;
                                if (i14 == 1) {
                                    i10 = i13;
                                    z2 = z3;
                                    delegatableNode5 = delegatableNode3;
                                    i11 = i5;
                                    i12 = i6;
                                } else {
                                    nodePop = DelegatableNodeKt.pop((MutableVector) obj);
                                    i10 = i13;
                                    z2 = z3;
                                    delegatableNode5 = delegatableNode3;
                                    i11 = i5;
                                    i12 = i6;
                                }
                            }
                        }
                    }
                    node = node.getParent();
                    i10 = i10;
                    z2 = z2;
                    delegatableNode5 = delegatableNode5;
                    i11 = i11;
                    i12 = i12;
                }
                i2 = i10;
                z = z2;
                delegatableNode2 = delegatableNode5;
                i3 = i11;
                i4 = i12;
            } else {
                i2 = i10;
                z = z2;
                delegatableNode2 = delegatableNode5;
                i3 = i11;
                i4 = i12;
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui_release();
            node = (layoutNodeRequireLayoutNode == null || (nodes = layoutNodeRequireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
            i10 = i2;
            z2 = z;
            delegatableNode5 = delegatableNode2;
            i11 = i3;
            i12 = i4;
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Rect getFocusRect() {
        FocusTargetNode focusTargetNodeFindActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (focusTargetNodeFindActiveFocusNode != null) {
            return FocusTraversalKt.focusRect(focusTargetNodeFindActiveFocusNode);
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusState getRootState() {
        return this.rootFocusNode.getFocusState();
    }

    private final Modifier.Node lastLocalKeyInputNode(DelegatableNode $this$lastLocalKeyInputNode) {
        Modifier.Node node = null;
        int mask$iv = NodeKind.m5574constructorimpl(1024) | NodeKind.m5574constructorimpl(8192);
        boolean value$iv$iv$iv = $this$lastLocalKeyInputNode.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node self$iv$iv = $this$lastLocalKeyInputNode.getNode();
        if ((self$iv$iv.getAggregateChildKindSet() & mask$iv) != 0) {
            for (Modifier.Node next$iv$iv = self$iv$iv.getChild(); next$iv$iv != null; next$iv$iv = next$iv$iv.getChild()) {
                if ((next$iv$iv.getKindSet() & mask$iv) != 0) {
                    Modifier.Node modifierNode = next$iv$iv;
                    if ((modifierNode.getKindSet() & NodeKind.m5574constructorimpl(1024)) != 0) {
                        return node;
                    }
                    node = modifierNode;
                }
            }
        }
        return node;
    }

    /* renamed from: validateKeyEvent-ZmokQxo, reason: not valid java name */
    private final boolean m3699validateKeyEventZmokQxo(KeyEvent keyEvent) {
        long keyCode = KeyEvent_androidKt.m5068getKeyZmokQxo(keyEvent);
        int iM5069getTypeZmokQxo = KeyEvent_androidKt.m5069getTypeZmokQxo(keyEvent);
        if (KeyEventType.m5061equalsimpl0(iM5069getTypeZmokQxo, KeyEventType.INSTANCE.m5065getKeyDownCS__XNY())) {
            MutableLongSet it = this.keysCurrentlyDown;
            if (it == null) {
                it = new MutableLongSet(3);
                this.keysCurrentlyDown = it;
            }
            it.plusAssign(keyCode);
        } else if (KeyEventType.m5061equalsimpl0(iM5069getTypeZmokQxo, KeyEventType.INSTANCE.m5066getKeyUpCS__XNY())) {
            MutableLongSet mutableLongSet = this.keysCurrentlyDown;
            if (!(mutableLongSet != null && mutableLongSet.contains(keyCode))) {
                return false;
            }
            MutableLongSet mutableLongSet2 = this.keysCurrentlyDown;
            if (mutableLongSet2 != null) {
                mutableLongSet2.remove(keyCode);
            }
        }
        return true;
    }
}
