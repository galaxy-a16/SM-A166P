.class public final Lc4/x;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:Lc4/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc4/x;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    new-instance v6, Lc4/w;

    int-to-long v4, p1

    move-object v0, v6

    move-object v1, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lc4/w;-><init>(Lc4/x;JJ)V

    iput-object v6, p0, Lc4/x;->d:Lc4/w;

    return-void
.end method


# virtual methods
.method public final onCreateDrawableState(I)[I
    .locals 4

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v0, p0, Lc4/x;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    const v3, 0x7f030445

    aput v3, v0, v1

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean p0, p0, Lc4/x;->b:Z

    if-eqz p0, :cond_1

    new-array p0, v2, [I

    const v0, 0x7f030446

    aput v0, p0, v1

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public setAutomaticDisappear(Z)V
    .locals 0

    iput-boolean p1, p0, Lc4/x;->c:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lc4/x;->d:Lc4/w;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lc4/x;->a:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setFloated(Z)V
    .locals 0

    iput-boolean p1, p0, Lc4/x;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lc4/x;->d:Lc4/w;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
