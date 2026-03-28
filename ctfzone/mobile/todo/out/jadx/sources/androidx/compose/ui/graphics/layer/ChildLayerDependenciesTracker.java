package androidx.compose.ui.graphics.layer;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChildLayerDependenciesTracker.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0005J\u001d\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\u0010H\u0086\bJ+\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013H\u0086\bR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;", "", "()V", "dependenciesSet", "Landroidx/collection/MutableScatterSet;", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "dependency", "oldDependenciesSet", "oldDependency", "trackingInProgress", "", "onDependencyAdded", "graphicsLayer", "removeDependencies", "", "block", "Lkotlin/Function1;", "withTracking", "onDependencyRemoved", "Lkotlin/Function0;", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ChildLayerDependenciesTracker {
    private MutableScatterSet<GraphicsLayer> dependenciesSet;
    private GraphicsLayer dependency;
    private MutableScatterSet<GraphicsLayer> oldDependenciesSet;
    private GraphicsLayer oldDependency;
    private boolean trackingInProgress;

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void withTracking(kotlin.jvm.functions.Function1<? super androidx.compose.ui.graphics.layer.GraphicsLayer, kotlin.Unit> r25, kotlin.jvm.functions.Function0<kotlin.Unit> r26) {
        /*
            r24 = this;
            r0 = r24
            r1 = r25
            r2 = 0
            androidx.compose.ui.graphics.layer.GraphicsLayer r3 = access$getDependency$p(r24)
            access$setOldDependency$p(r0, r3)
            androidx.collection.MutableScatterSet r3 = access$getDependenciesSet$p(r24)
            if (r3 == 0) goto L35
            r4 = 0
            boolean r5 = r3.isNotEmpty()
            if (r5 == 0) goto L33
            androidx.collection.MutableScatterSet r5 = access$getOldDependenciesSet$p(r24)
            if (r5 != 0) goto L2a
            androidx.collection.MutableScatterSet r5 = androidx.collection.ScatterSetKt.mutableScatterSetOf()
            r6 = r5
            r7 = 0
            access$setOldDependenciesSet$p(r0, r6)
        L2a:
            r6 = r3
            androidx.collection.ScatterSet r6 = (androidx.collection.ScatterSet) r6
            r5.addAll(r6)
            r3.clear()
        L33:
        L35:
            r3 = 1
            access$setTrackingInProgress$p(r0, r3)
            r26.invoke()
            r4 = 0
            access$setTrackingInProgress$p(r0, r4)
            androidx.compose.ui.graphics.layer.GraphicsLayer r5 = access$getOldDependency$p(r24)
            if (r5 == 0) goto L49
            r1.invoke(r5)
        L49:
            androidx.collection.MutableScatterSet r5 = access$getOldDependenciesSet$p(r24)
            if (r5 == 0) goto Ld0
            r6 = 0
            boolean r7 = r5.isNotEmpty()
            if (r7 == 0) goto Lcc
            r7 = r5
            androidx.collection.ScatterSet r7 = (androidx.collection.ScatterSet) r7
            r8 = 0
            java.lang.Object[] r9 = r7.elements
            r10 = r7
            r11 = 0
            long[] r12 = r10.metadata
            int r13 = r12.length
            int r13 = r13 + (-2)
            r14 = 0
            if (r14 > r13) goto Lc2
        L68:
            r15 = r12[r14]
            r17 = r15
            r19 = 0
            r3 = r17
            r17 = r6
            r18 = r7
            long r6 = ~r3
            r20 = 7
            long r6 = r6 << r20
            long r6 = r6 & r3
            r20 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r3 = r6 & r20
            int r3 = (r3 > r20 ? 1 : (r3 == r20 ? 0 : -1))
            if (r3 == 0) goto Lb7
            int r3 = r14 - r13
            int r3 = ~r3
            int r3 = r3 >>> 31
            r4 = 8
            int r3 = 8 - r3
            r6 = 0
        L8f:
            if (r6 >= r3) goto Lb5
            r20 = 255(0xff, double:1.26E-321)
            long r20 = r15 & r20
            r7 = 0
            r22 = 128(0x80, double:6.3E-322)
            int r19 = (r20 > r22 ? 1 : (r20 == r22 ? 0 : -1))
            if (r19 >= 0) goto L9e
            r7 = 1
            goto L9f
        L9e:
            r7 = 0
        L9f:
            if (r7 == 0) goto Laf
            int r7 = r14 << 3
            int r7 = r7 + r6
            r19 = r7
            r20 = 0
            r4 = r9[r19]
            r1.invoke(r4)
        Laf:
            r4 = 8
            long r15 = r15 >> r4
            int r6 = r6 + 1
            goto L8f
        Lb5:
            if (r3 != r4) goto Lc7
        Lb7:
            if (r14 == r13) goto Lc6
            int r14 = r14 + 1
            r6 = r17
            r7 = r18
            r3 = 1
            r4 = 0
            goto L68
        Lc2:
            r17 = r6
            r18 = r7
        Lc6:
        Lc7:
            r5.clear()
            goto Lce
        Lcc:
            r17 = r6
        Lce:
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.layer.ChildLayerDependenciesTracker.withTracking(kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0):void");
    }

    public final boolean onDependencyAdded(GraphicsLayer graphicsLayer) {
        boolean value$iv = this.trackingInProgress;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("Only add dependencies during a tracking");
        }
        if (this.dependenciesSet != null) {
            MutableScatterSet<GraphicsLayer> mutableScatterSet = this.dependenciesSet;
            Intrinsics.checkNotNull(mutableScatterSet);
            mutableScatterSet.add(graphicsLayer);
        } else if (this.dependency != null) {
            MutableScatterSet it = ScatterSetKt.mutableScatterSetOf();
            GraphicsLayer graphicsLayer2 = this.dependency;
            Intrinsics.checkNotNull(graphicsLayer2);
            it.add(graphicsLayer2);
            it.add(graphicsLayer);
            this.dependenciesSet = it;
            this.dependency = null;
        } else {
            this.dependency = graphicsLayer;
        }
        if (this.oldDependenciesSet != null) {
            Intrinsics.checkNotNull(this.oldDependenciesSet);
            return !r0.remove(graphicsLayer);
        }
        if (this.oldDependency != graphicsLayer) {
            return true;
        }
        this.oldDependency = null;
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void removeDependencies(kotlin.jvm.functions.Function1<? super androidx.compose.ui.graphics.layer.GraphicsLayer, kotlin.Unit> r23) {
        /*
            r22 = this;
            r0 = r23
            r1 = 0
            androidx.compose.ui.graphics.layer.GraphicsLayer r2 = access$getDependency$p(r22)
            if (r2 == 0) goto L15
            r3 = 0
            r0.invoke(r2)
            r4 = 0
            r5 = r22
            access$setDependency$p(r5, r4)
            goto L17
        L15:
            r5 = r22
        L17:
            androidx.collection.MutableScatterSet r2 = access$getDependenciesSet$p(r22)
            if (r2 == 0) goto L99
            r3 = 0
            r4 = r2
            androidx.collection.ScatterSet r4 = (androidx.collection.ScatterSet) r4
            r6 = 0
            java.lang.Object[] r7 = r4.elements
            r8 = r4
            r9 = 0
            long[] r10 = r8.metadata
            int r11 = r10.length
            int r11 = r11 + (-2)
            r12 = 0
            if (r12 > r11) goto L8d
        L31:
            r13 = r10[r12]
            r15 = r13
            r17 = 0
            r18 = r3
            r19 = r4
            r3 = r15
            r15 = r6
            long r5 = ~r3
            r16 = 7
            long r5 = r5 << r16
            long r5 = r5 & r3
            r20 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r3 = r5 & r20
            int r3 = (r3 > r20 ? 1 : (r3 == r20 ? 0 : -1))
            if (r3 == 0) goto L81
            int r3 = r12 - r11
            int r3 = ~r3
            int r3 = r3 >>> 31
            r4 = 8
            int r3 = 8 - r3
            r5 = 0
        L57:
            if (r5 >= r3) goto L7f
            r16 = 255(0xff, double:1.26E-321)
            long r16 = r13 & r16
            r6 = 0
            r20 = 128(0x80, double:6.3E-322)
            int r20 = (r16 > r20 ? 1 : (r16 == r20 ? 0 : -1))
            if (r20 >= 0) goto L67
            r20 = 1
            goto L69
        L67:
            r20 = 0
        L69:
            if (r20 == 0) goto L79
            int r6 = r12 << 3
            int r6 = r6 + r5
            r16 = r6
            r17 = 0
            r4 = r7[r16]
            r0.invoke(r4)
        L79:
            r4 = 8
            long r13 = r13 >> r4
            int r5 = r5 + 1
            goto L57
        L7f:
            if (r3 != r4) goto L93
        L81:
            if (r12 == r11) goto L92
            int r12 = r12 + 1
            r5 = r22
            r6 = r15
            r3 = r18
            r4 = r19
            goto L31
        L8d:
            r18 = r3
            r19 = r4
            r15 = r6
        L92:
        L93:
            r2.clear()
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.layer.ChildLayerDependenciesTracker.removeDependencies(kotlin.jvm.functions.Function1):void");
    }
}
