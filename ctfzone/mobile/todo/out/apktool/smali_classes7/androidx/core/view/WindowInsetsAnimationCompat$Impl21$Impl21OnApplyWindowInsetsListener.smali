.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21OnApplyWindowInsetsListener"
.end annotation


# static fields
.field private static final COMPAT_ANIMATION_DURATION_IME:I = 0xa0

.field private static final COMPAT_ANIMATION_DURATION_SYSTEM_BAR:I = 0xfa


# instance fields
.field final mCallback:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mCallback:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 755
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 756
    .local v0, "rootWindowInsets":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_0

    .line 759
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 761
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 767
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    invoke-static {v9, v8}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 769
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 772
    :cond_0
    invoke-static {v9, v8}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v10

    .line 774
    .local v10, "targetInsets":Landroidx/core/view/WindowInsetsCompat;
    iget-object v0, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_1

    .line 775
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 778
    :cond_1
    iget-object v0, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    .line 782
    iput-object v10, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 783
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 796
    :cond_2
    invoke-static/range {p1 .. p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v11

    .line 797
    .local v11, "callback":Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
    if-eqz v11, :cond_3

    iget-object v0, v11, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 798
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 802
    :cond_3
    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 803
    .local v12, "showingTypes":[I
    new-array v13, v0, [I

    .line 804
    .local v13, "hidingTypes":[I
    iget-object v0, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v10, v0, v12, v13}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->buildAnimationMask(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;[I[I)V

    .line 805
    const/4 v0, 0x0

    aget v1, v12, v0

    aget v2, v13, v0

    or-int v14, v1, v2

    .line 807
    .local v14, "animationMask":I
    if-nez v14, :cond_4

    .line 811
    iput-object v10, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 812
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 815
    :cond_4
    iget-object v15, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 817
    .local v15, "startingInsets":Landroidx/core/view/WindowInsetsCompat;
    aget v1, v12, v0

    aget v2, v13, v0

    invoke-static {v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->createInsetInterpolator(II)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 820
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v1, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 822
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    and-int/2addr v2, v14

    if-eqz v2, :cond_5

    .line 823
    const-wide/16 v2, 0xa0

    goto :goto_0

    .line 824
    :cond_5
    const-wide/16 v2, 0xfa

    :goto_0
    invoke-direct {v1, v14, v6, v2, v3}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    move-object v5, v1

    .line 825
    .local v5, "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 827
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 828
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsAnimationCompat;->getDurationMillis()J

    move-result-wide v2

    .line 827
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 831
    .local v4, "animator":Landroid/animation/ValueAnimator;
    invoke-static {v10, v15, v14}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->computeAnimationBounds(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v16

    .line 835
    .local v16, "animationBounds":Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    invoke-static {v8, v5, v10, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnPrepare(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Z)V

    .line 837
    new-instance v3, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v9, v3

    move-object v3, v10

    move-object/from16 v17, v11

    move-object v11, v4

    .end local v4    # "animator":Landroid/animation/ValueAnimator;
    .local v11, "animator":Landroid/animation/ValueAnimator;
    .local v17, "callback":Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
    move-object v4, v15

    move-object/from16 v18, v12

    move-object v12, v5

    .end local v5    # "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    .local v12, "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    .local v18, "showingTypes":[I
    move v5, v14

    move-object/from16 v19, v6

    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .local v19, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;ILandroid/view/View;)V

    invoke-virtual {v11, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 852
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;

    invoke-direct {v0, v7, v12, v8}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/View;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 864
    new-instance v6, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;

    move-object v0, v6

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, v16

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Landroid/animation/ValueAnimator;)V

    invoke-static {v8, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 871
    iput-object v10, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 873
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
