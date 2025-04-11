.class public final Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$owner$4;
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
.field final synthetic $ownerProducer:Lvb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$owner$4;->$ownerProducer:Lvb/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/l1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$owner$4;->$ownerProducer:Lvb/a;

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l1;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$owner$4;->invoke()Landroidx/lifecycle/l1;

    move-result-object p0

    return-object p0
.end method
