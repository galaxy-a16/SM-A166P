.class public final Lh1/i;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic F:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lh1/i;->F:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final F0(Landroidx/recyclerview/widget/j1;[I)V
    .locals 3

    iget-object v0, p0, Lh1/i;->F:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOffscreenPageLimit()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/j1;[I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result p0

    mul-int/2addr p0, v1

    const/4 p1, 0x0

    aput p0, p2, p1

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public final X(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Lc0/l;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->X(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Lc0/l;)V

    iget-object p0, p0, Lh1/i;->F:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final k0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lh1/i;->F:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/u0;->k0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final p0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 1

    iget-object v0, p0, Lh1/i;->F:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method
