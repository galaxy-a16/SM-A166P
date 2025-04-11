.class public Landroidx/appcompat/widget/SeslSeekBar;
.super Landroidx/appcompat/widget/m3;
.source "SourceFile"


# instance fields
.field public t1:I

.field public u1:Landroidx/appcompat/widget/x3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/widget/m3;->B()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->u1:Landroidx/appcompat/widget/x3;

    if-eqz v0, :cond_3

    check-cast v0, Ld/s0;

    iget-object v1, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/SeekBarPreference;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/preference/SeekBarPreference;->u:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v1

    iget-object v2, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/preference/SeekBarPreference;

    iget v3, v2, Landroidx/preference/SeekBarPreference;->p:I

    add-int/2addr v1, v3

    iget v3, v2, Landroidx/preference/SeekBarPreference;->n:I

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result p0

    iget v1, v2, Landroidx/preference/SeekBarPreference;->p:I

    add-int/2addr p0, v1

    iget v3, v2, Landroidx/preference/SeekBarPreference;->n:I

    if-eq p0, v3, :cond_2

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    iget p0, v2, Landroidx/preference/SeekBarPreference;->q:I

    if-le v1, p0, :cond_1

    move v1, p0

    :cond_1
    if-eq v1, v3, :cond_2

    iput v1, v2, Landroidx/preference/SeekBarPreference;->n:I

    :cond_2
    iget-object p0, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(FIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/m3;->j(FIZ)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->u1:Landroidx/appcompat/widget/x3;

    if-eqz p1, :cond_1

    :goto_0
    check-cast p1, Ld/s0;

    invoke-virtual {p1, p0, p3}, Ld/s0;->v(Landroidx/appcompat/widget/SeslSeekBar;Z)V

    goto :goto_1

    :cond_0
    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Landroidx/appcompat/widget/SeslSeekBar;->t1:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->t1:I

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->u1:Landroidx/appcompat/widget/x3;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/m3;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Landroidx/appcompat/widget/x3;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->u1:Landroidx/appcompat/widget/x3;

    return-void
.end method

.method public setOnSeekBarHoverListener(Landroidx/appcompat/widget/y3;)V
    .locals 0

    return-void
.end method
