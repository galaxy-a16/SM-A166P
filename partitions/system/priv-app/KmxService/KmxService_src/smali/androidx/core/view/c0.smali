.class public final Landroidx/core/view/c0;
.super Landroidx/core/view/b0;
.source "SourceFile"


# instance fields
.field public final k:Landroid/view/View;

.field public final l:Landroid/view/WindowInsetsController;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/b0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/view/c0;->k:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/view/b0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/view/c0;->l:Landroid/view/WindowInsetsController;

    return-void
.end method


# virtual methods
.method public final z()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c0;->l:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/view/c0;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsController;->show(I)V

    goto :goto_1

    :cond_2
    invoke-super {p0}, Landroidx/core/view/b0;->z()V

    :goto_1
    return-void
.end method
