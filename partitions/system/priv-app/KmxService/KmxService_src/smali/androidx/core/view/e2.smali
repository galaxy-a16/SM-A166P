.class public final Landroidx/core/view/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/view/d2;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/d2;

    new-instance v1, Lp5/c;

    invoke-direct {v1, p1}, Lp5/c;-><init>(Landroid/view/WindowInsetsController;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/d2;-><init>(Landroid/view/WindowInsetsController;Lp5/c;)V

    iput-object v0, p0, Landroidx/core/view/e2;->a:Landroidx/core/view/d2;

    return-void
.end method
