.class public abstract Ld/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld/g0;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/g0;->a:Ljava/lang/Object;

    iput-object p2, p0, Ld/g0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld/j0;)V
    .locals 0

    .line 3
    iput-object p1, p0, Ld/g0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ld/g0;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ld/g0;->b:Ljava/lang/Object;

    check-cast v1, Ld/j0;

    iget-object v1, v1, Ld/j0;->i:Landroid/content/Context;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld/g0;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract c()Landroid/content/IntentFilter;
.end method

.method public abstract d()I
.end method

.method public abstract e()V
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Ld/g0;->b()V

    invoke-virtual {p0}, Ld/g0;->c()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/g0;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Ld/f0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ld/f0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Ld/g0;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Ld/g0;->b:Ljava/lang/Object;

    check-cast v1, Ld/j0;

    iget-object v1, v1, Ld/j0;->i:Landroid/content/Context;

    iget-object p0, p0, Ld/g0;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method
