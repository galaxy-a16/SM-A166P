.class public final Lh1/m;
.super Landroidx/recyclerview/widget/e0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lh1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/recyclerview/widget/u0;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->m:Lp1/v;

    iget-object v0, v0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Lh1/d;

    iget-boolean v0, v0, Lh1/d;->m:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/e0;->e(Landroidx/recyclerview/widget/u0;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method
