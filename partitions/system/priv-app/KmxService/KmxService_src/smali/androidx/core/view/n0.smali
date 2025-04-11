.class public final Landroidx/core/view/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/t;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/core/view/n0;->a:Landroidx/core/view/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p1, p2}, Landroidx/core/view/c2;->g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;

    move-result-object p2

    iget-object p0, p0, Landroidx/core/view/n0;->a:Landroidx/core/view/t;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/t;->h(Landroid/view/View;Landroidx/core/view/c2;)Landroidx/core/view/c2;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/c2;->f()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
