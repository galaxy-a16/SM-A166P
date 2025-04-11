.class public final Landroidx/fragment/app/r;
.super Landroidx/fragment/app/i0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/i0;

.field public final synthetic b:Landroidx/fragment/app/s;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s;Landroidx/fragment/app/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/s;

    iput-object p2, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/i0;

    invoke-direct {p0}, Landroidx/fragment/app/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/i0;

    invoke-virtual {v0}, Landroidx/fragment/app/i0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/s;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->onFindViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/i0;

    invoke-virtual {v0}, Landroidx/fragment/app/i0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->onHasView()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
