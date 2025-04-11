.class public final Landroidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5;
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

.field final synthetic $this_activityViewModels:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lvb/a;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/a;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5;->$extrasProducer:Lvb/a;

    iput-object p2, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5;->$this_activityViewModels:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5;->invoke()Ln0/b;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ln0/b;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5;->$extrasProducer:Lvb/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/b;

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5;->$this_activityViewModels:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Ln0/b;

    move-result-object v0

    :cond_1
    return-object v0
.end method
