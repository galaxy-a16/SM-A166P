.class public final Landroidx/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lvb/b;

.field public final synthetic b:Lvb/b;

.field public final synthetic c:Lvb/a;

.field public final synthetic d:Lvb/a;


# direct methods
.method public constructor <init>(Lvb/b;Lvb/b;Lvb/a;Lvb/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/v;->a:Lvb/b;

    iput-object p2, p0, Landroidx/activity/v;->b:Lvb/b;

    iput-object p3, p0, Landroidx/activity/v;->c:Lvb/a;

    iput-object p4, p0, Landroidx/activity/v;->d:Lvb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/v;->d:Lvb/a;

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/v;->c:Lvb/a;

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/v;->b:Lvb/b;

    new-instance v0, Landroidx/activity/c;

    invoke-direct {v0, p1}, Landroidx/activity/c;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/v;->a:Lvb/b;

    new-instance v0, Landroidx/activity/c;

    invoke-direct {v0, p1}, Landroidx/activity/c;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
