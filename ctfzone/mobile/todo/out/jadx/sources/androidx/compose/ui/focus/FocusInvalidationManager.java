package androidx.compose.ui.focus;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: FocusInvalidationManager.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B-\u0012\u0018\u0010\u0002\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\fJ\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000eJ%\u0010\u0013\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0015*\b\u0012\u0004\u0012\u0002H\u00150\t2\u0006\u0010\u0014\u001a\u0002H\u0015H\u0002¢\u0006\u0002\u0010\u0016R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0002\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Landroidx/compose/ui/focus/FocusInvalidationManager;", "", "onRequestApplyChangesListener", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "invalidateOwnerFocusState", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "focusEventNodes", "Landroidx/collection/MutableScatterSet;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "focusPropertiesNodes", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "focusTargetNodes", "Landroidx/compose/ui/focus/FocusTargetNode;", "focusTargetsWithInvalidatedFocusEvents", "hasPendingInvalidation", "", "invalidateNodes", "scheduleInvalidation", "node", "T", "(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusInvalidationManager {
    public static final int $stable = 8;
    private final Function0<Unit> invalidateOwnerFocusState;
    private final Function1<Function0<Unit>, Unit> onRequestApplyChangesListener;
    private final MutableScatterSet<FocusTargetNode> focusTargetNodes = ScatterSetKt.mutableScatterSetOf();
    private final MutableScatterSet<FocusEventModifierNode> focusEventNodes = ScatterSetKt.mutableScatterSetOf();
    private final MutableScatterSet<FocusPropertiesModifierNode> focusPropertiesNodes = ScatterSetKt.mutableScatterSetOf();
    private final MutableScatterSet<FocusTargetNode> focusTargetsWithInvalidatedFocusEvents = ScatterSetKt.mutableScatterSetOf();

    /* JADX WARN: Multi-variable type inference failed */
    public FocusInvalidationManager(Function1<? super Function0<Unit>, Unit> function1, Function0<Unit> function0) {
        this.onRequestApplyChangesListener = function1;
        this.invalidateOwnerFocusState = function0;
    }

    public final void scheduleInvalidation(FocusTargetNode node) {
        scheduleInvalidation(this.focusTargetNodes, node);
    }

    public final void scheduleInvalidation(FocusEventModifierNode node) {
        scheduleInvalidation(this.focusEventNodes, node);
    }

    public final void scheduleInvalidation(FocusPropertiesModifierNode node) {
        scheduleInvalidation(this.focusPropertiesNodes, node);
    }

    public final boolean hasPendingInvalidation() {
        return this.focusTargetNodes.isNotEmpty() || this.focusPropertiesNodes.isNotEmpty() || this.focusEventNodes.isNotEmpty();
    }

    private final <T> void scheduleInvalidation(MutableScatterSet<T> mutableScatterSet, T t) {
        if (mutableScatterSet.add(t) && this.focusTargetNodes.get_size() + this.focusEventNodes.get_size() + this.focusPropertiesNodes.get_size() == 1) {
            this.onRequestApplyChangesListener.invoke(new AnonymousClass1(this));
        }
    }

    /* compiled from: FocusInvalidationManager.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* renamed from: androidx.compose.ui.focus.FocusInvalidationManager$scheduleInvalidation$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<Unit> {
        AnonymousClass1(Object obj) {
            super(0, obj, FocusInvalidationManager.class, "invalidateNodes", "invalidateNodes()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((FocusInvalidationManager) this.receiver).invalidateNodes();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateNodes() {
        int i;
        Object[] k$iv;
        ScatterSet this_$iv$iv;
        int $i$f$forEachIndex;
        long[] m$iv$iv;
        Object[] k$iv2;
        ScatterSet this_$iv$iv2;
        int $i$f$forEachIndex2;
        long[] m$iv$iv2;
        FocusStateImpl focusState;
        FocusStateImpl focusState2;
        int mask$iv$iv;
        DelegatableNode delegatableNode;
        MutableVector mutableVector;
        Modifier.Node node;
        MutableVector branches$iv$iv;
        Modifier.Node child$iv$iv;
        Modifier.Node branch$iv$iv;
        DelegatingNode this_$iv$iv$iv;
        Modifier.Node child$iv$iv2;
        Modifier.Node branch$iv$iv2;
        int count$iv$iv;
        MutableVector mutableVector2;
        long[] m$iv$iv3;
        int index$iv$iv;
        DelegatingNode this_$iv$iv$iv2;
        int index$iv$iv2;
        int count$iv$iv2;
        MutableVector mutableVector3;
        ScatterSet this_$iv;
        int $i$f$forEach;
        Object[] k$iv3;
        ScatterSet this_$iv$iv3;
        int $i$f$forEachIndex3;
        ScatterSet this_$iv2;
        int $i$f$forEach2;
        Object[] k$iv4;
        ScatterSet this_$iv$iv4;
        int $i$f$forEachIndex4;
        MutableVector branches$iv$iv2;
        Modifier.Node child$iv$iv3;
        DelegatingNode this_$iv$iv$iv3;
        Modifier.Node child$iv$iv4;
        int count$iv$iv3;
        MutableVector mutableVector4;
        ScatterSet this_$iv3;
        int $i$f$forEach3;
        Object[] k$iv5;
        int $i$f$forEach4;
        Object[] k$iv6;
        int count$iv$iv4;
        MutableVector mutableVector5;
        ScatterSet this_$iv4 = this.focusPropertiesNodes;
        int $i$f$forEach5 = 0;
        Object[] k$iv7 = this_$iv4.elements;
        ScatterSet this_$iv$iv5 = this_$iv4;
        int $i$f$forEachIndex5 = 0;
        long[] m$iv$iv4 = this_$iv$iv5.metadata;
        int lastIndex$iv$iv = m$iv$iv4.length - 2;
        int i$iv$iv = 0;
        char c = 7;
        int i2 = 8;
        if (0 <= lastIndex$iv$iv) {
            while (true) {
                long slot$iv$iv = m$iv$iv4[i$iv$iv];
                long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << c) & slot$iv$iv & (-9187201950435737472L);
                if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                    int j$iv$iv = 0;
                    while (j$iv$iv < bitCount$iv$iv) {
                        long value$iv$iv$iv = slot$iv$iv & 255;
                        int $i$f$isFull = value$iv$iv$iv < 128 ? 1 : 0;
                        if ($i$f$isFull != 0) {
                            DelegatableNode it = (FocusPropertiesModifierNode) k$iv7[(i$iv$iv << 3) + j$iv$iv];
                            if (it.getNode().getIsAttached()) {
                                DelegatableNode $this$visitSelfAndChildren_u2d6rFNWt0$iv = it;
                                int iM5574constructorimpl = NodeKind.m5574constructorimpl(1024);
                                Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$visitSelfAndChildren_u2d6rFNWt0$iv.getNode();
                                MutableVector mutableVector6 = null;
                                Modifier.Node nodePop = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
                                while (nodePop != null) {
                                    if (nodePop instanceof FocusTargetNode) {
                                        FocusTargetNode focusTarget = (FocusTargetNode) nodePop;
                                        this_$iv3 = this_$iv4;
                                        this.focusTargetNodes.add(focusTarget);
                                        $i$f$forEach3 = $i$f$forEach5;
                                        k$iv5 = k$iv7;
                                    } else {
                                        this_$iv3 = this_$iv4;
                                        Modifier.Node this_$iv$iv$iv4 = nodePop;
                                        if (((this_$iv$iv$iv4.getKindSet() & iM5574constructorimpl) != 0) && (nodePop instanceof DelegatingNode)) {
                                            int count$iv$iv5 = 0;
                                            DelegatingNode this_$iv$iv$iv5 = (DelegatingNode) nodePop;
                                            Modifier.Node node$iv$iv$iv = this_$iv$iv$iv5.getDelegate();
                                            while (node$iv$iv$iv != null) {
                                                Modifier.Node next$iv$iv = node$iv$iv$iv;
                                                if ((next$iv$iv.getKindSet() & iM5574constructorimpl) != 0) {
                                                    count$iv$iv5++;
                                                    $i$f$forEach4 = $i$f$forEach5;
                                                    if (count$iv$iv5 == 1) {
                                                        nodePop = next$iv$iv;
                                                        k$iv6 = k$iv7;
                                                    } else {
                                                        if (mutableVector6 == null) {
                                                            count$iv$iv4 = count$iv$iv5;
                                                            k$iv6 = k$iv7;
                                                            Object[] k$iv8 = new Modifier.Node[16];
                                                            mutableVector5 = new MutableVector(k$iv8, 0);
                                                        } else {
                                                            count$iv$iv4 = count$iv$iv5;
                                                            k$iv6 = k$iv7;
                                                            mutableVector5 = mutableVector6;
                                                        }
                                                        MutableVector mutableVector7 = mutableVector5;
                                                        Modifier.Node theNode$iv$iv = nodePop;
                                                        if (theNode$iv$iv != null) {
                                                            if (mutableVector7 != null) {
                                                                Boolean.valueOf(mutableVector7.add(theNode$iv$iv));
                                                            }
                                                            nodePop = null;
                                                        }
                                                        if (mutableVector7 != null) {
                                                            Boolean.valueOf(mutableVector7.add(next$iv$iv));
                                                        }
                                                        mutableVector6 = mutableVector7;
                                                        count$iv$iv5 = count$iv$iv4;
                                                    }
                                                } else {
                                                    $i$f$forEach4 = $i$f$forEach5;
                                                    k$iv6 = k$iv7;
                                                }
                                                node$iv$iv$iv = node$iv$iv$iv.getChild();
                                                $i$f$forEach5 = $i$f$forEach4;
                                                k$iv7 = k$iv6;
                                            }
                                            $i$f$forEach3 = $i$f$forEach5;
                                            k$iv5 = k$iv7;
                                            if (count$iv$iv5 == 1) {
                                                this_$iv4 = this_$iv3;
                                                $i$f$forEach5 = $i$f$forEach3;
                                                k$iv7 = k$iv5;
                                            }
                                        } else {
                                            $i$f$forEach3 = $i$f$forEach5;
                                            k$iv5 = k$iv7;
                                        }
                                    }
                                    nodePop = DelegatableNodeKt.pop(mutableVector6);
                                    this_$iv4 = this_$iv3;
                                    $i$f$forEach5 = $i$f$forEach3;
                                    k$iv7 = k$iv5;
                                }
                                this_$iv2 = this_$iv4;
                                $i$f$forEach2 = $i$f$forEach5;
                                k$iv4 = k$iv7;
                                int mask$iv$iv2 = iM5574constructorimpl;
                                DelegatableNode $this$visitChildren$iv$iv = $this$visitSelfAndChildren_u2d6rFNWt0$iv;
                                if (!$this$visitChildren$iv$iv.getNode().getIsAttached()) {
                                    throw new IllegalStateException("visitChildren called on an unattached node".toString());
                                }
                                this_$iv$iv4 = this_$iv$iv5;
                                $i$f$forEachIndex4 = $i$f$forEachIndex5;
                                MutableVector branches$iv$iv3 = new MutableVector(new Modifier.Node[16], 0);
                                Modifier.Node child$iv$iv5 = $this$visitChildren$iv$iv.getNode().getChild();
                                if (child$iv$iv5 == null) {
                                    DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv3, $this$visitChildren$iv$iv.getNode());
                                } else {
                                    branches$iv$iv3.add(child$iv$iv5);
                                }
                                while (branches$iv$iv3.isNotEmpty()) {
                                    MutableVector this_$iv$iv$iv6 = branches$iv$iv3;
                                    Modifier.Node branch$iv$iv3 = (Modifier.Node) branches$iv$iv3.removeAt(this_$iv$iv$iv6.getSize() - 1);
                                    if ((branch$iv$iv3.getAggregateChildKindSet() & mask$iv$iv2) == 0) {
                                        DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv3, branch$iv$iv3);
                                    } else {
                                        Modifier.Node node$iv$iv = branch$iv$iv3;
                                        while (true) {
                                            if (node$iv$iv == null) {
                                                break;
                                            }
                                            if ((node$iv$iv.getKindSet() & mask$iv$iv2) != 0) {
                                                Modifier.Node it$iv = node$iv$iv;
                                                MutableVector mutableVector8 = null;
                                                int mask$iv$iv3 = mask$iv$iv2;
                                                Modifier.Node nodePop2 = it$iv;
                                                while (nodePop2 != null) {
                                                    DelegatableNode $this$visitChildren$iv$iv2 = $this$visitChildren$iv$iv;
                                                    if (nodePop2 instanceof FocusTargetNode) {
                                                        FocusTargetNode focusTarget2 = (FocusTargetNode) nodePop2;
                                                        branches$iv$iv2 = branches$iv$iv3;
                                                        this.focusTargetNodes.add(focusTarget2);
                                                        child$iv$iv3 = child$iv$iv5;
                                                    } else {
                                                        branches$iv$iv2 = branches$iv$iv3;
                                                        Modifier.Node this_$iv$iv$iv7 = nodePop2;
                                                        if (((this_$iv$iv$iv7.getKindSet() & iM5574constructorimpl) != 0) && (nodePop2 instanceof DelegatingNode)) {
                                                            int count$iv$iv6 = 0;
                                                            DelegatingNode this_$iv$iv$iv8 = (DelegatingNode) nodePop2;
                                                            Modifier.Node node$iv$iv$iv2 = this_$iv$iv$iv8.getDelegate();
                                                            while (node$iv$iv$iv2 != null) {
                                                                Modifier.Node next$iv$iv2 = node$iv$iv$iv2;
                                                                if ((next$iv$iv2.getKindSet() & iM5574constructorimpl) != 0) {
                                                                    count$iv$iv6++;
                                                                    this_$iv$iv$iv3 = this_$iv$iv$iv8;
                                                                    if (count$iv$iv6 == 1) {
                                                                        nodePop2 = next$iv$iv2;
                                                                        child$iv$iv4 = child$iv$iv5;
                                                                    } else {
                                                                        if (mutableVector8 == null) {
                                                                            count$iv$iv3 = count$iv$iv6;
                                                                            child$iv$iv4 = child$iv$iv5;
                                                                            mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                                        } else {
                                                                            count$iv$iv3 = count$iv$iv6;
                                                                            child$iv$iv4 = child$iv$iv5;
                                                                            mutableVector4 = mutableVector8;
                                                                        }
                                                                        MutableVector mutableVector9 = mutableVector4;
                                                                        Modifier.Node theNode$iv$iv2 = nodePop2;
                                                                        if (theNode$iv$iv2 != null) {
                                                                            if (mutableVector9 != null) {
                                                                                Boolean.valueOf(mutableVector9.add(theNode$iv$iv2));
                                                                            }
                                                                            nodePop2 = null;
                                                                        }
                                                                        if (mutableVector9 != null) {
                                                                            Boolean.valueOf(mutableVector9.add(next$iv$iv2));
                                                                        }
                                                                        mutableVector8 = mutableVector9;
                                                                        count$iv$iv6 = count$iv$iv3;
                                                                    }
                                                                } else {
                                                                    this_$iv$iv$iv3 = this_$iv$iv$iv8;
                                                                    child$iv$iv4 = child$iv$iv5;
                                                                }
                                                                node$iv$iv$iv2 = node$iv$iv$iv2.getChild();
                                                                this_$iv$iv$iv8 = this_$iv$iv$iv3;
                                                                child$iv$iv5 = child$iv$iv4;
                                                            }
                                                            child$iv$iv3 = child$iv$iv5;
                                                            if (count$iv$iv6 == 1) {
                                                                $this$visitChildren$iv$iv = $this$visitChildren$iv$iv2;
                                                                branches$iv$iv3 = branches$iv$iv2;
                                                                child$iv$iv5 = child$iv$iv3;
                                                            }
                                                        } else {
                                                            child$iv$iv3 = child$iv$iv5;
                                                        }
                                                    }
                                                    nodePop2 = DelegatableNodeKt.pop(mutableVector8);
                                                    $this$visitChildren$iv$iv = $this$visitChildren$iv$iv2;
                                                    branches$iv$iv3 = branches$iv$iv2;
                                                    child$iv$iv5 = child$iv$iv3;
                                                }
                                                mask$iv$iv2 = mask$iv$iv3;
                                            } else {
                                                node$iv$iv = node$iv$iv.getChild();
                                            }
                                        }
                                    }
                                }
                            } else {
                                this_$iv2 = this_$iv4;
                                $i$f$forEach2 = $i$f$forEach5;
                                k$iv4 = k$iv7;
                                this_$iv$iv4 = this_$iv$iv5;
                                $i$f$forEachIndex4 = $i$f$forEachIndex5;
                            }
                        } else {
                            this_$iv2 = this_$iv4;
                            $i$f$forEach2 = $i$f$forEach5;
                            k$iv4 = k$iv7;
                            this_$iv$iv4 = this_$iv$iv5;
                            $i$f$forEachIndex4 = $i$f$forEachIndex5;
                        }
                        slot$iv$iv >>= 8;
                        j$iv$iv++;
                        i2 = 8;
                        this_$iv$iv5 = this_$iv$iv4;
                        $i$f$forEachIndex5 = $i$f$forEachIndex4;
                        this_$iv4 = this_$iv2;
                        $i$f$forEach5 = $i$f$forEach2;
                        k$iv7 = k$iv4;
                    }
                    this_$iv = this_$iv4;
                    $i$f$forEach = $i$f$forEach5;
                    k$iv3 = k$iv7;
                    this_$iv$iv3 = this_$iv$iv5;
                    $i$f$forEachIndex3 = $i$f$forEachIndex5;
                    if (bitCount$iv$iv != i2) {
                        break;
                    }
                } else {
                    this_$iv = this_$iv4;
                    $i$f$forEach = $i$f$forEach5;
                    k$iv3 = k$iv7;
                    this_$iv$iv3 = this_$iv$iv5;
                    $i$f$forEachIndex3 = $i$f$forEachIndex5;
                }
                if (i$iv$iv == lastIndex$iv$iv) {
                    break;
                }
                i$iv$iv++;
                this_$iv$iv5 = this_$iv$iv3;
                $i$f$forEachIndex5 = $i$f$forEachIndex3;
                this_$iv4 = this_$iv;
                $i$f$forEach5 = $i$f$forEach;
                k$iv7 = k$iv3;
                i2 = 8;
                c = 7;
            }
        }
        this.focusPropertiesNodes.clear();
        ScatterSet this_$iv5 = this.focusEventNodes;
        int $i$f$forEach6 = 0;
        Object[] k$iv9 = this_$iv5.elements;
        ScatterSet this_$iv$iv6 = this_$iv5;
        int count$iv$iv7 = 0;
        long[] m$iv$iv5 = this_$iv$iv6.metadata;
        int lastIndex$iv$iv2 = m$iv$iv5.length - 2;
        int i$iv$iv2 = 0;
        if (0 <= lastIndex$iv$iv2) {
            while (true) {
                long slot$iv$iv2 = m$iv$iv5[i$iv$iv2];
                ScatterSet this_$iv6 = this_$iv5;
                int $i$f$forEach7 = $i$f$forEach6;
                if ((((~slot$iv$iv2) << 7) & slot$iv$iv2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                    int j$iv$iv2 = 0;
                    while (j$iv$iv2 < bitCount$iv$iv2) {
                        long value$iv$iv$iv2 = slot$iv$iv2 & 255;
                        int $i$f$isFull2 = value$iv$iv$iv2 < 128 ? 1 : 0;
                        if ($i$f$isFull2 != 0) {
                            int index$iv$iv3 = (i$iv$iv2 << 3) + j$iv$iv2;
                            k$iv2 = k$iv9;
                            FocusEventModifierNode focusEventNode = (FocusEventModifierNode) k$iv9[index$iv$iv3];
                            if (focusEventNode.getNode().getIsAttached()) {
                                this_$iv$iv2 = this_$iv$iv6;
                                boolean aggregatedNode = false;
                                FocusTargetNode focusTargetNode = null;
                                FocusEventModifierNode $this$visitSelfAndChildren_u2d6rFNWt0$iv2 = focusEventNode;
                                int iM5574constructorimpl2 = NodeKind.m5574constructorimpl(1024);
                                Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$visitSelfAndChildren_u2d6rFNWt0$iv2.getNode();
                                MutableVector mutableVector10 = null;
                                Object node$iv$iv2 = 1;
                                Modifier.Node nodePop3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
                                while (nodePop3 != null) {
                                    int $i$f$forEachIndex6 = count$iv$iv7;
                                    if (nodePop3 instanceof FocusTargetNode) {
                                        FocusTargetNode it2 = (FocusTargetNode) nodePop3;
                                        if (focusTargetNode != null) {
                                            aggregatedNode = true;
                                        }
                                        focusTargetNode = it2;
                                        m$iv$iv3 = m$iv$iv5;
                                        if (this.focusTargetNodes.contains(it2)) {
                                            node$iv$iv2 = null;
                                            this.focusTargetsWithInvalidatedFocusEvents.add(it2);
                                        }
                                        index$iv$iv = index$iv$iv3;
                                    } else {
                                        m$iv$iv3 = m$iv$iv5;
                                        Modifier.Node this_$iv$iv$iv9 = nodePop3;
                                        if (((this_$iv$iv$iv9.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop3 instanceof DelegatingNode)) {
                                            int count$iv$iv8 = 0;
                                            DelegatingNode this_$iv$iv$iv10 = (DelegatingNode) nodePop3;
                                            Modifier.Node node$iv$iv$iv3 = this_$iv$iv$iv10.getDelegate();
                                            while (node$iv$iv$iv3 != null) {
                                                Modifier.Node next$iv$iv3 = node$iv$iv$iv3;
                                                if ((next$iv$iv3.getKindSet() & iM5574constructorimpl2) != 0) {
                                                    count$iv$iv8++;
                                                    this_$iv$iv$iv2 = this_$iv$iv$iv10;
                                                    if (count$iv$iv8 == 1) {
                                                        nodePop3 = next$iv$iv3;
                                                        index$iv$iv2 = index$iv$iv3;
                                                    } else {
                                                        if (mutableVector10 == null) {
                                                            count$iv$iv2 = count$iv$iv8;
                                                            index$iv$iv2 = index$iv$iv3;
                                                            mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                        } else {
                                                            count$iv$iv2 = count$iv$iv8;
                                                            index$iv$iv2 = index$iv$iv3;
                                                            mutableVector3 = mutableVector10;
                                                        }
                                                        MutableVector mutableVector11 = mutableVector3;
                                                        Modifier.Node theNode$iv$iv3 = nodePop3;
                                                        if (theNode$iv$iv3 != null) {
                                                            if (mutableVector11 != null) {
                                                                Boolean.valueOf(mutableVector11.add(theNode$iv$iv3));
                                                            }
                                                            nodePop3 = null;
                                                        }
                                                        if (mutableVector11 != null) {
                                                            Boolean.valueOf(mutableVector11.add(next$iv$iv3));
                                                        }
                                                        mutableVector10 = mutableVector11;
                                                        count$iv$iv8 = count$iv$iv2;
                                                    }
                                                } else {
                                                    this_$iv$iv$iv2 = this_$iv$iv$iv10;
                                                    index$iv$iv2 = index$iv$iv3;
                                                }
                                                node$iv$iv$iv3 = node$iv$iv$iv3.getChild();
                                                this_$iv$iv$iv10 = this_$iv$iv$iv2;
                                                index$iv$iv3 = index$iv$iv2;
                                            }
                                            index$iv$iv = index$iv$iv3;
                                            if (count$iv$iv8 == 1) {
                                                count$iv$iv7 = $i$f$forEachIndex6;
                                                m$iv$iv5 = m$iv$iv3;
                                                index$iv$iv3 = index$iv$iv;
                                            }
                                        } else {
                                            index$iv$iv = index$iv$iv3;
                                        }
                                    }
                                    nodePop3 = DelegatableNodeKt.pop(mutableVector10);
                                    count$iv$iv7 = $i$f$forEachIndex6;
                                    m$iv$iv5 = m$iv$iv3;
                                    index$iv$iv3 = index$iv$iv;
                                }
                                $i$f$forEachIndex2 = count$iv$iv7;
                                m$iv$iv2 = m$iv$iv5;
                                int mask$iv$iv4 = iM5574constructorimpl2;
                                DelegatableNode $this$visitChildren$iv$iv3 = $this$visitSelfAndChildren_u2d6rFNWt0$iv2;
                                if (!$this$visitChildren$iv$iv3.getNode().getIsAttached()) {
                                    throw new IllegalStateException("visitChildren called on an unattached node".toString());
                                }
                                MutableVector branches$iv$iv4 = new MutableVector(new Modifier.Node[16], 0);
                                Modifier.Node child$iv$iv6 = $this$visitChildren$iv$iv3.getNode().getChild();
                                if (child$iv$iv6 == null) {
                                    DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv4, $this$visitChildren$iv$iv3.getNode());
                                } else {
                                    branches$iv$iv4.add(child$iv$iv6);
                                }
                                while (branches$iv$iv4.isNotEmpty()) {
                                    MutableVector this_$iv$iv$iv11 = branches$iv$iv4;
                                    Modifier.Node branch$iv$iv4 = (Modifier.Node) branches$iv$iv4.removeAt(this_$iv$iv$iv11.getSize() - 1);
                                    if ((branch$iv$iv4.getAggregateChildKindSet() & mask$iv$iv4) == 0) {
                                        DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv4, branch$iv$iv4);
                                        mask$iv$iv = mask$iv$iv4;
                                        delegatableNode = $this$visitChildren$iv$iv3;
                                        mutableVector = branches$iv$iv4;
                                        node = child$iv$iv6;
                                    } else {
                                        Modifier.Node node$iv$iv3 = branch$iv$iv4;
                                        while (node$iv$iv3 != null) {
                                            if ((node$iv$iv3.getKindSet() & mask$iv$iv4) != 0) {
                                                Modifier.Node it$iv2 = node$iv$iv3;
                                                MutableVector mutableVector12 = null;
                                                int mask$iv$iv5 = mask$iv$iv4;
                                                Modifier.Node nodePop4 = it$iv2;
                                                while (nodePop4 != null) {
                                                    DelegatableNode $this$visitChildren$iv$iv4 = $this$visitChildren$iv$iv3;
                                                    if (nodePop4 instanceof FocusTargetNode) {
                                                        FocusTargetNode it3 = (FocusTargetNode) nodePop4;
                                                        if (focusTargetNode != null) {
                                                            aggregatedNode = true;
                                                        }
                                                        focusTargetNode = it3;
                                                        branches$iv$iv = branches$iv$iv4;
                                                        if (this.focusTargetNodes.contains(it3)) {
                                                            node$iv$iv2 = null;
                                                            this.focusTargetsWithInvalidatedFocusEvents.add(it3);
                                                        }
                                                        child$iv$iv = child$iv$iv6;
                                                        branch$iv$iv = branch$iv$iv4;
                                                    } else {
                                                        branches$iv$iv = branches$iv$iv4;
                                                        Modifier.Node this_$iv$iv$iv12 = nodePop4;
                                                        if (((this_$iv$iv$iv12.getKindSet() & iM5574constructorimpl2) != 0) && (nodePop4 instanceof DelegatingNode)) {
                                                            int count$iv$iv9 = 0;
                                                            DelegatingNode this_$iv$iv$iv13 = (DelegatingNode) nodePop4;
                                                            Modifier.Node node$iv$iv$iv4 = this_$iv$iv$iv13.getDelegate();
                                                            while (node$iv$iv$iv4 != null) {
                                                                Modifier.Node next$iv$iv4 = node$iv$iv$iv4;
                                                                if ((next$iv$iv4.getKindSet() & iM5574constructorimpl2) != 0) {
                                                                    count$iv$iv9++;
                                                                    this_$iv$iv$iv = this_$iv$iv$iv13;
                                                                    if (count$iv$iv9 == 1) {
                                                                        nodePop4 = next$iv$iv4;
                                                                        child$iv$iv2 = child$iv$iv6;
                                                                        branch$iv$iv2 = branch$iv$iv4;
                                                                    } else {
                                                                        if (mutableVector12 == null) {
                                                                            count$iv$iv = count$iv$iv9;
                                                                            child$iv$iv2 = child$iv$iv6;
                                                                            branch$iv$iv2 = branch$iv$iv4;
                                                                            mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                                        } else {
                                                                            count$iv$iv = count$iv$iv9;
                                                                            child$iv$iv2 = child$iv$iv6;
                                                                            branch$iv$iv2 = branch$iv$iv4;
                                                                            mutableVector2 = mutableVector12;
                                                                        }
                                                                        MutableVector mutableVector13 = mutableVector2;
                                                                        Modifier.Node theNode$iv$iv4 = nodePop4;
                                                                        if (theNode$iv$iv4 != null) {
                                                                            if (mutableVector13 != null) {
                                                                                Boolean.valueOf(mutableVector13.add(theNode$iv$iv4));
                                                                            }
                                                                            nodePop4 = null;
                                                                        }
                                                                        if (mutableVector13 != null) {
                                                                            Boolean.valueOf(mutableVector13.add(next$iv$iv4));
                                                                        }
                                                                        mutableVector12 = mutableVector13;
                                                                        count$iv$iv9 = count$iv$iv;
                                                                    }
                                                                } else {
                                                                    this_$iv$iv$iv = this_$iv$iv$iv13;
                                                                    child$iv$iv2 = child$iv$iv6;
                                                                    branch$iv$iv2 = branch$iv$iv4;
                                                                }
                                                                node$iv$iv$iv4 = node$iv$iv$iv4.getChild();
                                                                this_$iv$iv$iv13 = this_$iv$iv$iv;
                                                                child$iv$iv6 = child$iv$iv2;
                                                                branch$iv$iv4 = branch$iv$iv2;
                                                            }
                                                            child$iv$iv = child$iv$iv6;
                                                            branch$iv$iv = branch$iv$iv4;
                                                            if (count$iv$iv9 == 1) {
                                                                $this$visitChildren$iv$iv3 = $this$visitChildren$iv$iv4;
                                                                branches$iv$iv4 = branches$iv$iv;
                                                                child$iv$iv6 = child$iv$iv;
                                                                branch$iv$iv4 = branch$iv$iv;
                                                            }
                                                        } else {
                                                            child$iv$iv = child$iv$iv6;
                                                            branch$iv$iv = branch$iv$iv4;
                                                        }
                                                    }
                                                    nodePop4 = DelegatableNodeKt.pop(mutableVector12);
                                                    $this$visitChildren$iv$iv3 = $this$visitChildren$iv$iv4;
                                                    branches$iv$iv4 = branches$iv$iv;
                                                    child$iv$iv6 = child$iv$iv;
                                                    branch$iv$iv4 = branch$iv$iv;
                                                }
                                                mask$iv$iv4 = mask$iv$iv5;
                                                branches$iv$iv4 = branches$iv$iv4;
                                            } else {
                                                node$iv$iv3 = node$iv$iv3.getChild();
                                                branches$iv$iv4 = branches$iv$iv4;
                                                branch$iv$iv4 = branch$iv$iv4;
                                            }
                                        }
                                        mask$iv$iv = mask$iv$iv4;
                                        delegatableNode = $this$visitChildren$iv$iv3;
                                        mutableVector = branches$iv$iv4;
                                        node = child$iv$iv6;
                                    }
                                    mask$iv$iv4 = mask$iv$iv;
                                    $this$visitChildren$iv$iv3 = delegatableNode;
                                    branches$iv$iv4 = mutableVector;
                                    child$iv$iv6 = node;
                                }
                                if (node$iv$iv2 != null) {
                                    if (aggregatedNode) {
                                        focusState2 = FocusEventModifierNodeKt.getFocusState(focusEventNode);
                                    } else {
                                        if (focusTargetNode == null || (focusState = focusTargetNode.getFocusState()) == null) {
                                            focusState = FocusStateImpl.Inactive;
                                        }
                                        focusState2 = focusState;
                                    }
                                    focusEventNode.onFocusEvent(focusState2);
                                }
                            } else {
                                this_$iv$iv2 = this_$iv$iv6;
                                focusEventNode.onFocusEvent(FocusStateImpl.Inactive);
                                $i$f$forEachIndex2 = count$iv$iv7;
                                m$iv$iv2 = m$iv$iv5;
                            }
                        } else {
                            k$iv2 = k$iv9;
                            this_$iv$iv2 = this_$iv$iv6;
                            $i$f$forEachIndex2 = count$iv$iv7;
                            m$iv$iv2 = m$iv$iv5;
                        }
                        slot$iv$iv2 >>= 8;
                        j$iv$iv2++;
                        k$iv9 = k$iv2;
                        this_$iv$iv6 = this_$iv$iv2;
                        count$iv$iv7 = $i$f$forEachIndex2;
                        m$iv$iv5 = m$iv$iv2;
                    }
                    k$iv = k$iv9;
                    this_$iv$iv = this_$iv$iv6;
                    $i$f$forEachIndex = count$iv$iv7;
                    m$iv$iv = m$iv$iv5;
                    i = 0;
                    if (bitCount$iv$iv2 != 8) {
                        break;
                    }
                } else {
                    k$iv = k$iv9;
                    this_$iv$iv = this_$iv$iv6;
                    $i$f$forEachIndex = count$iv$iv7;
                    m$iv$iv = m$iv$iv5;
                    i = 0;
                }
                if (i$iv$iv2 == lastIndex$iv$iv2) {
                    break;
                }
                i$iv$iv2++;
                this_$iv5 = this_$iv6;
                $i$f$forEach6 = $i$f$forEach7;
                k$iv9 = k$iv;
                this_$iv$iv6 = this_$iv$iv;
                count$iv$iv7 = $i$f$forEachIndex;
                m$iv$iv5 = m$iv$iv;
            }
        } else {
            i = 0;
        }
        this.focusEventNodes.clear();
        ScatterSet this_$iv7 = this.focusTargetNodes;
        Object[] k$iv10 = this_$iv7.elements;
        long[] m$iv$iv6 = this_$iv7.metadata;
        int lastIndex$iv$iv3 = m$iv$iv6.length - 2;
        int i$iv$iv3 = 0;
        if (0 <= lastIndex$iv$iv3) {
            while (true) {
                long slot$iv$iv3 = m$iv$iv6[i$iv$iv3];
                long[] m$iv$iv7 = m$iv$iv6;
                if ((((~slot$iv$iv3) << 7) & slot$iv$iv3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int bitCount$iv$iv3 = 8 - ((~(i$iv$iv3 - lastIndex$iv$iv3)) >>> 31);
                    int j$iv$iv3 = 0;
                    while (j$iv$iv3 < bitCount$iv$iv3) {
                        long value$iv$iv$iv3 = slot$iv$iv3 & 255;
                        int $i$f$isFull3 = value$iv$iv$iv3 < 128 ? 1 : i;
                        if ($i$f$isFull3 != 0) {
                            FocusTargetNode it4 = (FocusTargetNode) k$iv10[(i$iv$iv3 << 3) + j$iv$iv3];
                            if (it4.getIsAttached()) {
                                FocusStateImpl preInvalidationState = it4.getFocusState();
                                it4.invalidateFocus$ui_release();
                                if (preInvalidationState != it4.getFocusState() || this.focusTargetsWithInvalidatedFocusEvents.contains(it4)) {
                                    FocusEventModifierNodeKt.refreshFocusEventNodes(it4);
                                }
                            }
                        }
                        slot$iv$iv3 >>= 8;
                        j$iv$iv3++;
                        i = 0;
                    }
                    if (bitCount$iv$iv3 != 8) {
                        break;
                    }
                }
                if (i$iv$iv3 == lastIndex$iv$iv3) {
                    break;
                }
                i$iv$iv3++;
                m$iv$iv6 = m$iv$iv7;
                i = 0;
            }
        }
        this.focusTargetNodes.clear();
        this.focusTargetsWithInvalidatedFocusEvents.clear();
        this.invalidateOwnerFocusState.invoke();
        boolean value$iv = this.focusPropertiesNodes.isEmpty();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException("Unprocessed FocusProperties nodes");
        }
        boolean value$iv2 = this.focusEventNodes.isEmpty();
        if (!value$iv2) {
            InlineClassHelperKt.throwIllegalStateException("Unprocessed FocusEvent nodes");
        }
        boolean value$iv3 = this.focusTargetNodes.isEmpty();
        if (value$iv3) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("Unprocessed FocusTarget nodes");
    }
}
