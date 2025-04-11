.class public final Landroidx/core/view/p1;
.super Landroidx/core/view/d1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/d1;-><init>()V

    iput-object p1, p0, Landroidx/core/view/p1;->a:Landroid/view/WindowInsetsAnimation;

    return-void
.end method


# virtual methods
.method public final e()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/p1;->a:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/p1;->a:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p0

    return p0
.end method

.method public final g(F)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/p1;->a:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, p1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    return-void
.end method
