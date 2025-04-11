.class public final Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic $owner$delegate:Lkotlin/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/f;"
        }
    .end annotation
.end field

.field final synthetic $this_viewModels:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lkotlin/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$4;->$this_viewModels:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$4;->$owner$delegate:Lkotlin/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/h1;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$4;->$owner$delegate:Lkotlin/f;

    .line 1
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/l1;

    .line 2
    instance-of v1, v0, Landroidx/lifecycle/o;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/o;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/o;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/h1;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$4;->$this_viewModels:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/h1;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$4;->invoke()Landroidx/lifecycle/h1;

    move-result-object p0

    return-object p0
.end method
