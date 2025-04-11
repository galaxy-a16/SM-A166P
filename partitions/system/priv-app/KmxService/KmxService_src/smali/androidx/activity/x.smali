.class public final Landroidx/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/d;


# instance fields
.field public final a:Landroidx/activity/s;

.field public final synthetic b:Landroidx/activity/y;


# direct methods
.method public constructor <init>(Landroidx/activity/y;Landroidx/activity/s;)V
    .locals 1

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/x;->b:Landroidx/activity/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/x;->a:Landroidx/activity/s;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/x;->b:Landroidx/activity/y;

    iget-object v1, v0, Landroidx/activity/y;->b:Lkotlin/collections/k;

    iget-object v2, p0, Landroidx/activity/x;->a:Landroidx/activity/s;

    invoke-virtual {v1, v2}, Lkotlin/collections/k;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/y;->c:Landroidx/activity/s;

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroidx/activity/s;->handleOnBackCancelled()V

    iput-object v3, v0, Landroidx/activity/y;->c:Landroidx/activity/s;

    :cond_0
    invoke-virtual {v2, p0}, Landroidx/activity/s;->removeCancellable(Landroidx/activity/d;)V

    invoke-virtual {v2}, Landroidx/activity/s;->getEnabledChangedCallback$activity_release()Lvb/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/activity/s;->setEnabledChangedCallback$activity_release(Lvb/a;)V

    return-void
.end method
