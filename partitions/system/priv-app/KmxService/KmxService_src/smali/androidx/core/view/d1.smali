.class public abstract Landroidx/core/view/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/j1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Landroid/view/View;)Landroidx/core/view/b1;
    .locals 2

    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Lkotlin/coroutines/d;)V

    new-instance p0, Landroidx/core/view/b1;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroidx/core/view/b1;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
