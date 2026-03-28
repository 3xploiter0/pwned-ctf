package androidx.compose.animation;

import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SharedContentNode.kt */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016ø\u0001\u0000¢\u0006\u0004\b&\u0010'J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020)H\u0016J\b\u0010+\u001a\u00020)H\u0016J\b\u0010,\u001a\u00020\u0016H\u0002J&\u0010-\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016ø\u0001\u0000¢\u0006\u0004\b4\u00105J\f\u00106\u001a\u00020)*\u000207H\u0016J&\u00108\u001a\u00020.*\u0002092\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016ø\u0001\u0000¢\u0006\u0004\b:\u0010;J\u0014\u0010<\u001a\u00020.*\u0002092\u0006\u0010=\u001a\u00020>H\u0002J\f\u0010?\u001a\u00020)*\u00020\u0016H\u0002R\u0014\u0010\b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\r@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\u0007\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006@"}, d2 = {"Landroidx/compose/animation/SharedBoundsNode;", "Landroidx/compose/ui/layout/ApproachLayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "state", "Landroidx/compose/animation/SharedElementInternalState;", "(Landroidx/compose/animation/SharedElementInternalState;)V", "boundsAnimation", "Landroidx/compose/animation/BoundsAnimation;", "getBoundsAnimation", "()Landroidx/compose/animation/BoundsAnimation;", "value", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "layer", "setLayer", "(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", "rootCoords", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getRootCoords", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "rootLookaheadCoords", "getRootLookaheadCoords", "sharedElement", "Landroidx/compose/animation/SharedElement;", "getSharedElement", "()Landroidx/compose/animation/SharedElement;", "getState", "()Landroidx/compose/animation/SharedElementInternalState;", "setState$animation_release", "isMeasurementApproachInProgress", "", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "isMeasurementApproachInProgress-ozmzZPI", "(J)Z", "onAttach", "", "onDetach", "onReset", "requireLookaheadLayoutCoordinates", "approachMeasure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/ApproachMeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "approachMeasure-3p2s80s", "(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "measure", "Landroidx/compose/ui/layout/MeasureScope;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "place", "placeable", "Landroidx/compose/ui/layout/Placeable;", "updateCurrentBounds", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SharedBoundsNode extends Modifier.Node implements ApproachLayoutModifierNode, DrawModifierNode, ModifierLocalModifierNode {
    public static final int $stable = 8;
    private GraphicsLayer layer;
    private final ModifierLocalMap providedValues;
    private SharedElementInternalState state;

    public SharedBoundsNode(SharedElementInternalState state) {
        this.state = state;
        this.layer = state.getLayer();
        this.providedValues = ModifierLocalModifierNodeKt.modifierLocalMapOf(TuplesKt.to(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), state));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getRootCoords() {
        return getSharedElement().getScope().getRoot$animation_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getRootLookaheadCoords() {
        return getSharedElement().getScope().getLookaheadRoot$animation_release();
    }

    public final SharedElementInternalState getState() {
        return this.state;
    }

    public final void setState$animation_release(SharedElementInternalState value) {
        if (!Intrinsics.areEqual(value, this.state)) {
            this.state = value;
            if (getIsAttached()) {
                provide(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), value);
                this.state.setParentState((SharedElementInternalState) getCurrent(SharedContentNodeKt.getModifierLocalSharedElementInternalState()));
                this.state.setLayer(this.layer);
                this.state.setLookaheadCoords(new Function0<LayoutCoordinates>() { // from class: androidx.compose.animation.SharedBoundsNode$state$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final LayoutCoordinates invoke() {
                        return this.this$0.requireLookaheadLayoutCoordinates();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates requireLookaheadLayoutCoordinates() {
        SharedTransitionScopeImpl $this$requireLookaheadLayoutCoordinates_u24lambda_u240 = this.state.getSharedElement().getScope();
        return $this$requireLookaheadLayoutCoordinates_u24lambda_u240.toLookaheadCoordinates(DelegatableNodeKt.requireLayoutCoordinates(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BoundsAnimation getBoundsAnimation() {
        return this.state.getBoundsAnimation();
    }

    private final void setLayer(GraphicsLayer value) {
        if (value == null) {
            GraphicsLayer it = this.layer;
            if (it != null) {
                DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(it);
            }
        } else {
            this.state.setLayer(value);
        }
        this.layer = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedElement getSharedElement() {
        return this.state.getSharedElement();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public ModifierLocalMap getProvidedValues() {
        return this.providedValues;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        provide(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), this.state);
        this.state.setParentState((SharedElementInternalState) getCurrent(SharedContentNodeKt.getModifierLocalSharedElementInternalState()));
        setLayer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
        this.state.setLookaheadCoords(new Function0<LayoutCoordinates>() { // from class: androidx.compose.animation.SharedBoundsNode.onAttach.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LayoutCoordinates invoke() {
                return SharedBoundsNode.this.requireLookaheadLayoutCoordinates();
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        super.onDetach();
        setLayer(null);
        this.state.setParentState(null);
        this.state.setLookaheadCoords(new Function0() { // from class: androidx.compose.animation.SharedBoundsNode.onDetach.1
            @Override // kotlin.jvm.functions.Function0
            public final Void invoke() {
                return null;
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onReset() {
        super.onReset();
        GraphicsLayer it = this.layer;
        if (it != null) {
            DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(it);
        }
        setLayer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode, androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo91measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long constraints) {
        final Placeable placeable = measurable.mo5339measureBRTryo0(constraints);
        final long lookaheadSize = SizeKt.Size(placeable.getWidth(), placeable.getHeight());
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, placeable.getWidth(), placeable.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                Offset topLeft;
                LayoutCoordinates it = $this$layout.getCoordinates();
                if (it != null) {
                    SharedBoundsNode sharedBoundsNode = this;
                    long j = lookaheadSize;
                    long topLeft2 = sharedBoundsNode.getRootLookaheadCoords().mo5348localPositionOfR5De75A(it, Offset.INSTANCE.m3778getZeroF1C5BW0());
                    if (sharedBoundsNode.getSharedElement().getCurrentBounds() == null) {
                        sharedBoundsNode.getSharedElement().setCurrentBounds(RectKt.m3802Recttz77jQw(topLeft2, j));
                    }
                    topLeft = Offset.m3751boximpl(topLeft2);
                } else {
                    topLeft = null;
                }
                Placeable.PlacementScope.place$default($this$layout, placeable, 0, 0, 0.0f, 4, null);
                if (topLeft != null) {
                    SharedBoundsNode sharedBoundsNode2 = this;
                    sharedBoundsNode2.getSharedElement().m105onLookaheadResultv_w8tDc(sharedBoundsNode2.getState(), lookaheadSize, topLeft.getPackedValue());
                }
            }
        }, 4, null);
    }

    private final MeasureResult place(MeasureScope $this$place, final Placeable placeable) {
        long jMo108calculateSizeJyjRU_E = this.state.getPlaceHolderSize().mo108calculateSizeJyjRU_E(requireLookaheadLayoutCoordinates().mo5347getSizeYbymL2g(), IntSizeKt.IntSize(placeable.getWidth(), placeable.getHeight()));
        int w = IntSize.m6655getWidthimpl(jMo108calculateSizeJyjRU_E);
        int h = IntSize.m6654getHeightimpl(jMo108calculateSizeJyjRU_E);
        return MeasureScope.layout$default($this$place, w, h, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode.place.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                long topLeft;
                LayoutCoordinates coordinates;
                if (!SharedBoundsNode.this.getSharedElement().getFoundMatch()) {
                    LayoutCoordinates coordinates2 = $this$layout.getCoordinates();
                    if (coordinates2 != null) {
                        SharedBoundsNode.this.updateCurrentBounds(coordinates2);
                    }
                    Placeable.PlacementScope.place$default($this$layout, placeable, 0, 0, 0.0f, 4, null);
                    return;
                }
                if (SharedBoundsNode.this.getSharedElement().getTargetBounds() != null) {
                    BoundsAnimation boundsAnimation = SharedBoundsNode.this.getBoundsAnimation();
                    Rect currentBounds = SharedBoundsNode.this.getSharedElement().getCurrentBounds();
                    Intrinsics.checkNotNull(currentBounds);
                    Rect targetBounds = SharedBoundsNode.this.getSharedElement().getTargetBounds();
                    Intrinsics.checkNotNull(targetBounds);
                    boundsAnimation.animate(currentBounds, targetBounds);
                }
                Rect animatedBounds = SharedBoundsNode.this.getBoundsAnimation().getValue();
                LayoutCoordinates it = $this$layout.getCoordinates();
                Offset positionInScope = it != null ? Offset.m3751boximpl(SharedBoundsNode.this.getRootCoords().mo5348localPositionOfR5De75A(it, Offset.INSTANCE.m3778getZeroF1C5BW0())) : null;
                if (animatedBounds != null) {
                    if (SharedBoundsNode.this.getBoundsAnimation().getTarget()) {
                        SharedBoundsNode.this.getSharedElement().setCurrentBounds(animatedBounds);
                    }
                    topLeft = animatedBounds.m3797getTopLeftF1C5BW0();
                } else {
                    if (SharedBoundsNode.this.getBoundsAnimation().getTarget() && (coordinates = $this$layout.getCoordinates()) != null) {
                        SharedBoundsNode.this.updateCurrentBounds(coordinates);
                    }
                    Rect currentBounds2 = SharedBoundsNode.this.getSharedElement().getCurrentBounds();
                    Intrinsics.checkNotNull(currentBounds2);
                    topLeft = currentBounds2.m3797getTopLeftF1C5BW0();
                }
                long it2 = positionInScope != null ? Offset.m3766minusMKHz9U(topLeft, positionInScope.getPackedValue()) : Offset.INSTANCE.m3778getZeroF1C5BW0();
                float x = Offset.m3762getXimpl(it2);
                float y = Offset.m3763getYimpl(it2);
                Placeable.PlacementScope.place$default($this$layout, placeable, Math.round(x), Math.round(y), 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* renamed from: isMeasurementApproachInProgress-ozmzZPI, reason: not valid java name */
    public boolean mo104isMeasurementApproachInProgressozmzZPI(long lookaheadSize) {
        return getSharedElement().getFoundMatch() && this.state.getSharedElement().getScope().isTransitionActive();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008b  */
    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* renamed from: approachMeasure-3p2s80s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.compose.ui.layout.MeasureResult mo103approachMeasure3p2s80s(androidx.compose.ui.layout.ApproachMeasureScope r8, androidx.compose.ui.layout.Measurable r9, long r10) {
        /*
            r7 = this;
            androidx.compose.animation.SharedElement r0 = r7.getSharedElement()
            boolean r0 = r0.getFoundMatch()
            if (r0 != 0) goto Lc
            goto L8b
        Lc:
            androidx.compose.animation.BoundsAnimation r0 = r7.getBoundsAnimation()
            androidx.compose.ui.geometry.Rect r0 = r0.getValue()
            if (r0 != 0) goto L1e
            androidx.compose.animation.SharedElement r0 = r7.getSharedElement()
            androidx.compose.ui.geometry.Rect r0 = r0.getCurrentBounds()
        L1e:
            if (r0 == 0) goto L8a
            r1 = 0
            long r2 = r0.m3795getSizeNHjbRc()
            long r2 = androidx.compose.ui.unit.IntSizeKt.m6663roundToIntSizeuvyYCjk(r2)
            r4 = 0
            int r4 = androidx.compose.ui.unit.IntSize.m6655getWidthimpl(r2)
            r5 = 0
            int r2 = androidx.compose.ui.unit.IntSize.m6654getHeightimpl(r2)
            r3 = 2147483647(0x7fffffff, float:NaN)
            r5 = 0
            if (r4 == r3) goto L3f
            if (r2 == r3) goto L3f
            r3 = 1
            goto L40
        L3f:
            r3 = r5
        L40:
            if (r3 == 0) goto L51
            androidx.compose.ui.unit.Constraints$Companion r3 = androidx.compose.ui.unit.Constraints.INSTANCE
            int r6 = kotlin.ranges.RangesKt.coerceAtLeast(r4, r5)
            int r5 = kotlin.ranges.RangesKt.coerceAtLeast(r2, r5)
            long r0 = r3.m6448fixedJhjzzOo(r6, r5)
            goto L8c
        L51:
            r3 = 0
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Error: Infinite width/height is invalid. animated bounds: "
            java.lang.StringBuilder r5 = r5.append(r6)
            androidx.compose.animation.BoundsAnimation r6 = r7.getBoundsAnimation()
            androidx.compose.ui.geometry.Rect r6 = r6.getValue()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = ", current bounds: "
            java.lang.StringBuilder r5 = r5.append(r6)
            androidx.compose.animation.SharedElement r6 = r7.getSharedElement()
            androidx.compose.ui.geometry.Rect r6 = r6.getCurrentBounds()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r3 = r5.toString()
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r3 = r3.toString()
            r5.<init>(r3)
            throw r5
        L8a:
        L8b:
            r0 = r10
        L8c:
            androidx.compose.ui.layout.Placeable r2 = r9.mo5339measureBRTryo0(r0)
            r3 = r8
            androidx.compose.ui.layout.MeasureScope r3 = (androidx.compose.ui.layout.MeasureScope) r3
            androidx.compose.ui.layout.MeasureResult r3 = r7.place(r3, r2)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.SharedBoundsNode.mo103approachMeasure3p2s80s(androidx.compose.ui.layout.ApproachMeasureScope, androidx.compose.ui.layout.Measurable, long):androidx.compose.ui.layout.MeasureResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCurrentBounds(LayoutCoordinates $this$updateCurrentBounds) {
        getSharedElement().setCurrentBounds(RectKt.m3802Recttz77jQw(getRootCoords().mo5348localPositionOfR5De75A($this$updateCurrentBounds, Offset.INSTANCE.m3778getZeroF1C5BW0()), SizeKt.Size(IntSize.m6655getWidthimpl($this$updateCurrentBounds.mo5347getSizeYbymL2g()), IntSize.m6654getHeightimpl($this$updateCurrentBounds.mo5347getSizeYbymL2g()))));
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(final ContentDrawScope $this$draw) {
        SharedElementInternalState sharedElementInternalState = this.state;
        SharedTransitionScope.OverlayClip overlayClip = this.state.getOverlayClip();
        SharedTransitionScope.SharedContentState userState = this.state.getUserState();
        Rect currentBounds = getSharedElement().getCurrentBounds();
        Intrinsics.checkNotNull(currentBounds);
        sharedElementInternalState.setClipPathInOverlay$animation_release(overlayClip.getClipPath(userState, currentBounds, $this$draw.getLayoutDirection(), DelegatableNodeKt.requireDensity(this)));
        GraphicsLayer layer = this.state.getLayer();
        if (layer == null) {
            throw new IllegalArgumentException(("Error: Layer is null when accessed for shared bounds/element : " + getSharedElement().getKey() + ",target: " + this.state.getBoundsAnimation().getTarget() + ", is attached: " + getIsAttached()).toString());
        }
        DrawScope.m4557recordJVtK1S4$default($this$draw, layer, 0L, new Function1<DrawScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode.draw.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                invoke2(drawScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DrawScope $this$record) {
                $this$draw.drawContent();
            }
        }, 1, null);
        if (this.state.getShouldRenderInPlace()) {
            GraphicsLayerKt.drawLayer($this$draw, layer);
        }
    }
}
