.class public final Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$2;
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


# direct methods
.method public constructor <init>(Lkotlin/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$2;->$owner$delegate:Lkotlin/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/k1;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$2;->$owner$delegate:Lkotlin/f;

    .line 1
    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l1;

    .line 2
    invoke-interface {p0}, Landroidx/lifecycle/l1;->getViewModelStore()Landroidx/lifecycle/k1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$2;->invoke()Landroidx/lifecycle/k1;

    move-result-object p0

    return-object p0
.end method
