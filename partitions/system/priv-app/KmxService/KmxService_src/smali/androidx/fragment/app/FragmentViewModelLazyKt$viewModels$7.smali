.class public final Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7;
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
.field final synthetic $extrasProducer:Lvb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb/a;"
        }
    .end annotation
.end field

.field final synthetic $owner$delegate:Lkotlin/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb/a;Lkotlin/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/a;",
            "Lkotlin/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7;->$extrasProducer:Lvb/a;

    iput-object p2, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7;->$owner$delegate:Lkotlin/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7;->invoke()Ln0/b;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ln0/b;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7;->$extrasProducer:Lvb/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/b;

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7;->$owner$delegate:Lkotlin/f;

    .line 2
    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l1;

    .line 3
    instance-of v0, p0, Landroidx/lifecycle/o;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/o;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/lifecycle/o;->getDefaultViewModelCreationExtras()Ln0/b;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Ln0/a;->b:Ln0/a;

    :cond_3
    :goto_1
    return-object v0
.end method
