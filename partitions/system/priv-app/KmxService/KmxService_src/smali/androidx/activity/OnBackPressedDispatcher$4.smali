.class final Landroidx/activity/OnBackPressedDispatcher$4;
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
.field final synthetic this$0:Landroidx/activity/y;


# direct methods
.method public constructor <init>(Landroidx/activity/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$4;->this$0:Landroidx/activity/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$4;->invoke()V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$4;->this$0:Landroidx/activity/y;

    .line 2
    iget-object v0, p0, Landroidx/activity/y;->b:Lkotlin/collections/k;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/activity/s;

    invoke-virtual {v3}, Landroidx/activity/s;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/activity/s;

    iput-object v2, p0, Landroidx/activity/y;->c:Landroidx/activity/s;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/activity/s;->handleOnBackCancelled()V

    :cond_2
    return-void
.end method
