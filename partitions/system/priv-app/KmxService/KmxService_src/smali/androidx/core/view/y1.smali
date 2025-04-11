.class public abstract Landroidx/core/view/y1;
.super Landroidx/core/view/x1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/core/view/c2;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/x1;-><init>(Landroidx/core/view/c2;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public i(IIII)Landroidx/core/view/c2;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/v1;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/core/view/c2;->g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;

    move-result-object p0

    return-object p0
.end method
